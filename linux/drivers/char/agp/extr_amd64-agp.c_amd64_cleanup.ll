; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_amd64-agp.c_amd64_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_amd64-agp.c_amd64_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.TYPE_2__ = type { %struct.pci_dev* }

@AMD_NB_GART = common dso_local global i32 0, align 4
@AMD64_GARTAPERTURECTL = common dso_local global i32 0, align 4
@GARTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @amd64_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd64_cleanup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = load i32, i32* @AMD_NB_GART, align 4
  %5 = call i32 @amd_nb_has_feature(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  br label %32

8:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  br label %9

9:                                                ; preds = %29, %8
  %10 = load i32, i32* %2, align 4
  %11 = call i32 (...) @amd_nb_num()
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %9
  %14 = load i32, i32* %2, align 4
  %15 = call %struct.TYPE_2__* @node_to_amd_nb(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  store %struct.pci_dev* %17, %struct.pci_dev** %3, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = load i32, i32* @AMD64_GARTAPERTURECTL, align 4
  %20 = call i32 @pci_read_config_dword(%struct.pci_dev* %18, i32 %19, i32* %1)
  %21 = load i32, i32* @GARTEN, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %1, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %1, align 4
  %25 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %26 = load i32, i32* @AMD64_GARTAPERTURECTL, align 4
  %27 = load i32, i32* %1, align 4
  %28 = call i32 @pci_write_config_dword(%struct.pci_dev* %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %13
  %30 = load i32, i32* %2, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %2, align 4
  br label %9

32:                                               ; preds = %7, %9
  ret void
}

declare dso_local i32 @amd_nb_has_feature(i32) #1

declare dso_local i32 @amd_nb_num(...) #1

declare dso_local %struct.TYPE_2__* @node_to_amd_nb(i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
