; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci.c_zpci_create_device.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci.c_zpci_create_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zpci_dev = type { i64, i32, i32 }

@ZPCI_FN_STATE_CONFIGURED = common dso_local global i64 0, align 8
@zpci_list_lock = common dso_local global i32 0, align 4
@zpci_list = common dso_local global i32 0, align 4
@ZPCI_FN_STATE_ONLINE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpci_create_device(%struct.zpci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zpci_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.zpci_dev* %0, %struct.zpci_dev** %3, align 8
  %5 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %6 = call i32 @zpci_alloc_domain(%struct.zpci_dev* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %62

10:                                               ; preds = %1
  %11 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %12 = call i32 @zpci_init_iommu(%struct.zpci_dev* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %59

16:                                               ; preds = %10
  %17 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %18 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %17, i32 0, i32 2
  %19 = call i32 @mutex_init(i32* %18)
  %20 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %21 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ZPCI_FN_STATE_CONFIGURED, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %16
  %26 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %27 = call i32 @zpci_enable_device(%struct.zpci_dev* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %56

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31, %16
  %33 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %34 = call i32 @zpci_scan_bus(%struct.zpci_dev* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %46

38:                                               ; preds = %32
  %39 = call i32 @spin_lock(i32* @zpci_list_lock)
  %40 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %41 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %40, i32 0, i32 1
  %42 = call i32 @list_add_tail(i32* %41, i32* @zpci_list)
  %43 = call i32 @spin_unlock(i32* @zpci_list_lock)
  %44 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %45 = call i32 @zpci_init_slot(%struct.zpci_dev* %44)
  store i32 0, i32* %2, align 4
  br label %64

46:                                               ; preds = %37
  %47 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %48 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ZPCI_FN_STATE_ONLINE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %54 = call i32 @zpci_disable_device(%struct.zpci_dev* %53)
  br label %55

55:                                               ; preds = %52, %46
  br label %56

56:                                               ; preds = %55, %30
  %57 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %58 = call i32 @zpci_destroy_iommu(%struct.zpci_dev* %57)
  br label %59

59:                                               ; preds = %56, %15
  %60 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %61 = call i32 @zpci_free_domain(%struct.zpci_dev* %60)
  br label %62

62:                                               ; preds = %59, %9
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %38
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @zpci_alloc_domain(%struct.zpci_dev*) #1

declare dso_local i32 @zpci_init_iommu(%struct.zpci_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @zpci_enable_device(%struct.zpci_dev*) #1

declare dso_local i32 @zpci_scan_bus(%struct.zpci_dev*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @zpci_init_slot(%struct.zpci_dev*) #1

declare dso_local i32 @zpci_disable_device(%struct.zpci_dev*) #1

declare dso_local i32 @zpci_destroy_iommu(%struct.zpci_dev*) #1

declare dso_local i32 @zpci_free_domain(%struct.zpci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
