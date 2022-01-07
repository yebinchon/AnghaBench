; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_ipmi_get_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_ipmi_get_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_user = type { i32 }
%struct.ipmi_device_id = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipmi_get_version(%struct.ipmi_user* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipmi_user*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ipmi_device_id, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ipmi_user* %0, %struct.ipmi_user** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.ipmi_user*, %struct.ipmi_user** %5, align 8
  %12 = call %struct.ipmi_user* @acquire_ipmi_user(%struct.ipmi_user* %11, i32* %10)
  store %struct.ipmi_user* %12, %struct.ipmi_user** %5, align 8
  %13 = load %struct.ipmi_user*, %struct.ipmi_user** %5, align 8
  %14 = icmp ne %struct.ipmi_user* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %35

18:                                               ; preds = %3
  %19 = load %struct.ipmi_user*, %struct.ipmi_user** %5, align 8
  %20 = getelementptr inbounds %struct.ipmi_user, %struct.ipmi_user* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @bmc_get_device_id(i32 %21, i32* null, %struct.ipmi_device_id* %8, i32* null, i32* null)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = call zeroext i8 @ipmi_version_major(%struct.ipmi_device_id* %8)
  %27 = load i8*, i8** %6, align 8
  store i8 %26, i8* %27, align 1
  %28 = call zeroext i8 @ipmi_version_minor(%struct.ipmi_device_id* %8)
  %29 = load i8*, i8** %7, align 8
  store i8 %28, i8* %29, align 1
  br label %30

30:                                               ; preds = %25, %18
  %31 = load %struct.ipmi_user*, %struct.ipmi_user** %5, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @release_ipmi_user(%struct.ipmi_user* %31, i32 %32)
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %30, %15
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.ipmi_user* @acquire_ipmi_user(%struct.ipmi_user*, i32*) #1

declare dso_local i32 @bmc_get_device_id(i32, i32*, %struct.ipmi_device_id*, i32*, i32*) #1

declare dso_local zeroext i8 @ipmi_version_major(%struct.ipmi_device_id*) #1

declare dso_local zeroext i8 @ipmi_version_minor(%struct.ipmi_device_id*) #1

declare dso_local i32 @release_ipmi_user(%struct.ipmi_user*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
