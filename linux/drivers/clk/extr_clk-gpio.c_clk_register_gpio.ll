; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-gpio.c_clk_register_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-gpio.c_clk_register_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i64, i8**, i32, %struct.clk_ops* }
%struct.device = type { i32 }
%struct.gpio_desc = type { i32 }
%struct.clk_ops = type { i32 }
%struct.clk_gpio = type { %struct.clk_hw, %struct.gpio_desc* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk_hw* (%struct.device*, i8*, i8**, i32, %struct.gpio_desc*, i64, %struct.clk_ops*)* @clk_register_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk_hw* @clk_register_gpio(%struct.device* %0, i8* %1, i8** %2, i32 %3, %struct.gpio_desc* %4, i64 %5, %struct.clk_ops* %6) #0 {
  %8 = alloca %struct.clk_hw*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.gpio_desc*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.clk_ops*, align 8
  %16 = alloca %struct.clk_gpio*, align 8
  %17 = alloca %struct.clk_hw*, align 8
  %18 = alloca %struct.clk_init_data, align 8
  %19 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8** %2, i8*** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.gpio_desc* %4, %struct.gpio_desc** %13, align 8
  store i64 %5, i64* %14, align 8
  store %struct.clk_ops* %6, %struct.clk_ops** %15, align 8
  %20 = bitcast %struct.clk_init_data* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 40, i1 false)
  %21 = load %struct.device*, %struct.device** %9, align 8
  %22 = icmp ne %struct.device* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %7
  %24 = load %struct.device*, %struct.device** %9, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.clk_gpio* @devm_kzalloc(%struct.device* %24, i32 16, i32 %25)
  store %struct.clk_gpio* %26, %struct.clk_gpio** %16, align 8
  br label %30

27:                                               ; preds = %7
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.clk_gpio* @kzalloc(i32 16, i32 %28)
  store %struct.clk_gpio* %29, %struct.clk_gpio** %16, align 8
  br label %30

30:                                               ; preds = %27, %23
  %31 = load %struct.clk_gpio*, %struct.clk_gpio** %16, align 8
  %32 = icmp ne %struct.clk_gpio* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.clk_hw* @ERR_PTR(i32 %35)
  store %struct.clk_hw* %36, %struct.clk_hw** %8, align 8
  br label %79

37:                                               ; preds = %30
  %38 = load i8*, i8** %10, align 8
  %39 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %18, i32 0, i32 0
  store i8* %38, i8** %39, align 8
  %40 = load %struct.clk_ops*, %struct.clk_ops** %15, align 8
  %41 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %18, i32 0, i32 4
  store %struct.clk_ops* %40, %struct.clk_ops** %41, align 8
  %42 = load i64, i64* %14, align 8
  %43 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %18, i32 0, i32 1
  store i64 %42, i64* %43, align 8
  %44 = load i8**, i8*** %11, align 8
  %45 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %18, i32 0, i32 2
  store i8** %44, i8*** %45, align 8
  %46 = load i32, i32* %12, align 4
  %47 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %18, i32 0, i32 3
  store i32 %46, i32* %47, align 8
  %48 = load %struct.gpio_desc*, %struct.gpio_desc** %13, align 8
  %49 = load %struct.clk_gpio*, %struct.clk_gpio** %16, align 8
  %50 = getelementptr inbounds %struct.clk_gpio, %struct.clk_gpio* %49, i32 0, i32 1
  store %struct.gpio_desc* %48, %struct.gpio_desc** %50, align 8
  %51 = load %struct.clk_gpio*, %struct.clk_gpio** %16, align 8
  %52 = getelementptr inbounds %struct.clk_gpio, %struct.clk_gpio* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %52, i32 0, i32 0
  store %struct.clk_init_data* %18, %struct.clk_init_data** %53, align 8
  %54 = load %struct.clk_gpio*, %struct.clk_gpio** %16, align 8
  %55 = getelementptr inbounds %struct.clk_gpio, %struct.clk_gpio* %54, i32 0, i32 0
  store %struct.clk_hw* %55, %struct.clk_hw** %17, align 8
  %56 = load %struct.device*, %struct.device** %9, align 8
  %57 = icmp ne %struct.device* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %37
  %59 = load %struct.device*, %struct.device** %9, align 8
  %60 = load %struct.clk_hw*, %struct.clk_hw** %17, align 8
  %61 = call i32 @devm_clk_hw_register(%struct.device* %59, %struct.clk_hw* %60)
  store i32 %61, i32* %19, align 4
  br label %65

62:                                               ; preds = %37
  %63 = load %struct.clk_hw*, %struct.clk_hw** %17, align 8
  %64 = call i32 @clk_hw_register(i32* null, %struct.clk_hw* %63)
  store i32 %64, i32* %19, align 4
  br label %65

65:                                               ; preds = %62, %58
  %66 = load i32, i32* %19, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = load %struct.clk_hw*, %struct.clk_hw** %17, align 8
  store %struct.clk_hw* %69, %struct.clk_hw** %8, align 8
  br label %79

70:                                               ; preds = %65
  %71 = load %struct.device*, %struct.device** %9, align 8
  %72 = icmp ne %struct.device* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load %struct.clk_gpio*, %struct.clk_gpio** %16, align 8
  %75 = call i32 @kfree(%struct.clk_gpio* %74)
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i32, i32* %19, align 4
  %78 = call %struct.clk_hw* @ERR_PTR(i32 %77)
  store %struct.clk_hw* %78, %struct.clk_hw** %8, align 8
  br label %79

79:                                               ; preds = %76, %68, %33
  %80 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  ret %struct.clk_hw* %80
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.clk_gpio* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local %struct.clk_gpio* @kzalloc(i32, i32) #2

declare dso_local %struct.clk_hw* @ERR_PTR(i32) #2

declare dso_local i32 @devm_clk_hw_register(%struct.device*, %struct.clk_hw*) #2

declare dso_local i32 @clk_hw_register(i32*, %struct.clk_hw*) #2

declare dso_local i32 @kfree(%struct.clk_gpio*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
