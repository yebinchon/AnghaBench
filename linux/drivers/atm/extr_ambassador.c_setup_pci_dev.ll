; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_ambassador.c_setup_pci_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_ambassador.c_setup_pci_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_LATENCY_TIMER = common dso_local global i32 0, align 4
@pci_lat = common dso_local global i8 0, align 1
@MIN_PCI_LATENCY = common dso_local global i8 0, align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Changing PCI latency timer from %hu to %hu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @setup_pci_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_pci_dev(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i8, align 1
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call i32 @pci_set_master(%struct.pci_dev* %4)
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %8 = call i32 @pci_read_config_byte(%struct.pci_dev* %6, i32 %7, i8* %3)
  %9 = load i8, i8* @pci_lat, align 1
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %1
  %12 = load i8, i8* %3, align 1
  %13 = zext i8 %12 to i32
  %14 = load i8, i8* @MIN_PCI_LATENCY, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i8, i8* @MIN_PCI_LATENCY, align 1
  %19 = zext i8 %18 to i32
  br label %23

20:                                               ; preds = %11
  %21 = load i8, i8* %3, align 1
  %22 = zext i8 %21 to i32
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i32 [ %19, %17 ], [ %22, %20 ]
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* @pci_lat, align 1
  br label %26

26:                                               ; preds = %23, %1
  %27 = load i8, i8* %3, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* @pci_lat, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load i32, i32* @KERN_INFO, align 4
  %34 = load i8, i8* %3, align 1
  %35 = load i8, i8* @pci_lat, align 1
  %36 = call i32 @PRINTK(i32 %33, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8 zeroext %34, i8 zeroext %35)
  %37 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %38 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %39 = load i8, i8* @pci_lat, align 1
  %40 = call i32 @pci_write_config_byte(%struct.pci_dev* %37, i32 %38, i8 zeroext %39)
  br label %41

41:                                               ; preds = %32, %26
  ret void
}

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @PRINTK(i32, i8*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
