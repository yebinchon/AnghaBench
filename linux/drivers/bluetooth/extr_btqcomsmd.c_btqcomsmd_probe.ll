; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btqcomsmd.c_btqcomsmd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btqcomsmd.c_btqcomsmd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.btqcomsmd = type { %struct.hci_dev*, i8*, i8* }
%struct.hci_dev = type { i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"APPS_RIVA_BT_ACL\00", align 1
@btqcomsmd_acl_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"APPS_RIVA_BT_CMD\00", align 1
@btqcomsmd_cmd_callback = common dso_local global i32 0, align 4
@HCI_SMD = common dso_local global i32 0, align 4
@btqcomsmd_open = common dso_local global i32 0, align 4
@btqcomsmd_close = common dso_local global i32 0, align 4
@btqcomsmd_send = common dso_local global i32 0, align 4
@btqcomsmd_setup = common dso_local global i32 0, align 4
@qca_set_bdaddr_rome = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @btqcomsmd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btqcomsmd_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.btqcomsmd*, align 8
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.btqcomsmd* @devm_kzalloc(%struct.TYPE_3__* %9, i32 24, i32 %10)
  store %struct.btqcomsmd* %11, %struct.btqcomsmd** %4, align 8
  %12 = load %struct.btqcomsmd*, %struct.btqcomsmd** %4, align 8
  %13 = icmp ne %struct.btqcomsmd* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %104

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @dev_get_drvdata(i32 %21)
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* @btqcomsmd_acl_callback, align 4
  %25 = load %struct.btqcomsmd*, %struct.btqcomsmd** %4, align 8
  %26 = call i8* @qcom_wcnss_open_channel(i8* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %24, %struct.btqcomsmd* %25)
  %27 = load %struct.btqcomsmd*, %struct.btqcomsmd** %4, align 8
  %28 = getelementptr inbounds %struct.btqcomsmd, %struct.btqcomsmd* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load %struct.btqcomsmd*, %struct.btqcomsmd** %4, align 8
  %30 = getelementptr inbounds %struct.btqcomsmd, %struct.btqcomsmd* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @IS_ERR(i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %17
  %35 = load %struct.btqcomsmd*, %struct.btqcomsmd** %4, align 8
  %36 = getelementptr inbounds %struct.btqcomsmd, %struct.btqcomsmd* %35, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @PTR_ERR(i8* %37)
  store i32 %38, i32* %2, align 4
  br label %104

39:                                               ; preds = %17
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* @btqcomsmd_cmd_callback, align 4
  %42 = load %struct.btqcomsmd*, %struct.btqcomsmd** %4, align 8
  %43 = call i8* @qcom_wcnss_open_channel(i8* %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %41, %struct.btqcomsmd* %42)
  %44 = load %struct.btqcomsmd*, %struct.btqcomsmd** %4, align 8
  %45 = getelementptr inbounds %struct.btqcomsmd, %struct.btqcomsmd* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.btqcomsmd*, %struct.btqcomsmd** %4, align 8
  %47 = getelementptr inbounds %struct.btqcomsmd, %struct.btqcomsmd* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @IS_ERR(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %39
  %52 = load %struct.btqcomsmd*, %struct.btqcomsmd** %4, align 8
  %53 = getelementptr inbounds %struct.btqcomsmd, %struct.btqcomsmd* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @PTR_ERR(i8* %54)
  store i32 %55, i32* %2, align 4
  br label %104

56:                                               ; preds = %39
  %57 = call %struct.hci_dev* (...) @hci_alloc_dev()
  store %struct.hci_dev* %57, %struct.hci_dev** %5, align 8
  %58 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %59 = icmp ne %struct.hci_dev* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %104

63:                                               ; preds = %56
  %64 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %65 = load %struct.btqcomsmd*, %struct.btqcomsmd** %4, align 8
  %66 = call i32 @hci_set_drvdata(%struct.hci_dev* %64, %struct.btqcomsmd* %65)
  %67 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %68 = load %struct.btqcomsmd*, %struct.btqcomsmd** %4, align 8
  %69 = getelementptr inbounds %struct.btqcomsmd, %struct.btqcomsmd* %68, i32 0, i32 0
  store %struct.hci_dev* %67, %struct.hci_dev** %69, align 8
  %70 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = call i32 @SET_HCIDEV_DEV(%struct.hci_dev* %70, %struct.TYPE_3__* %72)
  %74 = load i32, i32* @HCI_SMD, align 4
  %75 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %76 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @btqcomsmd_open, align 4
  %78 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %79 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @btqcomsmd_close, align 4
  %81 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %82 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @btqcomsmd_send, align 4
  %84 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %85 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @btqcomsmd_setup, align 4
  %87 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %88 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* @qca_set_bdaddr_rome, align 4
  %90 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %91 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  %92 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %93 = call i32 @hci_register_dev(%struct.hci_dev* %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %63
  %97 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %98 = call i32 @hci_free_dev(%struct.hci_dev* %97)
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %2, align 4
  br label %104

100:                                              ; preds = %63
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = load %struct.btqcomsmd*, %struct.btqcomsmd** %4, align 8
  %103 = call i32 @platform_set_drvdata(%struct.platform_device* %101, %struct.btqcomsmd* %102)
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %100, %96, %60, %51, %34, %14
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.btqcomsmd* @devm_kzalloc(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i8* @dev_get_drvdata(i32) #1

declare dso_local i8* @qcom_wcnss_open_channel(i8*, i8*, i32, %struct.btqcomsmd*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local %struct.hci_dev* @hci_alloc_dev(...) #1

declare dso_local i32 @hci_set_drvdata(%struct.hci_dev*, %struct.btqcomsmd*) #1

declare dso_local i32 @SET_HCIDEV_DEV(%struct.hci_dev*, %struct.TYPE_3__*) #1

declare dso_local i32 @hci_register_dev(%struct.hci_dev*) #1

declare dso_local i32 @hci_free_dev(%struct.hci_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.btqcomsmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
