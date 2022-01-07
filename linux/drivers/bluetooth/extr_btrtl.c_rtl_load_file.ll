; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btrtl.c_rtl_load_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btrtl.c_rtl_load_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.firmware = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"loading %s\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, i8*, i32**)* @rtl_load_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_load_file(%struct.hci_dev* %0, i8* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.firmware*, align 8
  %9 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32** %2, i32*** %7, align 8
  %10 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @rtl_dev_info(%struct.hci_dev* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %15 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %14, i32 0, i32 0
  %16 = call i32 @request_firmware(%struct.firmware** %8, i8* %13, i32* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %42

21:                                               ; preds = %3
  %22 = load %struct.firmware*, %struct.firmware** %8, align 8
  %23 = getelementptr inbounds %struct.firmware, %struct.firmware* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load %struct.firmware*, %struct.firmware** %8, align 8
  %26 = getelementptr inbounds %struct.firmware, %struct.firmware* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32* @kmemdup(i32 %27, i32 %28, i32 %29)
  %31 = load i32**, i32*** %7, align 8
  store i32* %30, i32** %31, align 8
  %32 = load i32**, i32*** %7, align 8
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %21
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %35, %21
  %39 = load %struct.firmware*, %struct.firmware** %8, align 8
  %40 = call i32 @release_firmware(%struct.firmware* %39)
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %38, %19
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @rtl_dev_info(%struct.hci_dev*, i8*, i8*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32* @kmemdup(i32, i32, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
