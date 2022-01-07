; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_ciu2_mbox.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_ciu2_mbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OCTEON_IRQ_MBOX0 = common dso_local global i64 0, align 8
@OCTEON_CN68XX = common dso_local global i32 0, align 4
@CVMX_CIU2_INTR_CIU_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @octeon_irq_ciu2_mbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_irq_ciu2_mbox() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = call i64 (...) @cvmx_get_core_num()
  store i64 %4, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call i32 @CVMX_CIU2_SUM_PPX_IP3(i64 %5)
  %7 = call i32 @cvmx_read_csr(i32 %6)
  %8 = ashr i32 %7, 60
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  br label %25

16:                                               ; preds = %0
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @fls64(i32 %17)
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %1, align 4
  %20 = load i64, i64* @OCTEON_IRQ_MBOX0, align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = call i32 @do_IRQ(i64 %23)
  br label %27

25:                                               ; preds = %15
  %26 = call i32 (...) @spurious_interrupt()
  br label %27

27:                                               ; preds = %25, %16
  %28 = load i32, i32* @OCTEON_CN68XX, align 4
  %29 = call i64 @OCTEON_IS_MODEL(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @CVMX_CIU2_INTR_CIU_READY, align 4
  %33 = call i32 @cvmx_read_csr(i32 %32)
  br label %38

34:                                               ; preds = %27
  %35 = load i64, i64* %2, align 8
  %36 = call i32 @CVMX_CIU2_ACK_PPX_IP3(i64 %35)
  %37 = call i32 @cvmx_read_csr(i32 %36)
  br label %38

38:                                               ; preds = %34, %31
  ret void
}

declare dso_local i64 @cvmx_get_core_num(...) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_CIU2_SUM_PPX_IP3(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @fls64(i32) #1

declare dso_local i32 @do_IRQ(i64) #1

declare dso_local i32 @spurious_interrupt(...) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @CVMX_CIU2_ACK_PPX_IP3(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
