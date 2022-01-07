; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_cache-b15-rac.c_b15_rac_reboot_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_cache-b15-rac.c_b15_rac_reboot_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }

@SYS_RESTART = common dso_local global i64 0, align 8
@rac_lock = common dso_local global i32 0, align 4
@RAC_ENABLED = common dso_local global i32 0, align 4
@b15_rac_flags = common dso_local global i32 0, align 4
@RAC_SUSPENDED = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @b15_rac_reboot_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b15_rac_reboot_notifier(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @SYS_RESTART, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = call i32 @spin_lock(i32* @rac_lock)
  %12 = call i32 (...) @b15_rac_disable_and_flush()
  %13 = load i32, i32* @RAC_ENABLED, align 4
  %14 = call i32 @clear_bit(i32 %13, i32* @b15_rac_flags)
  %15 = load i32, i32* @RAC_SUSPENDED, align 4
  %16 = call i32 @set_bit(i32 %15, i32* @b15_rac_flags)
  %17 = call i32 @spin_unlock(i32* @rac_lock)
  br label %18

18:                                               ; preds = %10, %3
  %19 = load i32, i32* @NOTIFY_DONE, align 4
  ret i32 %19
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @b15_rac_disable_and_flush(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
