; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_snd_mix.c_S_TransferStereo16.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_snd_mix.c_S_TransferStereo16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@paintbuffer = common dso_local global i64 0, align 8
@snd_p = common dso_local global i32* null, align 8
@s_paintedtime = common dso_local global i32 0, align 4
@dma = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@snd_out = common dso_local global i16* null, align 8
@snd_linear_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @S_TransferStereo16(i64* %0, i32 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* @paintbuffer, align 8
  %8 = inttoptr i64 %7 to i32*
  store i32* %8, i32** @snd_p, align 8
  %9 = load i32, i32* @s_paintedtime, align 4
  store i32 %9, i32* %6, align 4
  br label %10

10:                                               ; preds = %59, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %60

14:                                               ; preds = %10
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dma, i32 0, i32 0), align 4
  %17 = ashr i32 %16, 1
  %18 = sub nsw i32 %17, 1
  %19 = and i32 %15, %18
  store i32 %19, i32* %5, align 4
  %20 = load i64*, i64** %3, align 8
  %21 = bitcast i64* %20 to i16*
  %22 = load i32, i32* %5, align 4
  %23 = shl i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i16, i16* %21, i64 %24
  store i16* %25, i16** @snd_out, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dma, i32 0, i32 0), align 4
  %27 = ashr i32 %26, 1
  %28 = load i32, i32* %5, align 4
  %29 = sub nsw i32 %27, %28
  store i32 %29, i32* @snd_linear_count, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @snd_linear_count, align 4
  %32 = add nsw i32 %30, %31
  %33 = load i32, i32* %4, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %14
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %6, align 4
  %38 = sub nsw i32 %36, %37
  store i32 %38, i32* @snd_linear_count, align 4
  br label %39

39:                                               ; preds = %35, %14
  %40 = load i32, i32* @snd_linear_count, align 4
  %41 = shl i32 %40, 1
  store i32 %41, i32* @snd_linear_count, align 4
  %42 = call i32 (...) @S_WriteLinearBlastStereo16()
  %43 = load i32, i32* @snd_linear_count, align 4
  %44 = load i32*, i32** @snd_p, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32* %46, i32** @snd_p, align 8
  %47 = load i32, i32* @snd_linear_count, align 4
  %48 = ashr i32 %47, 1
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = call i64 (...) @CL_VideoRecording()
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %39
  %54 = load i16*, i16** @snd_out, align 8
  %55 = bitcast i16* %54 to i32*
  %56 = load i32, i32* @snd_linear_count, align 4
  %57 = shl i32 %56, 1
  %58 = call i32 @CL_WriteAVIAudioFrame(i32* %55, i32 %57)
  br label %59

59:                                               ; preds = %53, %39
  br label %10

60:                                               ; preds = %10
  ret void
}

declare dso_local i32 @S_WriteLinearBlastStereo16(...) #1

declare dso_local i64 @CL_VideoRecording(...) #1

declare dso_local i32 @CL_WriteAVIAudioFrame(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
