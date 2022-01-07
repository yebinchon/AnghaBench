; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sibyte/bcm1480/extr_irq.c_dispatch_ip2.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sibyte/bcm1480/extr_irq.c_dispatch_ip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R_BCM1480_IMR_INTERRUPT_STATUS_BASE_H = common dso_local global i64 0, align 8
@R_BCM1480_IMR_INTERRUPT_STATUS_BASE_L = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dispatch_ip2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispatch_ip2() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = call i32 (...) @smp_processor_id()
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @A_BCM1480_IMR_MAPPER(i32 %6)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @R_BCM1480_IMR_INTERRUPT_STATUS_BASE_H, align 8
  %10 = add i64 %8, %9
  %11 = call i32 @IOADDR(i64 %10)
  %12 = call i64 @__raw_readq(i32 %11)
  store i64 %12, i64* %1, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @R_BCM1480_IMR_INTERRUPT_STATUS_BASE_L, align 8
  %15 = add i64 %13, %14
  %16 = call i32 @IOADDR(i64 %15)
  %17 = call i64 @__raw_readq(i32 %16)
  store i64 %17, i64* %2, align 8
  %18 = load i64, i64* %1, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %0
  %21 = load i64, i64* %1, align 8
  %22 = xor i64 %21, 1
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i64, i64* %1, align 8
  %26 = call i64 @fls64(i64 %25)
  %27 = sub nsw i64 %26, 1
  %28 = call i32 @do_IRQ(i64 %27)
  br label %38

29:                                               ; preds = %20
  %30 = load i64, i64* %2, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i64, i64* %2, align 8
  %34 = call i64 @fls64(i64 %33)
  %35 = add nsw i64 63, %34
  %36 = call i32 @do_IRQ(i64 %35)
  br label %37

37:                                               ; preds = %32, %29
  br label %38

38:                                               ; preds = %37, %24
  br label %39

39:                                               ; preds = %38, %0
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @A_BCM1480_IMR_MAPPER(i32) #1

declare dso_local i64 @__raw_readq(i32) #1

declare dso_local i32 @IOADDR(i64) #1

declare dso_local i32 @do_IRQ(i64) #1

declare dso_local i64 @fls64(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
