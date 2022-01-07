; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_vm_ioctl_set_irqchip.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_vm_ioctl_set_irqchip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.kvm_pic* }
%struct.kvm_pic = type { i32, i32* }
%struct.kvm_irqchip = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.kvm_irqchip*)* @kvm_vm_ioctl_set_irqchip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_vm_ioctl_set_irqchip(%struct.kvm* %0, %struct.kvm_irqchip* %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.kvm_irqchip*, align 8
  %5 = alloca %struct.kvm_pic*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store %struct.kvm_irqchip* %1, %struct.kvm_irqchip** %4, align 8
  %7 = load %struct.kvm*, %struct.kvm** %3, align 8
  %8 = getelementptr inbounds %struct.kvm, %struct.kvm* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.kvm_pic*, %struct.kvm_pic** %9, align 8
  store %struct.kvm_pic* %10, %struct.kvm_pic** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.kvm_irqchip*, %struct.kvm_irqchip** %4, align 8
  %12 = getelementptr inbounds %struct.kvm_irqchip, %struct.kvm_irqchip* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %50 [
    i32 129, label %14
    i32 128, label %29
    i32 130, label %44
  ]

14:                                               ; preds = %2
  %15 = load %struct.kvm_pic*, %struct.kvm_pic** %5, align 8
  %16 = getelementptr inbounds %struct.kvm_pic, %struct.kvm_pic* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.kvm_pic*, %struct.kvm_pic** %5, align 8
  %19 = getelementptr inbounds %struct.kvm_pic, %struct.kvm_pic* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load %struct.kvm_irqchip*, %struct.kvm_irqchip** %4, align 8
  %23 = getelementptr inbounds %struct.kvm_irqchip, %struct.kvm_irqchip* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = call i32 @memcpy(i32* %21, i32* %24, i32 4)
  %26 = load %struct.kvm_pic*, %struct.kvm_pic** %5, align 8
  %27 = getelementptr inbounds %struct.kvm_pic, %struct.kvm_pic* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock(i32* %27)
  br label %53

29:                                               ; preds = %2
  %30 = load %struct.kvm_pic*, %struct.kvm_pic** %5, align 8
  %31 = getelementptr inbounds %struct.kvm_pic, %struct.kvm_pic* %30, i32 0, i32 0
  %32 = call i32 @spin_lock(i32* %31)
  %33 = load %struct.kvm_pic*, %struct.kvm_pic** %5, align 8
  %34 = getelementptr inbounds %struct.kvm_pic, %struct.kvm_pic* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load %struct.kvm_irqchip*, %struct.kvm_irqchip** %4, align 8
  %38 = getelementptr inbounds %struct.kvm_irqchip, %struct.kvm_irqchip* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = call i32 @memcpy(i32* %36, i32* %39, i32 4)
  %41 = load %struct.kvm_pic*, %struct.kvm_pic** %5, align 8
  %42 = getelementptr inbounds %struct.kvm_pic, %struct.kvm_pic* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock(i32* %42)
  br label %53

44:                                               ; preds = %2
  %45 = load %struct.kvm*, %struct.kvm** %3, align 8
  %46 = load %struct.kvm_irqchip*, %struct.kvm_irqchip** %4, align 8
  %47 = getelementptr inbounds %struct.kvm_irqchip, %struct.kvm_irqchip* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = call i32 @kvm_set_ioapic(%struct.kvm* %45, i32* %48)
  br label %53

50:                                               ; preds = %2
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %50, %44, %29, %14
  %54 = load %struct.kvm_pic*, %struct.kvm_pic** %5, align 8
  %55 = call i32 @kvm_pic_update_irq(%struct.kvm_pic* %54)
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kvm_set_ioapic(%struct.kvm*, i32*) #1

declare dso_local i32 @kvm_pic_update_irq(%struct.kvm_pic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
