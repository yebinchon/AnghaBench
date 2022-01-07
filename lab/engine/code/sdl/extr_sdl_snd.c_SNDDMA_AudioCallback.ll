; ModuleID = '/home/carl/AnghaBench/lab/engine/code/sdl/extr_sdl_snd.c_SNDDMA_AudioCallback.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/sdl/extr_sdl_snd.c_SNDDMA_AudioCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64 }

@dmapos = common dso_local global i32 0, align 4
@dma = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@dmasize = common dso_local global i32 0, align 4
@snd_inited = common dso_local global i32 0, align 4
@sdlMasterGain = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64*, i32)* @SNDDMA_AudioCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SNDDMA_AudioCallback(i8* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @dmapos, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dma, i32 0, i32 0), align 8
  %13 = sdiv i32 %12, 8
  %14 = mul nsw i32 %11, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @dmasize, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  store i32 0, i32* @dmapos, align 4
  br label %19

19:                                               ; preds = %18, %3
  %20 = load i32, i32* @snd_inited, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load i64*, i64** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @memset(i64* %23, i8 signext 0, i32 %24)
  br label %74

26:                                               ; preds = %19
  %27 = load i32, i32* @dmasize, align 4
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 %27, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 %36, %37
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %34, %26
  %40 = load i64*, i64** %5, align 8
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dma, i32 0, i32 2), align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @memcpy(i64* %40, i64 %44, i32 %45)
  %47 = load i32, i32* %10, align 4
  %48 = icmp sle i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %39
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dma, i32 0, i32 0), align 8
  %52 = sdiv i32 %51, 8
  %53 = sdiv i32 %50, %52
  %54 = load i32, i32* @dmapos, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* @dmapos, align 4
  br label %68

56:                                               ; preds = %39
  %57 = load i64*, i64** %5, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dma, i32 0, i32 2), align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @memcpy(i64* %60, i64 %61, i32 %62)
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dma, i32 0, i32 0), align 8
  %66 = sdiv i32 %65, 8
  %67 = sdiv i32 %64, %66
  store i32 %67, i32* @dmapos, align 4
  br label %68

68:                                               ; preds = %56, %49
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* @dmapos, align 4
  %71 = load i32, i32* @dmasize, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32 0, i32* @dmapos, align 4
  br label %74

74:                                               ; preds = %22, %73, %69
  ret void
}

declare dso_local i32 @memset(i64*, i8 signext, i32) #1

declare dso_local i32 @memcpy(i64*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
