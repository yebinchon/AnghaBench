; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_xsysace.c_ace_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_xsysace.c_ace_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ace_device = type { i32, i32, i32, i64, %struct.device* }

@.str = private unnamed_addr constant [15 x i8] c"ace_alloc(%p)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"could not initialize device, err=%i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i64, i32, i32)* @ace_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ace_alloc(%struct.device* %0, i32 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ace_device*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.device*, %struct.device** %7, align 8
  %15 = load %struct.device*, %struct.device** %7, align 8
  %16 = call i32 @dev_dbg(%struct.device* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.device* %15)
  %17 = load i64, i64* %9, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %13, align 4
  br label %61

22:                                               ; preds = %5
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.ace_device* @kzalloc(i32 32, i32 %23)
  store %struct.ace_device* %24, %struct.ace_device** %12, align 8
  %25 = load %struct.ace_device*, %struct.ace_device** %12, align 8
  %26 = icmp ne %struct.ace_device* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %13, align 4
  br label %60

30:                                               ; preds = %22
  %31 = load %struct.device*, %struct.device** %7, align 8
  %32 = load %struct.ace_device*, %struct.ace_device** %12, align 8
  %33 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %32, i32 0, i32 4
  store %struct.device* %31, %struct.device** %33, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.ace_device*, %struct.ace_device** %12, align 8
  %36 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.ace_device*, %struct.ace_device** %12, align 8
  %39 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %38, i32 0, i32 3
  store i64 %37, i64* %39, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.ace_device*, %struct.ace_device** %12, align 8
  %42 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.ace_device*, %struct.ace_device** %12, align 8
  %45 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.ace_device*, %struct.ace_device** %12, align 8
  %47 = call i32 @ace_setup(%struct.ace_device* %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %30
  br label %55

51:                                               ; preds = %30
  %52 = load %struct.device*, %struct.device** %7, align 8
  %53 = load %struct.ace_device*, %struct.ace_device** %12, align 8
  %54 = call i32 @dev_set_drvdata(%struct.device* %52, %struct.ace_device* %53)
  store i32 0, i32* %6, align 4
  br label %66

55:                                               ; preds = %50
  %56 = load %struct.device*, %struct.device** %7, align 8
  %57 = call i32 @dev_set_drvdata(%struct.device* %56, %struct.ace_device* null)
  %58 = load %struct.ace_device*, %struct.ace_device** %12, align 8
  %59 = call i32 @kfree(%struct.ace_device* %58)
  br label %60

60:                                               ; preds = %55, %27
  br label %61

61:                                               ; preds = %60, %19
  %62 = load %struct.device*, %struct.device** %7, align 8
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @dev_err(%struct.device* %62, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %61, %51
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, %struct.device*) #1

declare dso_local %struct.ace_device* @kzalloc(i32, i32) #1

declare dso_local i32 @ace_setup(%struct.ace_device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.ace_device*) #1

declare dso_local i32 @kfree(%struct.ace_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
