; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sni/extr_rm200.c_sni_rm200_disable_8259A_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sni/extr_rm200.c_sni_rm200_disable_8259A_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@RM200_I8259A_IRQ_BASE = common dso_local global i32 0, align 4
@sni_rm200_i8259A_lock = common dso_local global i32 0, align 4
@rm200_cached_irq_mask = common dso_local global i32 0, align 4
@cached_slave_mask = common dso_local global i32 0, align 4
@rm200_pic_slave = common dso_local global i64 0, align 8
@PIC_IMR = common dso_local global i64 0, align 8
@cached_master_mask = common dso_local global i32 0, align 4
@rm200_pic_master = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @sni_rm200_disable_8259A_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sni_rm200_disable_8259A_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @RM200_I8259A_IRQ_BASE, align 4
  %10 = sub i32 %8, %9
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = shl i32 1, %11
  store i32 %12, i32* %3, align 4
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @raw_spin_lock_irqsave(i32* @sni_rm200_i8259A_lock, i64 %13)
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @rm200_cached_irq_mask, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* @rm200_cached_irq_mask, align 4
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load i32, i32* @cached_slave_mask, align 4
  %23 = load i64, i64* @rm200_pic_slave, align 8
  %24 = load i64, i64* @PIC_IMR, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writeb(i32 %22, i64 %25)
  br label %33

27:                                               ; preds = %1
  %28 = load i32, i32* @cached_master_mask, align 4
  %29 = load i64, i64* @rm200_pic_master, align 8
  %30 = load i64, i64* @PIC_IMR, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writeb(i32 %28, i64 %31)
  br label %33

33:                                               ; preds = %27, %21
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @raw_spin_unlock_irqrestore(i32* @sni_rm200_i8259A_lock, i64 %34)
  ret void
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
