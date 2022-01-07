; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-s2mps11.c_s2mps11_clk_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-s2mps11.c_s2mps11_clk_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.clk_init_data = type { i32 }
%struct.sec_pmic_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"could not find clock sub-node\0A\00", align 1
@S2MPS11_CLKS_NUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device_node* (%struct.platform_device*, %struct.clk_init_data*)* @s2mps11_clk_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device_node* @s2mps11_clk_parse_dt(%struct.platform_device* %0, %struct.clk_init_data* %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.clk_init_data*, align 8
  %6 = alloca %struct.sec_pmic_dev*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.clk_init_data* %1, %struct.clk_init_data** %5, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.sec_pmic_dev* @dev_get_drvdata(i32 %12)
  store %struct.sec_pmic_dev* %13, %struct.sec_pmic_dev** %6, align 8
  %14 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %6, align 8
  %15 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.device_node* @ERR_PTR(i32 %22)
  store %struct.device_node* %23, %struct.device_node** %3, align 8
  br label %59

24:                                               ; preds = %2
  %25 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %6, align 8
  %26 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.device_node* @of_get_child_by_name(i32 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %30, %struct.device_node** %7, align 8
  %31 = load %struct.device_node*, %struct.device_node** %7, align 8
  %32 = icmp ne %struct.device_node* %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %24
  %34 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = call i32 @dev_err(%struct.TYPE_4__* %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.device_node* @ERR_PTR(i32 %38)
  store %struct.device_node* %39, %struct.device_node** %3, align 8
  br label %59

40:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %54, %40
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @S2MPS11_CLKS_NUM, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load %struct.device_node*, %struct.device_node** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.clk_init_data*, %struct.clk_init_data** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %48, i64 %50
  %52 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %51, i32 0, i32 0
  %53 = call i32 @of_property_read_string_index(%struct.device_node* %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32* %52)
  br label %54

54:                                               ; preds = %45
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %41

57:                                               ; preds = %41
  %58 = load %struct.device_node*, %struct.device_node** %7, align 8
  store %struct.device_node* %58, %struct.device_node** %3, align 8
  br label %59

59:                                               ; preds = %57, %33, %20
  %60 = load %struct.device_node*, %struct.device_node** %3, align 8
  ret %struct.device_node* %60
}

declare dso_local %struct.sec_pmic_dev* @dev_get_drvdata(i32) #1

declare dso_local %struct.device_node* @ERR_PTR(i32) #1

declare dso_local %struct.device_node* @of_get_child_by_name(i32, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @of_property_read_string_index(%struct.device_node*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
