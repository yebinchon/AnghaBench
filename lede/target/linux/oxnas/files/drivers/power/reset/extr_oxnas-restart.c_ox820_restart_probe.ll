; ModuleID = '/home/carl/AnghaBench/lede/target/linux/oxnas/files/drivers/power/reset/extr_oxnas-restart.c_ox820_restart_probe.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/oxnas/files/drivers/power/reset/extr_oxnas-restart.c_ox820_restart_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.oxnas_restart_context = type { %struct.TYPE_2__, %struct.regmap* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.regmap = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ox820_restart_handle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"can't register restart notifier (err=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ox820_restart_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ox820_restart_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.oxnas_restart_context*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.regmap* @syscon_node_to_regmap(i32 %13)
  store %struct.regmap* %14, %struct.regmap** %5, align 8
  %15 = load %struct.regmap*, %struct.regmap** %5, align 8
  %16 = call i64 @IS_ERR(%struct.regmap* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.regmap*, %struct.regmap** %5, align 8
  %20 = call i32 @PTR_ERR(%struct.regmap* %19)
  store i32 %20, i32* %2, align 4
  br label %53

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.oxnas_restart_context* @devm_kzalloc(%struct.device* %23, i32 16, i32 %24)
  store %struct.oxnas_restart_context* %25, %struct.oxnas_restart_context** %4, align 8
  %26 = load %struct.oxnas_restart_context*, %struct.oxnas_restart_context** %4, align 8
  %27 = icmp ne %struct.oxnas_restart_context* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %53

31:                                               ; preds = %21
  %32 = load %struct.regmap*, %struct.regmap** %5, align 8
  %33 = load %struct.oxnas_restart_context*, %struct.oxnas_restart_context** %4, align 8
  %34 = getelementptr inbounds %struct.oxnas_restart_context, %struct.oxnas_restart_context* %33, i32 0, i32 1
  store %struct.regmap* %32, %struct.regmap** %34, align 8
  %35 = load i32, i32* @ox820_restart_handle, align 4
  %36 = load %struct.oxnas_restart_context*, %struct.oxnas_restart_context** %4, align 8
  %37 = getelementptr inbounds %struct.oxnas_restart_context, %struct.oxnas_restart_context* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  %39 = load %struct.oxnas_restart_context*, %struct.oxnas_restart_context** %4, align 8
  %40 = getelementptr inbounds %struct.oxnas_restart_context, %struct.oxnas_restart_context* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 192, i32* %41, align 8
  %42 = load %struct.oxnas_restart_context*, %struct.oxnas_restart_context** %4, align 8
  %43 = getelementptr inbounds %struct.oxnas_restart_context, %struct.oxnas_restart_context* %42, i32 0, i32 0
  %44 = call i32 @register_restart_handler(%struct.TYPE_2__* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %31
  %48 = load %struct.device*, %struct.device** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @dev_err(%struct.device* %48, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %47, %31
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %28, %18
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.regmap* @syscon_node_to_regmap(i32) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local %struct.oxnas_restart_context* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @register_restart_handler(%struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
