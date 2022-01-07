; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_vis.c_CalcVis.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_vis.c_CalcVis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@farPlaneDist = common dso_local global float 0.000000e+00, align 4
@entities = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"_farplanedist\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"fogclip\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"distancecull\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"farplane distance = %.1f\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"\0A--- BasePortalVis (%d) ---\0A\00", align 1
@numportals = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@BasePortalVis = common dso_local global i32 0, align 4
@fastvis = common dso_local global i64 0, align 8
@noPassageVis = common dso_local global i64 0, align 8
@passageVisOnly = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"creating leaf vis...\0A\00", align 1
@portalclusters = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"Total visible clusters: %i\0A\00", align 1
@totalvis = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"Average clusters visible: %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CalcVis() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  store float 0.000000e+00, float* @farPlaneDist, align 4
  %3 = load i32*, i32** @entities, align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 0
  %5 = call i8* @ValueForKey(i32* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i8* %5, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %0
  %12 = load i32*, i32** @entities, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = call i8* @ValueForKey(i32* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %14, i8** %2, align 8
  br label %15

15:                                               ; preds = %11, %0
  %16 = load i8*, i8** %2, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i32*, i32** @entities, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = call i8* @ValueForKey(i32* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i8* %24, i8** %2, align 8
  br label %25

25:                                               ; preds = %21, %15
  %26 = load i8*, i8** %2, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %25
  %32 = load i8*, i8** %2, align 8
  %33 = call float @atof(i8* %32)
  store float %33, float* @farPlaneDist, align 4
  %34 = load float, float* @farPlaneDist, align 4
  %35 = fcmp ogt float %34, 0.000000e+00
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load float, float* @farPlaneDist, align 4
  %38 = fpext float %37 to double
  %39 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), double %38)
  br label %41

40:                                               ; preds = %31
  store float 0.000000e+00, float* @farPlaneDist, align 4
  br label %41

41:                                               ; preds = %40, %36
  br label %42

42:                                               ; preds = %41, %25
  %43 = load i32, i32* @numportals, align 4
  %44 = mul nsw i32 %43, 2
  %45 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @numportals, align 4
  %47 = mul nsw i32 %46, 2
  %48 = load i32, i32* @qtrue, align 4
  %49 = load i32, i32* @BasePortalVis, align 4
  %50 = call i32 @RunThreadsOnIndividual(i32 %47, i32 %48, i32 %49)
  %51 = call i32 (...) @SortPortals()
  %52 = load i64, i64* @fastvis, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %42
  %55 = call i32 (...) @CalcFastVis()
  br label %70

56:                                               ; preds = %42
  %57 = load i64, i64* @noPassageVis, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = call i32 (...) @CalcPortalVis()
  br label %69

61:                                               ; preds = %56
  %62 = load i64, i64* @passageVisOnly, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = call i32 (...) @CalcPassageVis()
  br label %68

66:                                               ; preds = %61
  %67 = call i32 (...) @CalcPassagePortalVis()
  br label %68

68:                                               ; preds = %66, %64
  br label %69

69:                                               ; preds = %68, %59
  br label %70

70:                                               ; preds = %69, %54
  %71 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %72

72:                                               ; preds = %79, %70
  %73 = load i32, i32* %1, align 4
  %74 = load i32, i32* @portalclusters, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load i32, i32* %1, align 4
  %78 = call i32 @ClusterMerge(i32 %77)
  br label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %1, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %1, align 4
  br label %72

82:                                               ; preds = %72
  %83 = load i32, i32* @totalvis, align 4
  %84 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @totalvis, align 4
  %86 = load i32, i32* @portalclusters, align 4
  %87 = sdiv i32 %85, %86
  %88 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %87)
  ret void
}

declare dso_local i8* @ValueForKey(i32*, i8*) #1

declare dso_local float @atof(i8*) #1

declare dso_local i32 @Sys_Printf(i8*, ...) #1

declare dso_local i32 @RunThreadsOnIndividual(i32, i32, i32) #1

declare dso_local i32 @SortPortals(...) #1

declare dso_local i32 @CalcFastVis(...) #1

declare dso_local i32 @CalcPortalVis(...) #1

declare dso_local i32 @CalcPassageVis(...) #1

declare dso_local i32 @CalcPassagePortalVis(...) #1

declare dso_local i32 @ClusterMerge(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
