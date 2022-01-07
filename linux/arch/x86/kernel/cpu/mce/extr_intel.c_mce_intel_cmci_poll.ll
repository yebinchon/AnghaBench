; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_intel.c_mce_intel_cmci_poll.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_intel.c_mce_intel_cmci_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmci_storm_state = common dso_local global i32 0, align 4
@CMCI_STORM_NONE = common dso_local global i64 0, align 8
@mce_banks_owned = common dso_local global i32 0, align 4
@cmci_backoff_cnt = common dso_local global i32 0, align 4
@INITIAL_CHECK_INTERVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mce_intel_cmci_poll() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @cmci_storm_state, align 4
  %3 = call i64 @__this_cpu_read(i32 %2)
  %4 = load i64, i64* @CMCI_STORM_NONE, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %19

7:                                                ; preds = %0
  %8 = call i32 @this_cpu_ptr(i32* @mce_banks_owned)
  %9 = call i64 @machine_check_poll(i32 0, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = load i32, i32* @cmci_backoff_cnt, align 4
  %13 = load i32, i32* @INITIAL_CHECK_INTERVAL, align 4
  %14 = call i32 @this_cpu_write(i32 %12, i32 %13)
  br label %18

15:                                               ; preds = %7
  %16 = load i32, i32* @cmci_backoff_cnt, align 4
  %17 = call i32 @this_cpu_dec(i32 %16)
  br label %18

18:                                               ; preds = %15, %11
  store i32 1, i32* %1, align 4
  br label %19

19:                                               ; preds = %18, %6
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i64 @__this_cpu_read(i32) #1

declare dso_local i64 @machine_check_poll(i32, i32) #1

declare dso_local i32 @this_cpu_ptr(i32*) #1

declare dso_local i32 @this_cpu_write(i32, i32) #1

declare dso_local i32 @this_cpu_dec(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
