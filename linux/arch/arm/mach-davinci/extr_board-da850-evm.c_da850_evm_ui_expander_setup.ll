; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-davinci/extr_board-da850-evm.c_da850_evm_ui_expander_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-davinci/extr_board-da850-evm.c_da850_evm_ui_expander_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@DA850_EVM_UI_EXP_SEL_A = common dso_local global i64 0, align 8
@DA850_EVM_UI_EXP_SEL_B = common dso_local global i64 0, align 8
@DA850_EVM_UI_EXP_SEL_C = common dso_local global i64 0, align 8
@da850_evm_ui_exp = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"Cannot open UI expander pin %d\0A\00", align 1
@da850_evm_ui_keys_device = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Could not register UI GPIO expander push-buttons\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"DA850/OMAP-L138 EVM UI card detected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32, i8*)* @da850_evm_ui_expander_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da850_evm_ui_expander_setup(%struct.i2c_client* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* @DA850_EVM_UI_EXP_SEL_A, align 8
  %17 = add i64 %15, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* @DA850_EVM_UI_EXP_SEL_B, align 8
  %22 = add i64 %20, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = load i64, i64* @DA850_EVM_UI_EXP_SEL_C, align 8
  %27 = add i64 %25, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32*, i32** @da850_evm_ui_exp, align 8
  %31 = load i64, i64* @DA850_EVM_UI_EXP_SEL_A, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @gpio_request(i32 %29, i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %94

40:                                               ; preds = %4
  %41 = load i32, i32* %11, align 4
  %42 = load i32*, i32** @da850_evm_ui_exp, align 8
  %43 = load i64, i64* @DA850_EVM_UI_EXP_SEL_B, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @gpio_request(i32 %41, i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load i32, i32* %11, align 4
  %51 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %91

52:                                               ; preds = %40
  %53 = load i32, i32* %12, align 4
  %54 = load i32*, i32** @da850_evm_ui_exp, align 8
  %55 = load i64, i64* @DA850_EVM_UI_EXP_SEL_C, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @gpio_request(i32 %53, i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load i32, i32* %12, align 4
  %63 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %88

64:                                               ; preds = %52
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @gpio_direction_output(i32 %65, i32 1)
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @gpio_direction_output(i32 %67, i32 1)
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @gpio_direction_output(i32 %69, i32 1)
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @da850_evm_ui_keys_init(i32 %71)
  %73 = call i32 @platform_device_register(i32* @da850_evm_ui_keys_device)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %64
  %77 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %85

78:                                               ; preds = %64
  %79 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %80 = call i32 (...) @da850_evm_setup_nor_nand()
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @da850_evm_setup_emac_rmii(i32 %81)
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @da850_evm_setup_video_port(i32 %83)
  store i32 0, i32* %5, align 4
  br label %96

85:                                               ; preds = %76
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @gpio_free(i32 %86)
  br label %88

88:                                               ; preds = %85, %61
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @gpio_free(i32 %89)
  br label %91

91:                                               ; preds = %88, %49
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @gpio_free(i32 %92)
  br label %94

94:                                               ; preds = %91, %37
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %94, %78
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @gpio_request(i32, i32) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @da850_evm_ui_keys_init(i32) #1

declare dso_local i32 @platform_device_register(i32*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @da850_evm_setup_nor_nand(...) #1

declare dso_local i32 @da850_evm_setup_emac_rmii(i32) #1

declare dso_local i32 @da850_evm_setup_video_port(i32) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
