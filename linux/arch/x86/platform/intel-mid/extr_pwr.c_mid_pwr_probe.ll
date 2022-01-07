; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/intel-mid/extr_pwr.c_mid_pwr_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/intel-mid/extr_pwr.c_mid_pwr_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mid_pwr.0 = type { i32, i32, i32, i32, %struct.device* }
%struct.device = type { i32 }
%struct.pci_dev = type { i32, %struct.device }
%struct.pci_device_id = type { i64 }
%struct.mid_pwr_device_info = type { i32 (%struct.mid_pwr*)* }
%struct.mid_pwr = type opaque

@.str = private unnamed_addr constant [32 x i8] c"error: could not enable device\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"I/O memory remapping failed\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Can't set initial state: %d\0A\00", align 1
@mid_pwr_irq_handler = common dso_local global i32 0, align 4
@IRQF_NO_SUSPEND = common dso_local global i32 0, align 4
@midpwr = common dso_local global %struct.mid_pwr.0* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @mid_pwr_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mid_pwr_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.mid_pwr_device_info*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.mid_pwr.0*, align 8
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %10 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %11 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.mid_pwr_device_info*
  store %struct.mid_pwr_device_info* %14, %struct.mid_pwr_device_info** %6, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 1
  store %struct.device* %16, %struct.device** %7, align 8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = call i32 @pcim_enable_device(%struct.pci_dev* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 1
  %24 = call i32 @dev_err(%struct.device* %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %3, align 4
  br label %110

26:                                               ; preds = %2
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = call i32 @pci_name(%struct.pci_dev* %28)
  %30 = call i32 @pcim_iomap_regions(%struct.pci_dev* %27, i32 1, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 1
  %36 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %3, align 4
  br label %110

38:                                               ; preds = %26
  %39 = load %struct.device*, %struct.device** %7, align 8
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.mid_pwr.0* @devm_kzalloc(%struct.device* %39, i32 24, i32 %40)
  store %struct.mid_pwr.0* %41, %struct.mid_pwr.0** %8, align 8
  %42 = load %struct.mid_pwr.0*, %struct.mid_pwr.0** %8, align 8
  %43 = icmp ne %struct.mid_pwr.0* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %110

47:                                               ; preds = %38
  %48 = load %struct.device*, %struct.device** %7, align 8
  %49 = load %struct.mid_pwr.0*, %struct.mid_pwr.0** %8, align 8
  %50 = getelementptr inbounds %struct.mid_pwr.0, %struct.mid_pwr.0* %49, i32 0, i32 4
  store %struct.device* %48, %struct.device** %50, align 8
  %51 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %52 = call i32* @pcim_iomap_table(%struct.pci_dev* %51)
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.mid_pwr.0*, %struct.mid_pwr.0** %8, align 8
  %56 = getelementptr inbounds %struct.mid_pwr.0, %struct.mid_pwr.0* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.mid_pwr.0*, %struct.mid_pwr.0** %8, align 8
  %61 = getelementptr inbounds %struct.mid_pwr.0, %struct.mid_pwr.0* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load %struct.mid_pwr.0*, %struct.mid_pwr.0** %8, align 8
  %63 = getelementptr inbounds %struct.mid_pwr.0, %struct.mid_pwr.0* %62, i32 0, i32 1
  %64 = call i32 @mutex_init(i32* %63)
  %65 = load %struct.mid_pwr.0*, %struct.mid_pwr.0** %8, align 8
  %66 = call i32 @mid_pwr_interrupt_disable(%struct.mid_pwr.0* %65)
  %67 = load %struct.mid_pwr_device_info*, %struct.mid_pwr_device_info** %6, align 8
  %68 = icmp ne %struct.mid_pwr_device_info* %67, null
  br i1 %68, label %69, label %88

69:                                               ; preds = %47
  %70 = load %struct.mid_pwr_device_info*, %struct.mid_pwr_device_info** %6, align 8
  %71 = getelementptr inbounds %struct.mid_pwr_device_info, %struct.mid_pwr_device_info* %70, i32 0, i32 0
  %72 = load i32 (%struct.mid_pwr*)*, i32 (%struct.mid_pwr*)** %71, align 8
  %73 = icmp ne i32 (%struct.mid_pwr*)* %72, null
  br i1 %73, label %74, label %88

74:                                               ; preds = %69
  %75 = load %struct.mid_pwr_device_info*, %struct.mid_pwr_device_info** %6, align 8
  %76 = getelementptr inbounds %struct.mid_pwr_device_info, %struct.mid_pwr_device_info* %75, i32 0, i32 0
  %77 = load i32 (%struct.mid_pwr*)*, i32 (%struct.mid_pwr*)** %76, align 8
  %78 = load %struct.mid_pwr.0*, %struct.mid_pwr.0** %8, align 8
  %79 = bitcast %struct.mid_pwr.0* %78 to %struct.mid_pwr*
  %80 = call i32 %77(%struct.mid_pwr* %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %74
  %84 = load %struct.device*, %struct.device** %7, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @dev_warn(%struct.device* %84, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %83, %74
  br label %88

88:                                               ; preds = %87, %69, %47
  %89 = load %struct.device*, %struct.device** %7, align 8
  %90 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %91 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @mid_pwr_irq_handler, align 4
  %94 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %95 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %96 = call i32 @pci_name(%struct.pci_dev* %95)
  %97 = load %struct.mid_pwr.0*, %struct.mid_pwr.0** %8, align 8
  %98 = call i32 @devm_request_irq(%struct.device* %89, i32 %92, i32 %93, i32 %94, i32 %96, %struct.mid_pwr.0* %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %88
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %3, align 4
  br label %110

103:                                              ; preds = %88
  %104 = load %struct.mid_pwr.0*, %struct.mid_pwr.0** %8, align 8
  %105 = getelementptr inbounds %struct.mid_pwr.0, %struct.mid_pwr.0* %104, i32 0, i32 0
  store i32 1, i32* %105, align 8
  %106 = load %struct.mid_pwr.0*, %struct.mid_pwr.0** %8, align 8
  store %struct.mid_pwr.0* %106, %struct.mid_pwr.0** @midpwr, align 8
  %107 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %108 = load %struct.mid_pwr.0*, %struct.mid_pwr.0** %8, align 8
  %109 = call i32 @pci_set_drvdata(%struct.pci_dev* %107, %struct.mid_pwr.0* %108)
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %103, %101, %44, %33, %21
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @pcim_iomap_regions(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local %struct.mid_pwr.0* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32* @pcim_iomap_table(%struct.pci_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mid_pwr_interrupt_disable(%struct.mid_pwr.0*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.mid_pwr.0*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.mid_pwr.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
