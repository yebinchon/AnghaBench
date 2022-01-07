; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq-nforce2.c_nforce2_detect_chipset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq-nforce2.c_nforce2_detect_chipset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@PCI_VENDOR_ID_NVIDIA = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_NVIDIA_NFORCE2 = common dso_local global i32 0, align 4
@PCI_ANY_ID = common dso_local global i32 0, align 4
@nforce2_dev = common dso_local global %struct.TYPE_3__* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Detected nForce2 chipset revision %X\0A\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"FSB changing is maybe unstable and can lead to crashes and data loss\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @nforce2_detect_chipset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nforce2_detect_chipset() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @PCI_VENDOR_ID_NVIDIA, align 4
  %3 = load i32, i32* @PCI_DEVICE_ID_NVIDIA_NFORCE2, align 4
  %4 = load i32, i32* @PCI_ANY_ID, align 4
  %5 = load i32, i32* @PCI_ANY_ID, align 4
  %6 = call %struct.TYPE_3__* @pci_get_subsys(i32 %2, i32 %3, i32 %4, i32 %5, i32* null)
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** @nforce2_dev, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nforce2_dev, align 8
  %8 = icmp eq %struct.TYPE_3__* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %1, align 4
  br label %18

12:                                               ; preds = %0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nforce2_dev, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %18

18:                                               ; preds = %12, %9
  %19 = load i32, i32* %1, align 4
  ret i32 %19
}

declare dso_local %struct.TYPE_3__* @pci_get_subsys(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @pr_info(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
