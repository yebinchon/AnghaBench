; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_setup_secondary_ciu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_setup_secondary_ciu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATUSF_IP3 = common dso_local global i32 0, align 4
@STATUSF_IP2 = common dso_local global i32 0, align 4
@octeon_irq_use_ip4 = common dso_local global i64 0, align 8
@STATUSF_IP4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @octeon_irq_setup_secondary_ciu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_irq_setup_secondary_ciu() #0 {
  %1 = call i32 (...) @octeon_irq_init_ciu_percpu()
  %2 = call i32 (...) @octeon_irq_percpu_enable()
  %3 = load i32, i32* @STATUSF_IP3, align 4
  %4 = load i32, i32* @STATUSF_IP2, align 4
  %5 = or i32 %3, %4
  %6 = call i32 @set_c0_status(i32 %5)
  %7 = load i64, i64* @octeon_irq_use_ip4, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i32, i32* @STATUSF_IP4, align 4
  %11 = call i32 @set_c0_status(i32 %10)
  br label %15

12:                                               ; preds = %0
  %13 = load i32, i32* @STATUSF_IP4, align 4
  %14 = call i32 @clear_c0_status(i32 %13)
  br label %15

15:                                               ; preds = %12, %9
  ret void
}

declare dso_local i32 @octeon_irq_init_ciu_percpu(...) #1

declare dso_local i32 @octeon_irq_percpu_enable(...) #1

declare dso_local i32 @set_c0_status(i32) #1

declare dso_local i32 @clear_c0_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
