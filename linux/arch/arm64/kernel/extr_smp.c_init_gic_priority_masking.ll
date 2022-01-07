; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_smp.c_init_gic_priority_masking.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_smp.c_init_gic_priority_masking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@daif = common dso_local global i32 0, align 4
@PSR_I_BIT = common dso_local global i32 0, align 4
@GIC_PRIO_IRQON = common dso_local global i32 0, align 4
@GIC_PRIO_PSR_I_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_gic_priority_masking to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_gic_priority_masking() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @gic_enable_sre()
  %3 = icmp ne i32 %2, 0
  %4 = xor i1 %3, true
  %5 = zext i1 %4 to i32
  %6 = call i64 @WARN_ON(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %23

9:                                                ; preds = %0
  %10 = load i32, i32* @daif, align 4
  %11 = call i32 @read_sysreg(i32 %10)
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @PSR_I_BIT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = load i32, i32* @GIC_PRIO_IRQON, align 4
  %20 = load i32, i32* @GIC_PRIO_PSR_I_SET, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @gic_write_pmr(i32 %21)
  br label %23

23:                                               ; preds = %9, %8
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @gic_enable_sre(...) #1

declare dso_local i32 @read_sysreg(i32) #1

declare dso_local i32 @gic_write_pmr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
