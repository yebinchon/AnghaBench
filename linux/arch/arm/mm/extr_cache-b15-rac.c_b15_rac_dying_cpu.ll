; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_cache-b15-rac.c_b15_rac_dying_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_cache-b15-rac.c_b15_rac_dying_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RAC_SUSPENDED = common dso_local global i32 0, align 4
@b15_rac_flags = common dso_local global i32 0, align 4
@rac_lock = common dso_local global i32 0, align 4
@RAC_ENABLED = common dso_local global i32 0, align 4
@rac_config0_reg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @b15_rac_dying_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b15_rac_dying_cpu(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @RAC_SUSPENDED, align 4
  %5 = call i64 @test_bit(i32 %4, i32* @b15_rac_flags)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %14

8:                                                ; preds = %1
  %9 = call i32 @spin_lock(i32* @rac_lock)
  %10 = load i32, i32* @RAC_ENABLED, align 4
  %11 = call i32 @__clear_bit(i32 %10, i32* @b15_rac_flags)
  %12 = call i32 (...) @b15_rac_disable_and_flush()
  store i32 %12, i32* @rac_config0_reg, align 4
  %13 = call i32 @spin_unlock(i32* @rac_lock)
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %8, %7
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__clear_bit(i32, i32*) #1

declare dso_local i32 @b15_rac_disable_and_flush(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
