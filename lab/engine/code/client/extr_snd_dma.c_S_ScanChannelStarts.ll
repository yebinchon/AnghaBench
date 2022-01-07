; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_snd_dma.c_S_ScanChannelStarts.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_snd_dma.c_S_ScanChannelStarts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@qfalse = common dso_local global i32 0, align 4
@s_channels = common dso_local global %struct.TYPE_6__* null, align 8
@MAX_CHANNELS = common dso_local global i32 0, align 4
@START_SAMPLE_IMMEDIATE = common dso_local global i64 0, align 8
@s_paintedtime = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @S_ScanChannelStarts() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @qfalse, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @s_channels, align 8
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %1, align 8
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %43, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @MAX_CHANNELS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %48

10:                                               ; preds = %6
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  br label %43

16:                                               ; preds = %10
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @START_SAMPLE_IMMEDIATE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load i64, i64* @s_paintedtime, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load i32, i32* @qtrue, align 4
  store i32 %26, i32* %3, align 4
  br label %43

27:                                               ; preds = %16
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %30, %35
  %37 = load i64, i64* @s_paintedtime, align 8
  %38 = icmp sle i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %27
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %41 = call i32 @S_ChannelFree(%struct.TYPE_6__* %40)
  br label %42

42:                                               ; preds = %39, %27
  br label %43

43:                                               ; preds = %42, %22, %15
  %44 = load i32, i32* %2, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %2, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 1
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %1, align 8
  br label %6

48:                                               ; preds = %6
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @S_ChannelFree(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
