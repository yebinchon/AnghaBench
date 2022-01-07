; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-rt3883.c_rt3883_pci_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-rt3883.c_rt3883_pci_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rt3883_pci_controller = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"%pOF has no IRQ\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RT3883_PCI_REG_PCIENA = common dso_local global i32 0, align 4
@RT3883_PCI_IRQ_COUNT = common dso_local global i32 0, align 4
@rt3883_pci_irq_domain_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"unable to add IRQ domain\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@rt3883_pci_irq_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rt3883_pci_controller*)* @rt3883_pci_irq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt3883_pci_irq_init(%struct.device* %0, %struct.rt3883_pci_controller* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rt3883_pci_controller*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rt3883_pci_controller* %1, %struct.rt3883_pci_controller** %5, align 8
  %7 = load %struct.rt3883_pci_controller*, %struct.rt3883_pci_controller** %5, align 8
  %8 = getelementptr inbounds %struct.rt3883_pci_controller, %struct.rt3883_pci_controller* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @irq_of_parse_and_map(i32 %9, i32 0)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = load %struct.rt3883_pci_controller*, %struct.rt3883_pci_controller** %5, align 8
  %16 = getelementptr inbounds %struct.rt3883_pci_controller, %struct.rt3883_pci_controller* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %47

21:                                               ; preds = %2
  %22 = load %struct.rt3883_pci_controller*, %struct.rt3883_pci_controller** %5, align 8
  %23 = load i32, i32* @RT3883_PCI_REG_PCIENA, align 4
  %24 = call i32 @rt3883_pci_w32(%struct.rt3883_pci_controller* %22, i32 0, i32 %23)
  %25 = load %struct.rt3883_pci_controller*, %struct.rt3883_pci_controller** %5, align 8
  %26 = getelementptr inbounds %struct.rt3883_pci_controller, %struct.rt3883_pci_controller* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @RT3883_PCI_IRQ_COUNT, align 4
  %29 = load %struct.rt3883_pci_controller*, %struct.rt3883_pci_controller** %5, align 8
  %30 = call i32 @irq_domain_add_linear(i32 %27, i32 %28, i32* @rt3883_pci_irq_domain_ops, %struct.rt3883_pci_controller* %29)
  %31 = load %struct.rt3883_pci_controller*, %struct.rt3883_pci_controller** %5, align 8
  %32 = getelementptr inbounds %struct.rt3883_pci_controller, %struct.rt3883_pci_controller* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.rt3883_pci_controller*, %struct.rt3883_pci_controller** %5, align 8
  %34 = getelementptr inbounds %struct.rt3883_pci_controller, %struct.rt3883_pci_controller* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %21
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %47

42:                                               ; preds = %21
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @rt3883_pci_irq_handler, align 4
  %45 = load %struct.rt3883_pci_controller*, %struct.rt3883_pci_controller** %5, align 8
  %46 = call i32 @irq_set_chained_handler_and_data(i32 %43, i32 %44, %struct.rt3883_pci_controller* %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %42, %37, %13
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @irq_of_parse_and_map(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @rt3883_pci_w32(%struct.rt3883_pci_controller*, i32, i32) #1

declare dso_local i32 @irq_domain_add_linear(i32, i32, i32*, %struct.rt3883_pci_controller*) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i32, i32, %struct.rt3883_pci_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
