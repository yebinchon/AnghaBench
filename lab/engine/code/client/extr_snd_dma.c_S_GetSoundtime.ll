; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_snd_dma.c_S_GetSoundtime.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_snd_dma.c_S_GetSoundtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, float, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { float }
%struct.TYPE_5__ = type { i32 }

@S_GetSoundtime.buffers = internal global i32 0, align 4
@S_GetSoundtime.oldsamplepos = internal global i32 0, align 4
@dma = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@cl_aviFrameRate = common dso_local global %struct.TYPE_8__* null, align 8
@clc = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@s_soundtime = common dso_local global i32 0, align 4
@s_paintedtime = common dso_local global i32 0, align 4
@s_mixPreStep = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @S_GetSoundtime() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dma, i32 0, i32 0), align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dma, i32 0, i32 1), align 4
  %8 = sdiv i32 %6, %7
  store i32 %8, i32* %2, align 4
  %9 = call i64 (...) @CL_VideoRecording()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cl_aviFrameRate, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call float @MIN(i32 %14, float 1.000000e+03)
  store float %15, float* %3, align 4
  %16 = load float, float* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dma, i32 0, i32 2), align 4
  %17 = load float, float* %3, align 4
  %18 = fdiv float %16, %17
  %19 = call float @MAX(float %18, float 1.000000e+00)
  %20 = load float, float* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @clc, i32 0, i32 0), align 4
  %21 = fadd float %19, %20
  store float %21, float* %4, align 4
  %22 = load float, float* %4, align 4
  %23 = fptosi float %22 to i32
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @s_soundtime, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* @s_soundtime, align 4
  %27 = load float, float* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sitofp i32 %28 to float
  %30 = fsub float %27, %29
  store float %30, float* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @clc, i32 0, i32 0), align 4
  br label %71

31:                                               ; preds = %0
  %32 = call i32 (...) @SNDDMA_GetDMAPos()
  store i32 %32, i32* %1, align 4
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* @S_GetSoundtime.oldsamplepos, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load i32, i32* @S_GetSoundtime.buffers, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @S_GetSoundtime.buffers, align 4
  %39 = load i32, i32* @s_paintedtime, align 4
  %40 = icmp sgt i32 %39, 1073741824
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  store i32 0, i32* @S_GetSoundtime.buffers, align 4
  %42 = load i32, i32* %2, align 4
  store i32 %42, i32* @s_paintedtime, align 4
  %43 = call i32 (...) @S_Base_StopAllSounds()
  br label %44

44:                                               ; preds = %41, %36
  br label %45

45:                                               ; preds = %44, %31
  %46 = load i32, i32* %1, align 4
  store i32 %46, i32* @S_GetSoundtime.oldsamplepos, align 4
  %47 = load i32, i32* @S_GetSoundtime.buffers, align 4
  %48 = load i32, i32* %2, align 4
  %49 = mul nsw i32 %47, %48
  %50 = load i32, i32* %1, align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dma, i32 0, i32 1), align 4
  %52 = sdiv i32 %50, %51
  %53 = add nsw i32 %49, %52
  store i32 %53, i32* @s_soundtime, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dma, i32 0, i32 3), align 4
  %55 = icmp slt i32 %54, 256
  br i1 %55, label %56, label %67

56:                                               ; preds = %45
  %57 = load i32, i32* @s_soundtime, align 4
  %58 = sitofp i32 %57 to float
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_mixPreStep, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sitofp i32 %61 to float
  %63 = load float, float* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dma, i32 0, i32 2), align 4
  %64 = fmul float %62, %63
  %65 = fadd float %58, %64
  %66 = fptosi float %65 to i32
  store i32 %66, i32* @s_paintedtime, align 4
  br label %71

67:                                               ; preds = %45
  %68 = load i32, i32* @s_soundtime, align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dma, i32 0, i32 3), align 4
  %70 = add nsw i32 %68, %69
  store i32 %70, i32* @s_paintedtime, align 4
  br label %71

71:                                               ; preds = %11, %67, %56
  ret void
}

declare dso_local i64 @CL_VideoRecording(...) #1

declare dso_local float @MIN(i32, float) #1

declare dso_local float @MAX(float, float) #1

declare dso_local i32 @SNDDMA_GetDMAPos(...) #1

declare dso_local i32 @S_Base_StopAllSounds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
