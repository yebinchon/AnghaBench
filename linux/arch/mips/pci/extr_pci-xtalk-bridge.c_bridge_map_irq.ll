; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-xtalk-bridge.c_bridge_map_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-xtalk-bridge.c_bridge_map_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.bridge_controller = type { i32*, i32, i32 }
%struct.irq_alloc_info = type { i64, i32, %struct.bridge_controller* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i64, i64)* @bridge_map_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bridge_map_irq(%struct.pci_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bridge_controller*, align 8
  %9 = alloca %struct.irq_alloc_info, align 8
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.bridge_controller* @BRIDGE_CONTROLLER(i32 %13)
  store %struct.bridge_controller* %14, %struct.bridge_controller** %8, align 8
  %15 = load %struct.bridge_controller*, %struct.bridge_controller** %8, align 8
  %16 = getelementptr inbounds %struct.bridge_controller, %struct.bridge_controller* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %50

23:                                               ; preds = %3
  %24 = load %struct.bridge_controller*, %struct.bridge_controller** %8, align 8
  %25 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %9, i32 0, i32 2
  store %struct.bridge_controller* %24, %struct.bridge_controller** %25, align 8
  %26 = load %struct.bridge_controller*, %struct.bridge_controller** %8, align 8
  %27 = getelementptr inbounds %struct.bridge_controller, %struct.bridge_controller* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %9, i32 0, i32 1
  store i32 %28, i32* %29, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %9, i32 0, i32 0
  store i64 %30, i64* %31, align 8
  %32 = load %struct.bridge_controller*, %struct.bridge_controller** %8, align 8
  %33 = getelementptr inbounds %struct.bridge_controller, %struct.bridge_controller* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.bridge_controller*, %struct.bridge_controller** %8, align 8
  %36 = getelementptr inbounds %struct.bridge_controller, %struct.bridge_controller* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @irq_domain_alloc_irqs(i32 %34, i32 1, i32 %37, %struct.irq_alloc_info* %9)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %23
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %52

43:                                               ; preds = %23
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.bridge_controller*, %struct.bridge_controller** %8, align 8
  %46 = getelementptr inbounds %struct.bridge_controller, %struct.bridge_controller* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32 %44, i32* %49, align 4
  br label %50

50:                                               ; preds = %43, %3
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %41
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.bridge_controller* @BRIDGE_CONTROLLER(i32) #1

declare dso_local i32 @irq_domain_alloc_irqs(i32, i32, i32, %struct.irq_alloc_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
