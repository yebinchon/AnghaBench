; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btrtl.c_btrtl_setup_rtl8723b.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btrtl.c_btrtl_setup_rtl8723b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.btrtl_device_info = type { i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cfg_sz %d, total sz %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, %struct.btrtl_device_info*)* @btrtl_setup_rtl8723b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrtl_setup_rtl8723b(%struct.hci_dev* %0, %struct.btrtl_device_info* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.btrtl_device_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.btrtl_device_info* %1, %struct.btrtl_device_info** %4, align 8
  store i8* null, i8** %5, align 8
  %8 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %9 = load %struct.btrtl_device_info*, %struct.btrtl_device_info** %4, align 8
  %10 = call i32 @rtlbt_parse_firmware(%struct.hci_dev* %8, %struct.btrtl_device_info* %9, i8** %5)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %67

14:                                               ; preds = %2
  %15 = load %struct.btrtl_device_info*, %struct.btrtl_device_info** %4, align 8
  %16 = getelementptr inbounds %struct.btrtl_device_info, %struct.btrtl_device_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %56

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.btrtl_device_info*, %struct.btrtl_device_info** %4, align 8
  %22 = getelementptr inbounds %struct.btrtl_device_info, %struct.btrtl_device_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %20, %23
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @kzalloc(i32 %24, i32 %25)
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %19
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %67

32:                                               ; preds = %19
  %33 = load i8*, i8** %7, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @memcpy(i8* %33, i8* %34, i32 %35)
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @kfree(i8* %37)
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load %struct.btrtl_device_info*, %struct.btrtl_device_info** %4, align 8
  %44 = getelementptr inbounds %struct.btrtl_device_info, %struct.btrtl_device_info* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.btrtl_device_info*, %struct.btrtl_device_info** %4, align 8
  %47 = getelementptr inbounds %struct.btrtl_device_info, %struct.btrtl_device_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @memcpy(i8* %42, i8* %45, i32 %48)
  %50 = load %struct.btrtl_device_info*, %struct.btrtl_device_info** %4, align 8
  %51 = getelementptr inbounds %struct.btrtl_device_info, %struct.btrtl_device_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %6, align 4
  %55 = load i8*, i8** %7, align 8
  store i8* %55, i8** %5, align 8
  br label %56

56:                                               ; preds = %32, %14
  %57 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %58 = load %struct.btrtl_device_info*, %struct.btrtl_device_info** %4, align 8
  %59 = getelementptr inbounds %struct.btrtl_device_info, %struct.btrtl_device_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @rtl_dev_info(%struct.hci_dev* %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61)
  %63 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @rtl_download_firmware(%struct.hci_dev* %63, i8* %64, i32 %65)
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %56, %29, %13
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @kfree(i8* %68)
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @rtlbt_parse_firmware(%struct.hci_dev*, %struct.btrtl_device_info*, i8**) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @rtl_dev_info(%struct.hci_dev*, i8*, i32, i32) #1

declare dso_local i32 @rtl_download_firmware(%struct.hci_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
