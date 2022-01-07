; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_portals.c_PlaceOccupant.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_portals.c_PlaceOccupant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_7__ = type { i64, i32, i32*, i64, %struct.TYPE_7__** }

@PLANENUM_LEAF = common dso_local global i64 0, align 8
@nummapplanes = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"PlaceOccupant: invalid node->planenum\0A\00", align 1
@mapplanes = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"PlaceOccupant: invalid child %d\0A\00", align 1
@CONTENTS_SOLID = common dso_local global i32 0, align 4
@numrec = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PlaceOccupant(%struct.TYPE_7__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %8, align 8
  br label %12

12:                                               ; preds = %68, %3
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PLANENUM_LEAF, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %69

18:                                               ; preds = %12
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @nummapplanes, align 8
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23, %18
  %30 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %23
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mapplanes, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %35
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %10, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @DotProduct(i32 %37, i32 %40)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %41, %44
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp sge i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %31
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 4
  %51 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %51, i64 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  store %struct.TYPE_7__* %53, %struct.TYPE_7__** %8, align 8
  br label %60

54:                                               ; preds = %31
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 4
  %57 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %57, i64 1
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  store %struct.TYPE_7__* %59, %struct.TYPE_7__** %8, align 8
  br label %60

60:                                               ; preds = %54, %48
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %62 = icmp ne %struct.TYPE_7__* %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %60
  %64 = load i64, i64* %9, align 8
  %65 = icmp slt i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %63, %60
  br label %12

69:                                               ; preds = %12
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @CONTENTS_SOLID, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %89

77:                                               ; preds = %69
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  store i32 0, i32* %4, align 4
  br label %89

83:                                               ; preds = %77
  %84 = load i32*, i32** %7, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  store i32* %84, i32** %86, align 8
  store i64 0, i64* @numrec, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %88 = call i32 @FloodPortals(%struct.TYPE_7__* %87)
  store i32 1, i32* %4, align 4
  br label %89

89:                                               ; preds = %83, %82, %76
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @Error(i8*, ...) #1

declare dso_local i64 @DotProduct(i32, i32) #1

declare dso_local i32 @FloodPortals(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
