; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfpmodule.c_vfp_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfpmodule.c_vfp_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.thread_info = type { i32 }

@FPEXC = common dso_local global i32 0, align 4
@FPEXC_EN = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@vfp_current_hw_state = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @vfp_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfp_notifier(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.thread_info*, align 8
  %8 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.thread_info*
  store %struct.thread_info* %10, %struct.thread_info** %7, align 8
  %11 = load i64, i64* %5, align 8
  switch i64 %11, label %30 [
    i64 128, label %12
    i64 129, label %21
    i64 130, label %24
    i64 131, label %27
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* @FPEXC, align 4
  %14 = call i32 @fmrx(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @FPEXC, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @FPEXC_EN, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = call i32 @fmxr(i32 %15, i32 %19)
  br label %30

21:                                               ; preds = %3
  %22 = load %struct.thread_info*, %struct.thread_info** %7, align 8
  %23 = call i32 @vfp_thread_flush(%struct.thread_info* %22)
  br label %30

24:                                               ; preds = %3
  %25 = load %struct.thread_info*, %struct.thread_info** %7, align 8
  %26 = call i32 @vfp_thread_exit(%struct.thread_info* %25)
  br label %30

27:                                               ; preds = %3
  %28 = load %struct.thread_info*, %struct.thread_info** %7, align 8
  %29 = call i32 @vfp_thread_copy(%struct.thread_info* %28)
  br label %30

30:                                               ; preds = %3, %27, %24, %21, %12
  %31 = load i32, i32* @NOTIFY_DONE, align 4
  ret i32 %31
}

declare dso_local i32 @fmrx(i32) #1

declare dso_local i32 @fmxr(i32, i32) #1

declare dso_local i32 @vfp_thread_flush(%struct.thread_info*) #1

declare dso_local i32 @vfp_thread_exit(%struct.thread_info*) #1

declare dso_local i32 @vfp_thread_copy(%struct.thread_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
