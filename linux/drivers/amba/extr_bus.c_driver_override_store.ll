; ModuleID = '/home/carl/AnghaBench/linux/drivers/amba/extr_bus.c_driver_override_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/amba/extr_bus.c_driver_override_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.amba_device = type { i8* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @driver_override_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @driver_override_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.amba_device*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.amba_device* @to_amba_device(%struct.device* %14)
  store %struct.amba_device* %15, %struct.amba_device** %10, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = icmp uge i64 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i64, i64* @EINVAL, align 8
  %23 = sub i64 0, %22
  store i64 %23, i64* %5, align 8
  br label %65

24:                                               ; preds = %4
  %25 = load i8*, i8** %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @kstrndup(i8* %25, i64 %26, i32 %27)
  store i8* %28, i8** %11, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i64, i64* @ENOMEM, align 8
  %33 = sub i64 0, %32
  store i64 %33, i64* %5, align 8
  br label %65

34:                                               ; preds = %24
  %35 = load i8*, i8** %11, align 8
  %36 = call i8* @strchr(i8* %35, i8 signext 10)
  store i8* %36, i8** %13, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i8*, i8** %13, align 8
  store i8 0, i8* %40, align 1
  br label %41

41:                                               ; preds = %39, %34
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = call i32 @device_lock(%struct.device* %42)
  %44 = load %struct.amba_device*, %struct.amba_device** %10, align 8
  %45 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %12, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = call i64 @strlen(i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load i8*, i8** %11, align 8
  %52 = load %struct.amba_device*, %struct.amba_device** %10, align 8
  %53 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  br label %59

54:                                               ; preds = %41
  %55 = load i8*, i8** %11, align 8
  %56 = call i32 @kfree(i8* %55)
  %57 = load %struct.amba_device*, %struct.amba_device** %10, align 8
  %58 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %57, i32 0, i32 0
  store i8* null, i8** %58, align 8
  br label %59

59:                                               ; preds = %54, %50
  %60 = load %struct.device*, %struct.device** %6, align 8
  %61 = call i32 @device_unlock(%struct.device* %60)
  %62 = load i8*, i8** %12, align 8
  %63 = call i32 @kfree(i8* %62)
  %64 = load i64, i64* %9, align 8
  store i64 %64, i64* %5, align 8
  br label %65

65:                                               ; preds = %59, %31, %21
  %66 = load i64, i64* %5, align 8
  ret i64 %66
}

declare dso_local %struct.amba_device* @to_amba_device(%struct.device*) #1

declare dso_local i8* @kstrndup(i8*, i64, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @device_lock(%struct.device*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @device_unlock(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
