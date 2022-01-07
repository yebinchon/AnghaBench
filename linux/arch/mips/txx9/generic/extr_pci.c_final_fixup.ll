; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/txx9/generic/extr_pci.c_final_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/txx9/generic/extr_pci.c_final_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_BIST = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i64 0, align 8
@PCI_BIST_CAPABLE = common dso_local global i8 0, align 1
@PCI_D0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"PCI: %s BIST...\00", align 1
@PCI_BIST_START = common dso_local global i8 0, align 1
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@PCI_BIST_CODE_MASK = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"failed. (0x%x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"OK.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @final_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @final_fixup(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = load i32, i32* @PCI_BIST, align 4
  %7 = call i64 @pci_read_config_byte(%struct.pci_dev* %5, i32 %6, i8* %3)
  %8 = load i64, i64* @PCIBIOS_SUCCESSFUL, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %67

10:                                               ; preds = %1
  %11 = load i8, i8* %3, align 1
  %12 = zext i8 %11 to i32
  %13 = load i8, i8* @PCI_BIST_CAPABLE, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %67

17:                                               ; preds = %10
  %18 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %19 = load i32, i32* @PCI_D0, align 4
  %20 = call i32 @pci_set_power_state(%struct.pci_dev* %18, i32 %19)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %22 = call i32 @pci_name(%struct.pci_dev* %21)
  %23 = call i32 @pr_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %25 = load i32, i32* @PCI_BIST, align 4
  %26 = load i8, i8* @PCI_BIST_START, align 1
  %27 = call i32 @pci_write_config_byte(%struct.pci_dev* %24, i32 %25, i8 zeroext %26)
  %28 = load i32, i32* @jiffies, align 4
  %29 = load i32, i32* @HZ, align 4
  %30 = mul nsw i32 %29, 2
  %31 = add nsw i32 %28, %30
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %4, align 8
  br label %33

33:                                               ; preds = %43, %17
  %34 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %35 = load i32, i32* @PCI_BIST, align 4
  %36 = call i64 @pci_read_config_byte(%struct.pci_dev* %34, i32 %35, i8* %3)
  %37 = load i32, i32* @jiffies, align 4
  %38 = load i64, i64* %4, align 8
  %39 = call i64 @time_after(i32 %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %50

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42
  %44 = load i8, i8* %3, align 1
  %45 = zext i8 %44 to i32
  %46 = load i8, i8* @PCI_BIST_START, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %33, label %50

50:                                               ; preds = %43, %41
  %51 = load i8, i8* %3, align 1
  %52 = zext i8 %51 to i32
  %53 = load i8, i8* @PCI_BIST_CODE_MASK, align 1
  %54 = zext i8 %53 to i32
  %55 = load i8, i8* @PCI_BIST_START, align 1
  %56 = zext i8 %55 to i32
  %57 = or i32 %54, %56
  %58 = and i32 %52, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %50
  %61 = load i8, i8* %3, align 1
  %62 = zext i8 %61 to i32
  %63 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %66

64:                                               ; preds = %50
  %65 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %60
  br label %67

67:                                               ; preds = %66, %10, %1
  ret void
}

declare dso_local i64 @pci_read_config_byte(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i8 zeroext) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
