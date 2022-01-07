; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_core.c_device_store_bool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_core.c_device_store_bool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.dev_ext_attribute = type { i32 }

@EINVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @device_store_bool(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dev_ext_attribute*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %12 = call %struct.dev_ext_attribute* @to_ext_attr(%struct.device_attribute* %11)
  store %struct.dev_ext_attribute* %12, %struct.dev_ext_attribute** %10, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load %struct.dev_ext_attribute*, %struct.dev_ext_attribute** %10, align 8
  %15 = getelementptr inbounds %struct.dev_ext_attribute, %struct.dev_ext_attribute* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @strtobool(i8* %13, i32 %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i64, i64* @EINVAL, align 8
  %21 = sub i64 0, %20
  store i64 %21, i64* %5, align 8
  br label %24

22:                                               ; preds = %4
  %23 = load i64, i64* %9, align 8
  store i64 %23, i64* %5, align 8
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i64, i64* %5, align 8
  ret i64 %25
}

declare dso_local %struct.dev_ext_attribute* @to_ext_attr(%struct.device_attribute*) #1

declare dso_local i64 @strtobool(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
