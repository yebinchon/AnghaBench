; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_i8259.c_i8259_mask_and_ack_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_i8259.c_i8259_mask_and_ack_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@i8259_lock = common dso_local global i32 0, align 4
@cached_A1 = common dso_local global i32 0, align 4
@cached_21 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @i8259_mask_and_ack_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i8259_mask_and_ack_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @raw_spin_lock_irqsave(i32* @i8259_lock, i64 %4)
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp sgt i32 %8, 7
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %12 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %13, 8
  %15 = shl i32 1, %14
  %16 = load i32, i32* @cached_A1, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* @cached_A1, align 4
  %18 = call i32 @inb(i32 161)
  %19 = load i32, i32* @cached_A1, align 4
  %20 = call i32 @outb(i32 %19, i32 161)
  %21 = call i32 @outb(i32 32, i32 160)
  %22 = call i32 @outb(i32 32, i32 32)
  br label %34

23:                                               ; preds = %1
  %24 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %25 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 1, %26
  %28 = load i32, i32* @cached_21, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* @cached_21, align 4
  %30 = call i32 @inb(i32 33)
  %31 = load i32, i32* @cached_21, align 4
  %32 = call i32 @outb(i32 %31, i32 33)
  %33 = call i32 @outb(i32 32, i32 32)
  br label %34

34:                                               ; preds = %23, %10
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @raw_spin_unlock_irqrestore(i32* @i8259_lock, i64 %35)
  ret void
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
