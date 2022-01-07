; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci-common.c_pci_read_irq_line.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci-common.c_pci_read_irq_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"PCI: Try to map irq for %s...\0A\00", align 1
@PCI_INTERRUPT_PIN = common dso_local global i32 0, align 4
@PCI_INTERRUPT_LINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c" No map ! Using line %d (pin %d) from PCI config\0A\00", align 1
@IRQ_TYPE_LEVEL_LOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c" Failed to map !\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c" Mapped to linux irq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @pci_read_irq_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_read_irq_line(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = call i32 @pci_name(%struct.pci_dev* %7)
  %9 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = call i32 @of_irq_parse_and_map_pci(%struct.pci_dev* %10, i32 0, i32 0)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %14, label %49

14:                                               ; preds = %1
  %15 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %16 = load i32, i32* @PCI_INTERRUPT_PIN, align 4
  %17 = call i64 @pci_read_config_byte(%struct.pci_dev* %15, i32 %16, i64* %6)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 -1, i32* %2, align 4
  br label %60

20:                                               ; preds = %14
  %21 = load i64, i64* %6, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 -1, i32* %2, align 4
  br label %60

24:                                               ; preds = %20
  %25 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %26 = load i32, i32* @PCI_INTERRUPT_LINE, align 4
  %27 = call i64 @pci_read_config_byte(%struct.pci_dev* %25, i32 %26, i64* %5)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = load i64, i64* %5, align 8
  %31 = icmp eq i64 %30, 255
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i64, i64* %5, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %29, %24
  store i32 -1, i32* %2, align 4
  br label %60

36:                                               ; preds = %32
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %37, i64 %38)
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @irq_create_mapping(i32* null, i64 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  %47 = call i32 @irq_set_irq_type(i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %36
  br label %49

49:                                               ; preds = %48, %1
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %60

54:                                               ; preds = %49
  %55 = load i32, i32* %4, align 4
  %56 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %54, %52, %35, %23, %19
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @of_irq_parse_and_map_pci(%struct.pci_dev*, i32, i32) #1

declare dso_local i64 @pci_read_config_byte(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @irq_create_mapping(i32*, i64) #1

declare dso_local i32 @irq_set_irq_type(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
