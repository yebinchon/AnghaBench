; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_artop.c_atp8xx_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_artop.c_atp8xx_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_LATENCY_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @atp8xx_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atp8xx_fixup(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 5
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = call i32 @pci_write_config_byte(%struct.pci_dev* %9, i32 84, i32 0)
  br label %46

11:                                               ; preds = %1
  %12 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 8
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 9
  br i1 %20, label %21, label %45

21:                                               ; preds = %16, %11
  %22 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %23 = call i32 @pci_read_config_byte(%struct.pci_dev* %22, i32 73, i32* %3)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, -49
  %27 = call i32 @pci_write_config_byte(%struct.pci_dev* %24, i32 73, i32 %26)
  %28 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %29 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %30 = call i32 @pci_read_config_byte(%struct.pci_dev* %28, i32 %29, i32* %3)
  %31 = load i32, i32* %3, align 4
  %32 = icmp sle i32 %31, 128
  br i1 %32, label %33, label %37

33:                                               ; preds = %21
  %34 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %35 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %36 = call i32 @pci_write_config_byte(%struct.pci_dev* %34, i32 %35, i32 144)
  br label %37

37:                                               ; preds = %33, %21
  %38 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %39 = call i32 @pci_read_config_byte(%struct.pci_dev* %38, i32 74, i32* %3)
  %40 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %41 = load i32, i32* %3, align 4
  %42 = and i32 %41, -2
  %43 = or i32 %42, 128
  %44 = call i32 @pci_write_config_byte(%struct.pci_dev* %40, i32 74, i32 %43)
  br label %45

45:                                               ; preds = %37, %16
  br label %46

46:                                               ; preds = %45, %8
  ret void
}

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
