; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_shaders.c_AllocShaderInfo.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_shaders.c_AllocShaderInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float, double, i8*, i8*, i32, i8*, i8*, i32, i8*, i32, i64, i8*, i32, i32, i32, i32, i32, i32, i32 }

@shaderInfo = common dso_local global %struct.TYPE_6__* null, align 8
@MAX_SHADER_INFO = common dso_local global i32 0, align 4
@numShaderInfo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [101 x i8] c"MAX_SHADER_INFO exceeded. Remove some PK3 files or shader scripts from shaderlist.txt and try again.\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@DEF_BACKSPLASH_FRACTION = common dso_local global i32 0, align 4
@DEF_BACKSPLASH_DISTANCE = common dso_local global i32 0, align 4
@DEF_RADIOSITY_BOUNCE = common dso_local global i32 0, align 4
@LS_NORMAL = common dso_local global i32 0, align 4
@qfalse = common dso_local global i8* null, align 8
@DEFAULT_LIGHTMAP_SAMPLE_OFFSET = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@lmCustomSize = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* ()* @AllocShaderInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @AllocShaderInfo() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shaderInfo, align 8
  %3 = icmp eq %struct.TYPE_6__* %2, null
  br i1 %3, label %4, label %10

4:                                                ; preds = %0
  %5 = load i32, i32* @MAX_SHADER_INFO, align 4
  %6 = sext i32 %5 to i64
  %7 = mul i64 128, %6
  %8 = trunc i64 %7 to i32
  %9 = call %struct.TYPE_6__* @safe_malloc(i32 %8)
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** @shaderInfo, align 8
  store i32 0, i32* @numShaderInfo, align 4
  br label %10

10:                                               ; preds = %4, %0
  %11 = load i32, i32* @numShaderInfo, align 4
  %12 = load i32, i32* @MAX_SHADER_INFO, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i32 @Error(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %10
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shaderInfo, align 8
  %18 = load i32, i32* @numShaderInfo, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i64 %19
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %1, align 8
  %21 = load i32, i32* @numShaderInfo, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @numShaderInfo, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %24 = call i32 @memset(%struct.TYPE_6__* %23, i32 0, i32 128)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 18
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 17
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 16
  %31 = call i32 @ApplySurfaceParm(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %26, i32* %28, i32* %30)
  %32 = load i32, i32* @DEF_BACKSPLASH_FRACTION, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 15
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @DEF_BACKSPLASH_DISTANCE, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 14
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @DEF_RADIOSITY_BOUNCE, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 13
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @LS_NORMAL, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 12
  store i32 %41, i32* %43, align 8
  %44 = load i8*, i8** @qfalse, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 11
  store i8* %44, i8** %46, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store float 0.000000e+00, float* %48, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 10
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* @DEFAULT_LIGHTMAP_SAMPLE_OFFSET, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 9
  store i32 %51, i32* %53, align 8
  %54 = load i8*, i8** @qfalse, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 8
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* @qtrue, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 8
  %60 = load i8*, i8** @qfalse, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 6
  store i8* %60, i8** %62, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  store double 1.000000e+00, double* %64, align 8
  %65 = load i8*, i8** @qfalse, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 5
  store i8* %65, i8** %67, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @TCModIdentity(i32 %70)
  %72 = load i8*, i8** @lmCustomSize, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 3
  store i8* %72, i8** %74, align 8
  %75 = load i8*, i8** @lmCustomSize, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  store i8* %75, i8** %77, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  ret %struct.TYPE_6__* %78
}

declare dso_local %struct.TYPE_6__* @safe_malloc(i32) #1

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @ApplySurfaceParm(i8*, i32*, i32*, i32*) #1

declare dso_local i32 @TCModIdentity(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
