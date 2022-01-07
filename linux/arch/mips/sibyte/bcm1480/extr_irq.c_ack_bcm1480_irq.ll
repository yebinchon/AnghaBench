; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sibyte/bcm1480/extr_irq.c_ack_bcm1480_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sibyte/bcm1480/extr_irq.c_ack_bcm1480_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@BCM1480_NR_IRQS_HALF = common dso_local global i32 0, align 4
@BCM1480_NR_IRQS = common dso_local global i32 0, align 4
@bcm1480_irq_owner = common dso_local global i32* null, align 8
@R_BCM1480_IMR_LDT_INTERRUPT_H = common dso_local global i64 0, align 8
@BCM1480_IMR_HL_SPACING = common dso_local global i32 0, align 4
@R_BCM1480_IMR_LDT_INTERRUPT_CLR_H = common dso_local global i64 0, align 8
@NR_CPUS = common dso_local global i32 0, align 4
@ht_eoi_space = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @ack_bcm1480_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ack_bcm1480_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @BCM1480_NR_IRQS_HALF, align 4
  %13 = icmp uge i32 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @BCM1480_NR_IRQS, align 4
  %17 = icmp ule i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* @BCM1480_NR_IRQS_HALF, align 4
  %20 = load i32, i32* %3, align 4
  %21 = sub i32 %20, %19
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %18, %14, %1
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %59, %22
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %62

26:                                               ; preds = %23
  %27 = load i32*, i32** @bcm1480_irq_owner, align 8
  %28 = load i32, i32* %4, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* @R_BCM1480_IMR_LDT_INTERRUPT_H, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @BCM1480_IMR_HL_SPACING, align 4
  %35 = mul nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %32, %36
  %38 = call i32 @A_BCM1480_IMR_REGISTER(i32 %31, i64 %37)
  %39 = call i32 @IOADDR(i32 %38)
  %40 = call i32 @__raw_readq(i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %3, align 4
  %42 = shl i32 1, %41
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %26
  %48 = load i32, i32* %5, align 4
  %49 = load i64, i64* @R_BCM1480_IMR_LDT_INTERRUPT_CLR_H, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @BCM1480_IMR_HL_SPACING, align 4
  %52 = mul nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %49, %53
  %55 = call i32 @A_BCM1480_IMR_REGISTER(i32 0, i64 %54)
  %56 = call i32 @IOADDR(i32 %55)
  %57 = call i32 @__raw_writeq(i32 %48, i32 %56)
  br label %58

58:                                               ; preds = %47, %26
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %23

62:                                               ; preds = %23
  %63 = load i32*, i32** @bcm1480_irq_owner, align 8
  %64 = load i32, i32* %4, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @bcm1480_mask_irq(i32 %67, i32 %68)
  ret void
}

declare dso_local i32 @__raw_readq(i32) #1

declare dso_local i32 @IOADDR(i32) #1

declare dso_local i32 @A_BCM1480_IMR_REGISTER(i32, i64) #1

declare dso_local i32 @__raw_writeq(i32, i32) #1

declare dso_local i32 @bcm1480_mask_irq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
