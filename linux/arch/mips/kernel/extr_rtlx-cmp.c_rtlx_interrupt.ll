; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_rtlx-cmp.c_rtlx_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_rtlx-cmp.c_rtlx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.rtlx_info = type { i32 }

@RTLX_CHANNELS = common dso_local global i32 0, align 4
@channel_wqs = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rtlx_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtlx_interrupt() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.rtlx_info*, align 8
  %3 = alloca %struct.rtlx_info**, align 8
  %4 = call i32 (...) @aprp_cpu_index()
  %5 = call %struct.rtlx_info** @vpe_get_shared(i32 %4)
  store %struct.rtlx_info** %5, %struct.rtlx_info*** %3, align 8
  %6 = load %struct.rtlx_info**, %struct.rtlx_info*** %3, align 8
  %7 = icmp eq %struct.rtlx_info** %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %0
  %9 = load %struct.rtlx_info**, %struct.rtlx_info*** %3, align 8
  %10 = load %struct.rtlx_info*, %struct.rtlx_info** %9, align 8
  %11 = icmp eq %struct.rtlx_info* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %0
  br label %47

13:                                               ; preds = %8
  %14 = load %struct.rtlx_info**, %struct.rtlx_info*** %3, align 8
  %15 = load %struct.rtlx_info*, %struct.rtlx_info** %14, align 8
  store %struct.rtlx_info* %15, %struct.rtlx_info** %2, align 8
  %16 = load %struct.rtlx_info*, %struct.rtlx_info** %2, align 8
  %17 = getelementptr inbounds %struct.rtlx_info, %struct.rtlx_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %47

20:                                               ; preds = %13
  %21 = call i64 (...) @smp_processor_id()
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %20
  store i32 0, i32* %1, align 4
  br label %24

24:                                               ; preds = %41, %23
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @RTLX_CHANNELS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %24
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @channel_wqs, align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = call i32 @wake_up(i32* %33)
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @channel_wqs, align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @wake_up(i32* %39)
  br label %41

41:                                               ; preds = %28
  %42 = load i32, i32* %1, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %1, align 4
  br label %24

44:                                               ; preds = %24
  %45 = load %struct.rtlx_info*, %struct.rtlx_info** %2, align 8
  %46 = getelementptr inbounds %struct.rtlx_info, %struct.rtlx_info* %45, i32 0, i32 0
  store i32 0, i32* %46, align 4
  br label %47

47:                                               ; preds = %12, %44, %20, %13
  ret void
}

declare dso_local %struct.rtlx_info** @vpe_get_shared(i32) #1

declare dso_local i32 @aprp_cpu_index(...) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
