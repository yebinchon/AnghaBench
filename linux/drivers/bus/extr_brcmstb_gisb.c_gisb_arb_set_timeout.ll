; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_brcmstb_gisb.c_gisb_arb_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_brcmstb_gisb.c_gisb_arb_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.brcmstb_gisb_arb_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ARB_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @gisb_arb_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gisb_arb_set_timeout(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.brcmstb_gisb_arb_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.brcmstb_gisb_arb_device* @dev_get_drvdata(%struct.device* %13)
  store %struct.brcmstb_gisb_arb_device* %14, %struct.brcmstb_gisb_arb_device** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @kstrtoint(i8* %15, i32 10, i32* %11)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %5, align 4
  br label %43

21:                                               ; preds = %4
  %22 = load i32, i32* %11, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %11, align 4
  %26 = icmp uge i32 %25, -1
  br i1 %26, label %27, label %30

27:                                               ; preds = %24, %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %43

30:                                               ; preds = %24
  %31 = load %struct.brcmstb_gisb_arb_device*, %struct.brcmstb_gisb_arb_device** %10, align 8
  %32 = getelementptr inbounds %struct.brcmstb_gisb_arb_device, %struct.brcmstb_gisb_arb_device* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.brcmstb_gisb_arb_device*, %struct.brcmstb_gisb_arb_device** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @ARB_TIMER, align 4
  %37 = call i32 @gisb_write(%struct.brcmstb_gisb_arb_device* %34, i32 %35, i32 %36)
  %38 = load %struct.brcmstb_gisb_arb_device*, %struct.brcmstb_gisb_arb_device** %10, align 8
  %39 = getelementptr inbounds %struct.brcmstb_gisb_arb_device, %struct.brcmstb_gisb_arb_device* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load i64, i64* %9, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %30, %27, %19
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local %struct.brcmstb_gisb_arb_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoint(i8*, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gisb_write(%struct.brcmstb_gisb_arb_device*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
