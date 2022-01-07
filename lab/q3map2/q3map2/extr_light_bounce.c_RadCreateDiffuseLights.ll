; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_bounce.c_RadCreateDiffuseLights.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_bounce.c_RadCreateDiffuseLights.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double*, double*, i64, %struct.TYPE_3__* }

@SYS_VRB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"--- RadCreateDiffuseLights ---\0A\00", align 1
@numDiffuseSurfaces = common dso_local global i8* null, align 8
@numDiffuseLights = common dso_local global i64 0, align 8
@numBrushDiffuseLights = common dso_local global i64 0, align 8
@numTriangleDiffuseLights = common dso_local global i64 0, align 8
@numPatchDiffuseLights = common dso_local global i64 0, align 8
@numAreaLights = common dso_local global i64 0, align 8
@numBSPDrawSurfaces = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@RadLight = common dso_local global i32 0, align 4
@dump = common dso_local global i64 0, align 8
@source = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"_bounce_%03d.map\00", align 1
@iterations = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Writing %s...\0A\00", align 1
@lights = common dso_local global %struct.TYPE_3__* null, align 8
@.str.4 = private unnamed_addr constant [90 x i8] c"{\0A\22classname\22 \22light\22\0A\22light\22 \22%d\22\0A\22origin\22 \22%.0f %.0f %.0f\22\0A\22_color\22 \22%.3f %.3f %.3f\22\0A}\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"%8d diffuse surfaces\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"%8d total diffuse lights\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"%8d brush diffuse lights\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"%8d patch diffuse lights\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"%8d triangle diffuse lights\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RadCreateDiffuseLights() #0 {
  %1 = alloca [1024 x i8], align 16
  %2 = alloca [64 x i8], align 16
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = load i32, i32* @SYS_VRB, align 4
  %6 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %5, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** @numDiffuseSurfaces, align 8
  store i64 0, i64* @numDiffuseLights, align 8
  store i64 0, i64* @numBrushDiffuseLights, align 8
  store i64 0, i64* @numTriangleDiffuseLights, align 8
  store i64 0, i64* @numPatchDiffuseLights, align 8
  store i64 0, i64* @numAreaLights, align 8
  %7 = load i32, i32* @numBSPDrawSurfaces, align 4
  %8 = load i32, i32* @qtrue, align 4
  %9 = load i32, i32* @RadLight, align 4
  %10 = call i32 @RunThreadsOnIndividual(i32 %7, i32 %8, i32 %9)
  %11 = load i64, i64* @dump, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %81

13:                                               ; preds = %0
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %15 = load i32, i32* @source, align 4
  %16 = call i32 @strcpy(i8* %14, i32 %15)
  %17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %18 = call i32 @StripExtension(i8* %17)
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %20 = load i32, i32* @iterations, align 4
  %21 = call i32 @sprintf(i8* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %23 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %24 = call i32 @strcat(i8* %22, i8* %23)
  %25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %26 = call i32* @fopen(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %26, i32** %3, align 8
  %27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %28 = call i32 @Sys_Printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %27)
  %29 = load i32*, i32** %3, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %80

31:                                               ; preds = %13
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lights, align 8
  store %struct.TYPE_3__* %32, %struct.TYPE_3__** %4, align 8
  br label %33

33:                                               ; preds = %73, %31
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = icmp ne %struct.TYPE_3__* %34, null
  br i1 %35, label %36, label %77

36:                                               ; preds = %33
  %37 = load i32*, i32** %3, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load double*, double** %43, align 8
  %45 = getelementptr inbounds double, double* %44, i64 0
  %46 = load double, double* %45, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load double*, double** %48, align 8
  %50 = getelementptr inbounds double, double* %49, i64 1
  %51 = load double, double* %50, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load double*, double** %53, align 8
  %55 = getelementptr inbounds double, double* %54, i64 2
  %56 = load double, double* %55, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load double*, double** %58, align 8
  %60 = getelementptr inbounds double, double* %59, i64 0
  %61 = load double, double* %60, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load double*, double** %63, align 8
  %65 = getelementptr inbounds double, double* %64, i64 1
  %66 = load double, double* %65, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load double*, double** %68, align 8
  %70 = getelementptr inbounds double, double* %69, i64 2
  %71 = load double, double* %70, align 8
  %72 = call i32 @fprintf(i32* %37, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.4, i64 0, i64 0), i32 %41, double %46, double %51, double %56, double %61, double %66, double %71)
  br label %73

73:                                               ; preds = %36
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  store %struct.TYPE_3__* %76, %struct.TYPE_3__** %4, align 8
  br label %33

77:                                               ; preds = %33
  %78 = load i32*, i32** %3, align 8
  %79 = call i32 @fclose(i32* %78)
  br label %80

80:                                               ; preds = %77, %13
  br label %81

81:                                               ; preds = %80, %0
  %82 = load i32, i32* @iterations, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* @iterations, align 4
  %84 = load i8*, i8** @numDiffuseSurfaces, align 8
  %85 = call i32 @Sys_Printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %84)
  %86 = load i32, i32* @SYS_VRB, align 4
  %87 = load i64, i64* @numDiffuseLights, align 8
  %88 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %86, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i64 %87)
  %89 = load i32, i32* @SYS_VRB, align 4
  %90 = load i64, i64* @numBrushDiffuseLights, align 8
  %91 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %89, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i64 %90)
  %92 = load i32, i32* @SYS_VRB, align 4
  %93 = load i64, i64* @numPatchDiffuseLights, align 8
  %94 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %92, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i64 %93)
  %95 = load i32, i32* @SYS_VRB, align 4
  %96 = load i64, i64* @numTriangleDiffuseLights, align 8
  %97 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %95, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i64 %96)
  ret void
}

declare dso_local i32 @Sys_FPrintf(i32, i8*, ...) #1

declare dso_local i32 @RunThreadsOnIndividual(i32, i32, i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @StripExtension(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @Sys_Printf(i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i32, double, double, double, double, double, double) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
