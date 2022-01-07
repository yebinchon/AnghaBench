; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_world.c_SV_CreateworldSector.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_world.c_SV_CreateworldSector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, double, %struct.TYPE_4__** }

@sv_worldSectors = common dso_local global %struct.TYPE_4__* null, align 8
@sv_numworldSectors = common dso_local global i64 0, align 8
@AREA_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32, i64*, i64*)* @SV_CreateworldSector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @SV_CreateworldSector(i32 %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sv_worldSectors, align 8
  %15 = load i64, i64* @sv_numworldSectors, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %15
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %8, align 8
  %17 = load i64, i64* @sv_numworldSectors, align 8
  %18 = add i64 %17, 1
  store i64 %18, i64* @sv_numworldSectors, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @AREA_DEPTH, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 -1, i32* %24, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %27, i64 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %28, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %31, i64 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %32, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %4, align 8
  br label %119

34:                                               ; preds = %3
  %35 = load i64*, i64** %7, align 8
  %36 = load i64*, i64** %6, align 8
  %37 = load i64*, i64** %9, align 8
  %38 = call i32 @VectorSubtract(i64* %35, i64* %36, i64* %37)
  %39 = load i64*, i64** %9, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** %9, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %41, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %34
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  br label %52

49:                                               ; preds = %34
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i64*, i64** %7, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %53, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load i64*, i64** %6, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %60, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %59, %66
  %68 = sitofp i64 %67 to double
  %69 = fmul double 5.000000e-01, %68
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  store double %69, double* %71, align 8
  %72 = load i64*, i64** %6, align 8
  %73 = load i64*, i64** %10, align 8
  %74 = call i32 @VectorCopy(i64* %72, i64* %73)
  %75 = load i64*, i64** %6, align 8
  %76 = load i64*, i64** %12, align 8
  %77 = call i32 @VectorCopy(i64* %75, i64* %76)
  %78 = load i64*, i64** %7, align 8
  %79 = load i64*, i64** %11, align 8
  %80 = call i32 @VectorCopy(i64* %78, i64* %79)
  %81 = load i64*, i64** %7, align 8
  %82 = load i64*, i64** %13, align 8
  %83 = call i32 @VectorCopy(i64* %81, i64* %82)
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load double, double* %85, align 8
  %87 = fptosi double %86 to i64
  %88 = load i64*, i64** %12, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %88, i64 %92
  store i64 %87, i64* %93, align 8
  %94 = load i64*, i64** %11, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %94, i64 %98
  store i64 %87, i64* %99, align 8
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, 1
  %102 = load i64*, i64** %12, align 8
  %103 = load i64*, i64** %13, align 8
  %104 = call %struct.TYPE_4__* @SV_CreateworldSector(i32 %101, i64* %102, i64* %103)
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %107, i64 0
  store %struct.TYPE_4__* %104, %struct.TYPE_4__** %108, align 8
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 1
  %111 = load i64*, i64** %10, align 8
  %112 = load i64*, i64** %11, align 8
  %113 = call %struct.TYPE_4__* @SV_CreateworldSector(i32 %110, i64* %111, i64* %112)
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %116, i64 1
  store %struct.TYPE_4__* %113, %struct.TYPE_4__** %117, align 8
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %118, %struct.TYPE_4__** %4, align 8
  br label %119

119:                                              ; preds = %52, %22
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  ret %struct.TYPE_4__* %120
}

declare dso_local i32 @VectorSubtract(i64*, i64*, i64*) #1

declare dso_local i32 @VectorCopy(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
