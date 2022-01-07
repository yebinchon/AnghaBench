; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_ioapic.c_kvm_ioapic_set_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_ioapic.c_kvm_ioapic_set_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_ioapic = type { i32, i32* }

@IOAPIC_NUM_PINS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_ioapic_set_irq(%struct.kvm_ioapic* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.kvm_ioapic*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.kvm_ioapic* %0, %struct.kvm_ioapic** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %5
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @IOAPIC_NUM_PINS, align 4
  %18 = icmp sge i32 %16, %17
  br label %19

19:                                               ; preds = %15, %5
  %20 = phi i1 [ true, %5 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %6, align 8
  %24 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %23, i32 0, i32 0
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %6, align 8
  %27 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @__kvm_irq_line_state(i32* %31, i32 %32, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @ioapic_set_irq(%struct.kvm_ioapic* %35, i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %6, align 8
  %41 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock(i32* %41)
  %43 = load i32, i32* %11, align 4
  ret i32 %43
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__kvm_irq_line_state(i32*, i32, i32) #1

declare dso_local i32 @ioapic_set_irq(%struct.kvm_ioapic*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
