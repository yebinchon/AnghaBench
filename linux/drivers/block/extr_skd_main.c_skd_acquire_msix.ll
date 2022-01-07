; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_acquire_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_acquire_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.skd_device = type { i8*, %struct.skd_msix_entry*, %struct.pci_dev* }
%struct.skd_msix_entry = type { i32 }
%struct.pci_dev = type { i32 }

@SKD_MAX_MSIX_COUNT = common dso_local global i32 0, align 4
@PCI_IRQ_MSIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to enable MSI-X %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"msix table allocation error\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"%s%d-msix %s\00", align 1
@DRV_NAME = common dso_local global i8* null, align 8
@msix_entries = common dso_local global %struct.TYPE_2__* null, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"Unable to register(%d) MSI-X handler %d: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"%d msix irq(s) enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skd_device*)* @skd_acquire_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skd_acquire_msix(%struct.skd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.skd_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.skd_msix_entry*, align 8
  store %struct.skd_device* %0, %struct.skd_device** %3, align 8
  %8 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %9 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %8, i32 0, i32 2
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %6, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %12 = load i32, i32* @SKD_MAX_MSIX_COUNT, align 4
  %13 = load i32, i32* @SKD_MAX_MSIX_COUNT, align 4
  %14 = load i32, i32* @PCI_IRQ_MSIX, align 4
  %15 = call i32 @pci_alloc_irq_vectors(%struct.pci_dev* %11, i32 %12, i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %20 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %19, i32 0, i32 2
  %21 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %5, align 4
  %24 = call i32 (i32*, i8*, ...) @dev_err(i32* %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %127

25:                                               ; preds = %1
  %26 = load i32, i32* @SKD_MAX_MSIX_COUNT, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.skd_msix_entry* @kcalloc(i32 %26, i32 4, i32 %27)
  %29 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %30 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %29, i32 0, i32 1
  store %struct.skd_msix_entry* %28, %struct.skd_msix_entry** %30, align 8
  %31 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %32 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %31, i32 0, i32 1
  %33 = load %struct.skd_msix_entry*, %struct.skd_msix_entry** %32, align 8
  %34 = icmp ne %struct.skd_msix_entry* %33, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %25
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  %38 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %39 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %38, i32 0, i32 2
  %40 = load %struct.pci_dev*, %struct.pci_dev** %39, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 0
  %42 = call i32 (i32*, i8*, ...) @dev_err(i32* %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %127

43:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %103, %43
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @SKD_MAX_MSIX_COUNT, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %106

48:                                               ; preds = %44
  %49 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %50 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %49, i32 0, i32 1
  %51 = load %struct.skd_msix_entry*, %struct.skd_msix_entry** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.skd_msix_entry, %struct.skd_msix_entry* %51, i64 %53
  store %struct.skd_msix_entry* %54, %struct.skd_msix_entry** %7, align 8
  %55 = load %struct.skd_msix_entry*, %struct.skd_msix_entry** %7, align 8
  %56 = getelementptr inbounds %struct.skd_msix_entry, %struct.skd_msix_entry* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** @DRV_NAME, align 8
  %59 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %60 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msix_entries, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @snprintf(i32 %57, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %58, i8* %61, i32 %67)
  %69 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %70 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %69, i32 0, i32 2
  %71 = load %struct.pci_dev*, %struct.pci_dev** %70, align 8
  %72 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %71, i32 0, i32 0
  %73 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %74 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %73, i32 0, i32 2
  %75 = load %struct.pci_dev*, %struct.pci_dev** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @pci_irq_vector(%struct.pci_dev* %75, i32 %76)
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msix_entries, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.skd_msix_entry*, %struct.skd_msix_entry** %7, align 8
  %85 = getelementptr inbounds %struct.skd_msix_entry, %struct.skd_msix_entry* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %88 = call i32 @devm_request_irq(i32* %72, i32 %77, i32 %83, i32 0, i32 %86, %struct.skd_device* %87)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %48
  %92 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %93 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %92, i32 0, i32 2
  %94 = load %struct.pci_dev*, %struct.pci_dev** %93, align 8
  %95 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %94, i32 0, i32 0
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %4, align 4
  %98 = load %struct.skd_msix_entry*, %struct.skd_msix_entry** %7, align 8
  %99 = getelementptr inbounds %struct.skd_msix_entry, %struct.skd_msix_entry* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i32*, i8*, ...) @dev_err(i32* %95, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %96, i32 %97, i32 %100)
  br label %113

102:                                              ; preds = %48
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %4, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %4, align 4
  br label %44

106:                                              ; preds = %44
  %107 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %108 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %107, i32 0, i32 2
  %109 = load %struct.pci_dev*, %struct.pci_dev** %108, align 8
  %110 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %109, i32 0, i32 0
  %111 = load i32, i32* @SKD_MAX_MSIX_COUNT, align 4
  %112 = call i32 @dev_dbg(i32* %110, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %111)
  store i32 0, i32* %2, align 4
  br label %135

113:                                              ; preds = %91
  br label %114

114:                                              ; preds = %118, %113
  %115 = load i32, i32* %4, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %4, align 4
  %117 = icmp sge i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %114
  %119 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %120 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %119, i32 0, i32 0
  %121 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %122 = load i32, i32* %4, align 4
  %123 = call i32 @pci_irq_vector(%struct.pci_dev* %121, i32 %122)
  %124 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %125 = call i32 @devm_free_irq(i32* %120, i32 %123, %struct.skd_device* %124)
  br label %114

126:                                              ; preds = %114
  br label %127

127:                                              ; preds = %126, %35, %18
  %128 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %129 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %128, i32 0, i32 1
  %130 = load %struct.skd_msix_entry*, %struct.skd_msix_entry** %129, align 8
  %131 = call i32 @kfree(%struct.skd_msix_entry* %130)
  %132 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %133 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %132, i32 0, i32 1
  store %struct.skd_msix_entry* null, %struct.skd_msix_entry** %133, align 8
  %134 = load i32, i32* %5, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %127, %106
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32 @pci_alloc_irq_vectors(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.skd_msix_entry* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.skd_device*) #1

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @devm_free_irq(i32*, i32, %struct.skd_device*) #1

declare dso_local i32 @kfree(%struct.skd_msix_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
