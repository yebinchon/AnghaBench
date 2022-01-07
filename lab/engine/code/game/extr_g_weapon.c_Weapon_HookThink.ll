; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_weapon.c_Weapon_HookThink.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_weapon.c_Weapon_HookThink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__*, %struct.TYPE_12__, %struct.TYPE_11__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { double*, double*, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Weapon_HookThink(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %5 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 2
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %8 = icmp ne %struct.TYPE_11__* %7, null
  br i1 %8, label %9, label %115

9:                                                ; preds = %1
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i64*, i64** %4, align 8
  %15 = call i32 @VectorCopy(i32 %13, i64* %14)
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = sitofp i64 %23 to double
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load double*, double** %29, align 8
  %31 = getelementptr inbounds double, double* %30, i64 0
  %32 = load double, double* %31, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load double*, double** %37, align 8
  %39 = getelementptr inbounds double, double* %38, i64 0
  %40 = load double, double* %39, align 8
  %41 = fadd double %32, %40
  %42 = fmul double %41, 5.000000e-01
  %43 = fadd double %24, %42
  %44 = fptosi double %43 to i64
  %45 = load i64*, i64** %3, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 1
  %54 = load i64, i64* %53, align 8
  %55 = sitofp i64 %54 to double
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load double*, double** %60, align 8
  %62 = getelementptr inbounds double, double* %61, i64 1
  %63 = load double, double* %62, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load double*, double** %68, align 8
  %70 = getelementptr inbounds double, double* %69, i64 1
  %71 = load double, double* %70, align 8
  %72 = fadd double %63, %71
  %73 = fmul double %72, 5.000000e-01
  %74 = fadd double %55, %73
  %75 = fptosi double %74 to i64
  %76 = load i64*, i64** %3, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 1
  store i64 %75, i64* %77, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 2
  %85 = load i64, i64* %84, align 8
  %86 = sitofp i64 %85 to double
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load double*, double** %91, align 8
  %93 = getelementptr inbounds double, double* %92, i64 2
  %94 = load double, double* %93, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load double*, double** %99, align 8
  %101 = getelementptr inbounds double, double* %100, i64 2
  %102 = load double, double* %101, align 8
  %103 = fadd double %94, %102
  %104 = fmul double %103, 5.000000e-01
  %105 = fadd double %86, %104
  %106 = fptosi double %105 to i64
  %107 = load i64*, i64** %3, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 2
  store i64 %106, i64* %108, align 8
  %109 = load i64*, i64** %3, align 8
  %110 = load i64*, i64** %4, align 8
  %111 = call i32 @SnapVectorTowards(i64* %109, i64* %110)
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %113 = load i64*, i64** %3, align 8
  %114 = call i32 @G_SetOrigin(%struct.TYPE_16__* %112, i64* %113)
  br label %115

115:                                              ; preds = %9, %1
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  %127 = load i64*, i64** %126, align 8
  %128 = call i32 @VectorCopy(i32 %119, i64* %127)
  ret void
}

declare dso_local i32 @VectorCopy(i32, i64*) #1

declare dso_local i32 @SnapVectorTowards(i64*, i64*) #1

declare dso_local i32 @G_SetOrigin(%struct.TYPE_16__*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
