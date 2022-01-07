; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface_meta.c_MergeMetaTriangles.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface_meta.c_MergeMetaTriangles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32* }

@numMetaTriangles = common dso_local global i32 0, align 4
@SYS_VRB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"--- MergeMetaTriangles ---\0A\00", align 1
@metaTriangles = common dso_local global %struct.TYPE_5__* null, align 8
@CompareMetaTriangles = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c" (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"%9d surfaces merged\0A\00", align 1
@numMergedSurfaces = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"%9d vertexes merged\0A\00", align 1
@numMergedVerts = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MergeMetaTriangles() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = load i32, i32* @numMetaTriangles, align 4
  %9 = icmp sle i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  br label %95

11:                                               ; preds = %0
  %12 = load i32, i32* @SYS_VRB, align 4
  %13 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @metaTriangles, align 8
  %15 = load i32, i32* @numMetaTriangles, align 4
  %16 = load i32, i32* @CompareMetaTriangles, align 4
  %17 = call i32 @qsort(%struct.TYPE_5__* %14, i32 %15, i32 16, i32 %16)
  store i32 -1, i32* %3, align 4
  %18 = call i32 (...) @I_FloatTime()
  store i32 %18, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %76, %11
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* @numMetaTriangles, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %78

23:                                               ; preds = %19
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @metaTriangles, align 8
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %26
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %6, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %76

33:                                               ; preds = %23
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* %1, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %70

37:                                               ; preds = %33
  %38 = load i32, i32* %1, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %66, %37
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @numMetaTriangles, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %69

44:                                               ; preds = %40
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** @metaTriangles, align 8
  %46 = load i32, i32* %2, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %47
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** %7, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %51, %54
  br i1 %55, label %64, label %56

56:                                               ; preds = %44
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56, %44
  br label %69

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %2, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %2, align 4
  br label %40

69:                                               ; preds = %64, %40
  br label %70

70:                                               ; preds = %69, %33
  %71 = load i32, i32* %2, align 4
  %72 = load i32, i32* %1, align 4
  %73 = sub nsw i32 %71, %72
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %75 = call i32 @MetaTrianglesToSurface(i32 %73, %struct.TYPE_5__* %74, i32* %3, i32* %5)
  br label %76

76:                                               ; preds = %70, %32
  %77 = load i32, i32* %2, align 4
  store i32 %77, i32* %1, align 4
  br label %19

78:                                               ; preds = %19
  %79 = call i32 (...) @ClearMetaTriangles()
  %80 = load i32, i32* %1, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load i32, i32* @SYS_VRB, align 4
  %84 = call i32 (...) @I_FloatTime()
  %85 = load i32, i32* %4, align 4
  %86 = sub nsw i32 %84, %85
  %87 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %82, %78
  %89 = load i32, i32* @SYS_VRB, align 4
  %90 = load i32, i32* @numMergedSurfaces, align 4
  %91 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @SYS_VRB, align 4
  %93 = load i32, i32* @numMergedVerts, align 4
  %94 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %92, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %88, %10
  ret void
}

declare dso_local i32 @Sys_FPrintf(i32, i8*, ...) #1

declare dso_local i32 @qsort(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @I_FloatTime(...) #1

declare dso_local i32 @MetaTrianglesToSurface(i32, %struct.TYPE_5__*, i32*, i32*) #1

declare dso_local i32 @ClearMetaTriangles(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
