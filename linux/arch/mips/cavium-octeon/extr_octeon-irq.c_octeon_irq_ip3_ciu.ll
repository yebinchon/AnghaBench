; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_ip3_ciu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_ip3_ciu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CVMX_CIU_INT_SUM1 = common dso_local global i32 0, align 4
@octeon_irq_ciu1_en_mirror = common dso_local global i32 0, align 4
@octeon_irq_ciu_to_irq = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @octeon_irq_ip3_ciu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_irq_ip3_ciu() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @CVMX_CIU_INT_SUM1, align 4
  %5 = call i32 @cvmx_read_csr(i32 %4)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* @octeon_irq_ciu1_en_mirror, align 4
  %7 = call i32 @__this_cpu_read(i32 %6)
  %8 = load i32, i32* %1, align 4
  %9 = and i32 %8, %7
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = call i64 @likely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %0
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @fls64(i32 %14)
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %2, align 4
  %17 = load i32**, i32*** @octeon_irq_ciu_to_irq, align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i64 @likely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %13
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @do_IRQ(i32 %28)
  br label %32

30:                                               ; preds = %13
  %31 = call i32 (...) @spurious_interrupt()
  br label %32

32:                                               ; preds = %30, %27
  br label %35

33:                                               ; preds = %0
  %34 = call i32 (...) @spurious_interrupt()
  br label %35

35:                                               ; preds = %33, %32
  ret void
}

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @__this_cpu_read(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @fls64(i32) #1

declare dso_local i32 @do_IRQ(i32) #1

declare dso_local i32 @spurious_interrupt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
