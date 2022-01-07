; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface_meta.c_MakeEntityMetaTriangles.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface_meta.c_MakeEntityMetaTriangles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_12__ = type { i32 }

@SYS_VRB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"--- MakeEntityMetaTriangles ---\0A\00", align 1
@numMapDrawSurfs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%d...\00", align 1
@mapDrawSurfs = common dso_local global %struct.TYPE_11__* null, align 8
@meta = common dso_local global i64 0, align 8
@qfalse = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c" (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"%9d total meta surfaces\0A\00", align 1
@numMetaSurfaces = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"%9d stripped surfaces\0A\00", align 1
@numStripSurfaces = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"%9d fanned surfaces\0A\00", align 1
@numFanSurfaces = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"%9d patch meta surfaces\0A\00", align 1
@numPatchMetaSurfaces = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"%9d meta verts\0A\00", align 1
@numMetaVerts = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"%9d meta triangles\0A\00", align 1
@numMetaTriangles = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MakeEntityMetaTriangles(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %8 = load i32, i32* @SYS_VRB, align 4
  %9 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  %10 = call i32 (...) @I_FloatTime()
  store i32 %10, i32* %6, align 4
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %88, %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @numMapDrawSurfs, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %91

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %19, %22
  %24 = mul nsw i32 10, %23
  %25 = load i32, i32* @numMapDrawSurfs, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %25, %28
  %30 = sdiv i32 %24, %29
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %18
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* @SYS_VRB, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %34, %18
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mapDrawSurfs, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i64 %42
  store %struct.TYPE_11__* %43, %struct.TYPE_11__** %7, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sle i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %88

49:                                               ; preds = %39
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %88

57:                                               ; preds = %49
  %58 = load i64, i64* @meta, align 8
  %59 = load i64, i64* @qfalse, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @qfalse, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %88

70:                                               ; preds = %61, %57
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  switch i32 %73, label %86 [
    i32 132, label %74
    i32 133, label %74
    i32 129, label %79
    i32 128, label %82
    i32 131, label %83
    i32 130, label %83
  ]

74:                                               ; preds = %70, %70
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %76 = call i32 @StripFaceSurface(%struct.TYPE_11__* %75)
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %78 = call i32 @SurfaceToMetaTriangles(%struct.TYPE_11__* %77)
  br label %87

79:                                               ; preds = %70
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %81 = call i32 @TriangulatePatchSurface(%struct.TYPE_11__* %80)
  br label %87

82:                                               ; preds = %70
  br label %87

83:                                               ; preds = %70, %70
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %85 = call i32 @SurfaceToMetaTriangles(%struct.TYPE_11__* %84)
  br label %87

86:                                               ; preds = %70
  br label %87

87:                                               ; preds = %86, %83, %82, %79, %74
  br label %88

88:                                               ; preds = %87, %69, %56, %48
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %14

91:                                               ; preds = %14
  %92 = load i32, i32* @numMapDrawSurfs, align 4
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 %92, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %91
  %99 = load i32, i32* @SYS_VRB, align 4
  %100 = call i32 (...) @I_FloatTime()
  %101 = load i32, i32* %6, align 4
  %102 = sub nsw i32 %100, %101
  %103 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %98, %91
  %105 = load i32, i32* @SYS_VRB, align 4
  %106 = load i32, i32* @numMetaSurfaces, align 4
  %107 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %105, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* @SYS_VRB, align 4
  %109 = load i32, i32* @numStripSurfaces, align 4
  %110 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %108, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* @SYS_VRB, align 4
  %112 = load i32, i32* @numFanSurfaces, align 4
  %113 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %111, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* @SYS_VRB, align 4
  %115 = load i32, i32* @numPatchMetaSurfaces, align 4
  %116 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %114, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* @SYS_VRB, align 4
  %118 = load i32, i32* @numMetaVerts, align 4
  %119 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %117, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @SYS_VRB, align 4
  %121 = load i32, i32* @numMetaTriangles, align 4
  %122 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %120, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %121)
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %124 = call i32 @TidyEntitySurfaces(%struct.TYPE_12__* %123)
  ret void
}

declare dso_local i32 @Sys_FPrintf(i32, i8*, ...) #1

declare dso_local i32 @I_FloatTime(...) #1

declare dso_local i32 @StripFaceSurface(%struct.TYPE_11__*) #1

declare dso_local i32 @SurfaceToMetaTriangles(%struct.TYPE_11__*) #1

declare dso_local i32 @TriangulatePatchSurface(%struct.TYPE_11__*) #1

declare dso_local i32 @TidyEntitySurfaces(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
