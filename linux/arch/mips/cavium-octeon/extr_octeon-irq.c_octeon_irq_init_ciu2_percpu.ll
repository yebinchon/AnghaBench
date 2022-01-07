; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_init_ciu2_percpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_init_ciu2_percpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @octeon_irq_init_ciu2_percpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_irq_init_ciu2_percpu() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (...) @cvmx_get_core_num()
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @CVMX_CIU2_EN_PPX_IP2_WRKQ(i32 %6)
  store i32 %7, i32* %4, align 4
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %26, %0
  %9 = load i32, i32* %1, align 4
  %10 = icmp sle i32 %9, 32768
  br i1 %10, label %11, label %29

11:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %22, %11
  %13 = load i32, i32* %2, align 4
  %14 = icmp sle i32 %13, 1024
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %1, align 4
  %18 = add nsw i32 %16, %17
  %19 = load i32, i32* %2, align 4
  %20 = add nsw i32 %18, %19
  %21 = call i32 @cvmx_write_csr(i32 %20, i32 0)
  br label %22

22:                                               ; preds = %15
  %23 = load i32, i32* %2, align 4
  %24 = add nsw i32 %23, 512
  store i32 %24, i32* %2, align 4
  br label %12

25:                                               ; preds = %12
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 4096
  store i32 %28, i32* %1, align 4
  br label %8

29:                                               ; preds = %8
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @CVMX_CIU2_SUM_PPX_IP2(i32 %30)
  %32 = call i32 @cvmx_read_csr(i32 %31)
  ret void
}

declare dso_local i32 @cvmx_get_core_num(...) #1

declare dso_local i32 @CVMX_CIU2_EN_PPX_IP2_WRKQ(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_CIU2_SUM_PPX_IP2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
