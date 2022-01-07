; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_probe_of.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_probe_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64 }
%struct.btmrvl_sdio_card = type { i64, %struct.btmrvl_plt_wake_cfg* }
%struct.btmrvl_plt_wake_cfg = type { i32 }

@btmrvl_sdio_of_match_table = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"sdio device tree data not available\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"fail to parse irq_bt from device tree\0A\00", align 1
@btmrvl_wake_irq_bt = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"bt_wake\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed to request irq_bt %d (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.btmrvl_sdio_card*)* @btmrvl_sdio_probe_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmrvl_sdio_probe_of(%struct.device* %0, %struct.btmrvl_sdio_card* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.btmrvl_sdio_card*, align 8
  %6 = alloca %struct.btmrvl_plt_wake_cfg*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.btmrvl_sdio_card* %1, %struct.btmrvl_sdio_card** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i32, i32* @btmrvl_sdio_of_match_table, align 4
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @of_match_node(i32 %13, i64 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %12, %2
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i32 @dev_info(%struct.device* %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %83

22:                                               ; preds = %12
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = getelementptr inbounds %struct.device, %struct.device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %5, align 8
  %27 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.btmrvl_plt_wake_cfg* @devm_kzalloc(%struct.device* %28, i32 4, i32 %29)
  %31 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %5, align 8
  %32 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %31, i32 0, i32 1
  store %struct.btmrvl_plt_wake_cfg* %30, %struct.btmrvl_plt_wake_cfg** %32, align 8
  %33 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %5, align 8
  %34 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %33, i32 0, i32 1
  %35 = load %struct.btmrvl_plt_wake_cfg*, %struct.btmrvl_plt_wake_cfg** %34, align 8
  store %struct.btmrvl_plt_wake_cfg* %35, %struct.btmrvl_plt_wake_cfg** %6, align 8
  %36 = load %struct.btmrvl_plt_wake_cfg*, %struct.btmrvl_plt_wake_cfg** %6, align 8
  %37 = icmp ne %struct.btmrvl_plt_wake_cfg* %36, null
  br i1 %37, label %38, label %82

38:                                               ; preds = %22
  %39 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %5, align 8
  %40 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %82

43:                                               ; preds = %38
  %44 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %5, align 8
  %45 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @irq_of_parse_and_map(i64 %46, i32 0)
  %48 = load %struct.btmrvl_plt_wake_cfg*, %struct.btmrvl_plt_wake_cfg** %6, align 8
  %49 = getelementptr inbounds %struct.btmrvl_plt_wake_cfg, %struct.btmrvl_plt_wake_cfg* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.btmrvl_plt_wake_cfg*, %struct.btmrvl_plt_wake_cfg** %6, align 8
  %51 = getelementptr inbounds %struct.btmrvl_plt_wake_cfg, %struct.btmrvl_plt_wake_cfg* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %43
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %55, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.btmrvl_plt_wake_cfg*, %struct.btmrvl_plt_wake_cfg** %6, align 8
  %58 = getelementptr inbounds %struct.btmrvl_plt_wake_cfg, %struct.btmrvl_plt_wake_cfg* %57, i32 0, i32 0
  store i32 -1, i32* %58, align 4
  br label %81

59:                                               ; preds = %43
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = load %struct.btmrvl_plt_wake_cfg*, %struct.btmrvl_plt_wake_cfg** %6, align 8
  %62 = getelementptr inbounds %struct.btmrvl_plt_wake_cfg, %struct.btmrvl_plt_wake_cfg* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @btmrvl_wake_irq_bt, align 4
  %65 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %5, align 8
  %66 = call i32 @devm_request_irq(%struct.device* %60, i32 %63, i32 %64, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.btmrvl_sdio_card* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %59
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = load %struct.btmrvl_plt_wake_cfg*, %struct.btmrvl_plt_wake_cfg** %6, align 8
  %72 = getelementptr inbounds %struct.btmrvl_plt_wake_cfg, %struct.btmrvl_plt_wake_cfg* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %70, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %69, %59
  %77 = load %struct.btmrvl_plt_wake_cfg*, %struct.btmrvl_plt_wake_cfg** %6, align 8
  %78 = getelementptr inbounds %struct.btmrvl_plt_wake_cfg, %struct.btmrvl_plt_wake_cfg* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @disable_irq(i32 %79)
  br label %81

81:                                               ; preds = %76, %54
  br label %82

82:                                               ; preds = %81, %38, %22
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %19
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @of_match_node(i32, i64) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local %struct.btmrvl_plt_wake_cfg* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @irq_of_parse_and_map(i64, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.btmrvl_sdio_card*) #1

declare dso_local i32 @disable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
