; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_ocxl.c_pnv_ocxl_get_actag.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_ocxl.c_pnv_ocxl_get_actag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.npu_link = type { i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@links_list_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"actag information not found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnv_ocxl_get_actag(%struct.pci_dev* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.npu_link*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = call i32 @mutex_lock(i32* @links_list_lock)
  %12 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %13 = call %struct.npu_link* @find_link(%struct.pci_dev* %12)
  store %struct.npu_link* %13, %struct.npu_link** %10, align 8
  %14 = load %struct.npu_link*, %struct.npu_link** %10, align 8
  %15 = icmp ne %struct.npu_link* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %4
  %17 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 1
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @mutex_unlock(i32* @links_list_lock)
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %65

23:                                               ; preds = %4
  %24 = load %struct.npu_link*, %struct.npu_link** %10, align 8
  %25 = getelementptr inbounds %struct.npu_link, %struct.npu_link* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load %struct.npu_link*, %struct.npu_link** %10, align 8
  %30 = call i32 @assign_actags(%struct.npu_link* %29)
  br label %31

31:                                               ; preds = %28, %23
  %32 = load %struct.npu_link*, %struct.npu_link** %10, align 8
  %33 = getelementptr inbounds %struct.npu_link, %struct.npu_link* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @PCI_FUNC(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  %43 = load %struct.npu_link*, %struct.npu_link** %10, align 8
  %44 = getelementptr inbounds %struct.npu_link, %struct.npu_link* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @PCI_FUNC(i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %8, align 8
  store i32 %52, i32* %53, align 4
  %54 = load %struct.npu_link*, %struct.npu_link** %10, align 8
  %55 = getelementptr inbounds %struct.npu_link, %struct.npu_link* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @PCI_FUNC(i32 %59)
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %9, align 8
  store i32 %62, i32* %63, align 4
  %64 = call i32 @mutex_unlock(i32* @links_list_lock)
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %31, %16
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.npu_link* @find_link(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @assign_actags(%struct.npu_link*) #1

declare dso_local i64 @PCI_FUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
