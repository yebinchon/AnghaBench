; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_idt77252_preset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_idt77252_preset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt77252_dev = type { i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"%s: Enable PCI master and memory access for SAR.\0A\00", align 1
@PCI_COMMAND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"%s: can't read PCI_COMMAND.\0A\00", align 1
@PCI_COMMAND_IO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"%s: PCI_COMMAND: %04x (???)\0A\00", align 1
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@PCI_COMMAND_MASTER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"%s: can't write PCI_COMMAND.\0A\00", align 1
@SAR_CFG_SWRST = common dso_local global i32 0, align 4
@SAR_REG_CFG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"%s: Software resetted.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idt77252_dev*)* @idt77252_preset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idt77252_preset(%struct.idt77252_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.idt77252_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.idt77252_dev* %0, %struct.idt77252_dev** %3, align 8
  %5 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %6 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @XPRINTK(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %10 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @PCI_COMMAND, align 4
  %13 = call i64 @pci_read_config_word(i32 %11, i32 %12, i32* %4)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %17 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %21 = call i32 @deinit_card(%struct.idt77252_dev* %20)
  store i32 -1, i32* %2, align 4
  br label %66

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @PCI_COMMAND_IO, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %22
  %28 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %29 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %34 = call i32 @deinit_card(%struct.idt77252_dev* %33)
  store i32 -1, i32* %2, align 4
  br label %66

35:                                               ; preds = %22
  %36 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %37 = load i32, i32* @PCI_COMMAND_MASTER, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  %41 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %42 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PCI_COMMAND, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i64 @pci_write_config_word(i32 %43, i32 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %35
  %49 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %50 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  %53 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %54 = call i32 @deinit_card(%struct.idt77252_dev* %53)
  store i32 -1, i32* %2, align 4
  br label %66

55:                                               ; preds = %35
  %56 = load i32, i32* @SAR_CFG_SWRST, align 4
  %57 = load i32, i32* @SAR_REG_CFG, align 4
  %58 = call i32 @writel(i32 %56, i32 %57)
  %59 = call i32 @mdelay(i32 1)
  %60 = load i32, i32* @SAR_REG_CFG, align 4
  %61 = call i32 @writel(i32 0, i32 %60)
  %62 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %63 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @IPRINTK(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %55, %48, %27, %15
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @XPRINTK(i8*, i32) #1

declare dso_local i64 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @deinit_card(%struct.idt77252_dev*) #1

declare dso_local i64 @pci_write_config_word(i32, i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @IPRINTK(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
