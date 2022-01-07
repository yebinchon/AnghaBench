; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_init_ciu_percpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_init_ciu_percpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@octeon_irq_ciu0_en_mirror = common dso_local global i32 0, align 4
@octeon_irq_ciu1_en_mirror = common dso_local global i32 0, align 4
@octeon_irq_ciu_spinlock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @octeon_irq_init_ciu_percpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_irq_init_ciu_percpu() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @cvmx_get_core_num()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* @octeon_irq_ciu0_en_mirror, align 4
  %4 = call i32 @__this_cpu_write(i32 %3, i32 0)
  %5 = load i32, i32* @octeon_irq_ciu1_en_mirror, align 4
  %6 = call i32 @__this_cpu_write(i32 %5, i32 0)
  %7 = call i32 (...) @wmb()
  %8 = call i32 @this_cpu_ptr(i32* @octeon_irq_ciu_spinlock)
  %9 = call i32 @raw_spin_lock_init(i32 %8)
  %10 = load i32, i32* %1, align 4
  %11 = mul nsw i32 %10, 2
  %12 = call i32 @CVMX_CIU_INTX_EN0(i32 %11)
  %13 = call i32 @cvmx_write_csr(i32 %12, i32 0)
  %14 = load i32, i32* %1, align 4
  %15 = mul nsw i32 %14, 2
  %16 = add nsw i32 %15, 1
  %17 = call i32 @CVMX_CIU_INTX_EN0(i32 %16)
  %18 = call i32 @cvmx_write_csr(i32 %17, i32 0)
  %19 = load i32, i32* %1, align 4
  %20 = mul nsw i32 %19, 2
  %21 = call i32 @CVMX_CIU_INTX_EN1(i32 %20)
  %22 = call i32 @cvmx_write_csr(i32 %21, i32 0)
  %23 = load i32, i32* %1, align 4
  %24 = mul nsw i32 %23, 2
  %25 = add nsw i32 %24, 1
  %26 = call i32 @CVMX_CIU_INTX_EN1(i32 %25)
  %27 = call i32 @cvmx_write_csr(i32 %26, i32 0)
  %28 = load i32, i32* %1, align 4
  %29 = mul nsw i32 %28, 2
  %30 = call i32 @CVMX_CIU_INTX_SUM0(i32 %29)
  %31 = call i32 @cvmx_read_csr(i32 %30)
  ret void
}

declare dso_local i32 @cvmx_get_core_num(...) #1

declare dso_local i32 @__this_cpu_write(i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @raw_spin_lock_init(i32) #1

declare dso_local i32 @this_cpu_ptr(i32*) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @CVMX_CIU_INTX_EN0(i32) #1

declare dso_local i32 @CVMX_CIU_INTX_EN1(i32) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_CIU_INTX_SUM0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
