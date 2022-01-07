; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_i8259.c_init_8259A.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_i8259.c_init_8259A.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@i8259A_auto_eoi = common dso_local global i32 0, align 4
@i8259A_lock = common dso_local global i32 0, align 4
@PIC_MASTER_IMR = common dso_local global i32 0, align 4
@PIC_MASTER_CMD = common dso_local global i32 0, align 4
@PIC_CASCADE_IR = common dso_local global i32 0, align 4
@MASTER_ICW4_DEFAULT = common dso_local global i32 0, align 4
@PIC_ICW4_AEOI = common dso_local global i32 0, align 4
@PIC_SLAVE_CMD = common dso_local global i32 0, align 4
@PIC_SLAVE_IMR = common dso_local global i32 0, align 4
@SLAVE_ICW4_DEFAULT = common dso_local global i32 0, align 4
@disable_8259A_irq = common dso_local global i32 0, align 4
@i8259A_chip = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@mask_and_ack_8259A = common dso_local global i32 0, align 4
@cached_master_mask = common dso_local global i32 0, align 4
@cached_slave_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @init_8259A to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_8259A(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  store i32 %4, i32* @i8259A_auto_eoi, align 4
  %5 = load i64, i64* %3, align 8
  %6 = call i32 @raw_spin_lock_irqsave(i32* @i8259A_lock, i64 %5)
  %7 = load i32, i32* @PIC_MASTER_IMR, align 4
  %8 = call i32 @outb(i32 255, i32 %7)
  %9 = load i32, i32* @PIC_MASTER_CMD, align 4
  %10 = call i32 @outb_pic(i32 17, i32 %9)
  %11 = call i32 @ISA_IRQ_VECTOR(i32 0)
  %12 = load i32, i32* @PIC_MASTER_IMR, align 4
  %13 = call i32 @outb_pic(i32 %11, i32 %12)
  %14 = load i32, i32* @PIC_CASCADE_IR, align 4
  %15 = shl i32 1, %14
  %16 = load i32, i32* @PIC_MASTER_IMR, align 4
  %17 = call i32 @outb_pic(i32 %15, i32 %16)
  %18 = load i32, i32* %2, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load i32, i32* @MASTER_ICW4_DEFAULT, align 4
  %22 = load i32, i32* @PIC_ICW4_AEOI, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @PIC_MASTER_IMR, align 4
  %25 = call i32 @outb_pic(i32 %23, i32 %24)
  br label %30

26:                                               ; preds = %1
  %27 = load i32, i32* @MASTER_ICW4_DEFAULT, align 4
  %28 = load i32, i32* @PIC_MASTER_IMR, align 4
  %29 = call i32 @outb_pic(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %20
  %31 = load i32, i32* @PIC_SLAVE_CMD, align 4
  %32 = call i32 @outb_pic(i32 17, i32 %31)
  %33 = call i32 @ISA_IRQ_VECTOR(i32 8)
  %34 = load i32, i32* @PIC_SLAVE_IMR, align 4
  %35 = call i32 @outb_pic(i32 %33, i32 %34)
  %36 = load i32, i32* @PIC_CASCADE_IR, align 4
  %37 = load i32, i32* @PIC_SLAVE_IMR, align 4
  %38 = call i32 @outb_pic(i32 %36, i32 %37)
  %39 = load i32, i32* @SLAVE_ICW4_DEFAULT, align 4
  %40 = load i32, i32* @PIC_SLAVE_IMR, align 4
  %41 = call i32 @outb_pic(i32 %39, i32 %40)
  %42 = load i32, i32* %2, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %30
  %45 = load i32, i32* @disable_8259A_irq, align 4
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i8259A_chip, i32 0, i32 0), align 4
  br label %48

46:                                               ; preds = %30
  %47 = load i32, i32* @mask_and_ack_8259A, align 4
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i8259A_chip, i32 0, i32 0), align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = call i32 @udelay(i32 100)
  %50 = load i32, i32* @cached_master_mask, align 4
  %51 = load i32, i32* @PIC_MASTER_IMR, align 4
  %52 = call i32 @outb(i32 %50, i32 %51)
  %53 = load i32, i32* @cached_slave_mask, align 4
  %54 = load i32, i32* @PIC_SLAVE_IMR, align 4
  %55 = call i32 @outb(i32 %53, i32 %54)
  %56 = load i64, i64* %3, align 8
  %57 = call i32 @raw_spin_unlock_irqrestore(i32* @i8259A_lock, i64 %56)
  ret void
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @outb_pic(i32, i32) #1

declare dso_local i32 @ISA_IRQ_VECTOR(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
