; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_vm_ioctl_get_irqchip.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_vm_ioctl_get_irqchip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.kvm_pic* }
%struct.kvm_pic = type { i32* }
%struct.kvm_irqchip = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.kvm_irqchip*)* @kvm_vm_ioctl_get_irqchip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_vm_ioctl_get_irqchip(%struct.kvm* %0, %struct.kvm_irqchip* %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.kvm_irqchip*, align 8
  %5 = alloca %struct.kvm_pic*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store %struct.kvm_irqchip* %1, %struct.kvm_irqchip** %4, align 8
  %7 = load %struct.kvm*, %struct.kvm** %3, align 8
  %8 = getelementptr inbounds %struct.kvm, %struct.kvm* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.kvm_pic*, %struct.kvm_pic** %9, align 8
  store %struct.kvm_pic* %10, %struct.kvm_pic** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.kvm_irqchip*, %struct.kvm_irqchip** %4, align 8
  %12 = getelementptr inbounds %struct.kvm_irqchip, %struct.kvm_irqchip* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %38 [
    i32 129, label %14
    i32 128, label %23
    i32 130, label %32
  ]

14:                                               ; preds = %2
  %15 = load %struct.kvm_irqchip*, %struct.kvm_irqchip** %4, align 8
  %16 = getelementptr inbounds %struct.kvm_irqchip, %struct.kvm_irqchip* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load %struct.kvm_pic*, %struct.kvm_pic** %5, align 8
  %19 = getelementptr inbounds %struct.kvm_pic, %struct.kvm_pic* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = call i32 @memcpy(i32* %17, i32* %21, i32 4)
  br label %41

23:                                               ; preds = %2
  %24 = load %struct.kvm_irqchip*, %struct.kvm_irqchip** %4, align 8
  %25 = getelementptr inbounds %struct.kvm_irqchip, %struct.kvm_irqchip* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load %struct.kvm_pic*, %struct.kvm_pic** %5, align 8
  %28 = getelementptr inbounds %struct.kvm_pic, %struct.kvm_pic* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = call i32 @memcpy(i32* %26, i32* %30, i32 4)
  br label %41

32:                                               ; preds = %2
  %33 = load %struct.kvm*, %struct.kvm** %3, align 8
  %34 = load %struct.kvm_irqchip*, %struct.kvm_irqchip** %4, align 8
  %35 = getelementptr inbounds %struct.kvm_irqchip, %struct.kvm_irqchip* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = call i32 @kvm_get_ioapic(%struct.kvm* %33, i32* %36)
  br label %41

38:                                               ; preds = %2
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %38, %32, %23, %14
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kvm_get_ioapic(%struct.kvm*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
