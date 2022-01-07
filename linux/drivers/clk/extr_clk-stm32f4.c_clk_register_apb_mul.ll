; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32f4.c_clk_register_apb_mul.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32f4.c_clk_register_apb_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.device = type { i32 }
%struct.clk_apb_mul = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i64, i8**, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@clk_apb_mul_factor_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk* (%struct.device*, i8*, i8*, i64, i32)* @clk_register_apb_mul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk* @clk_register_apb_mul(%struct.device* %0, i8* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.clk*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.clk_apb_mul*, align 8
  %13 = alloca %struct.clk_init_data, align 8
  %14 = alloca %struct.clk*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.clk_apb_mul* @kzalloc(i32 16, i32 %15)
  store %struct.clk_apb_mul* %16, %struct.clk_apb_mul** %12, align 8
  %17 = load %struct.clk_apb_mul*, %struct.clk_apb_mul** %12, align 8
  %18 = icmp ne %struct.clk_apb_mul* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.clk* @ERR_PTR(i32 %21)
  store %struct.clk* %22, %struct.clk** %6, align 8
  br label %49

23:                                               ; preds = %5
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.clk_apb_mul*, %struct.clk_apb_mul** %12, align 8
  %26 = getelementptr inbounds %struct.clk_apb_mul, %struct.clk_apb_mul* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.clk_apb_mul*, %struct.clk_apb_mul** %12, align 8
  %28 = getelementptr inbounds %struct.clk_apb_mul, %struct.clk_apb_mul* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store %struct.clk_init_data* %13, %struct.clk_init_data** %29, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %13, i32 0, i32 0
  store i8* %30, i8** %31, align 8
  %32 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %13, i32 0, i32 4
  store i32* @clk_apb_mul_factor_ops, i32** %32, align 8
  %33 = load i64, i64* %10, align 8
  %34 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %13, i32 0, i32 1
  store i64 %33, i64* %34, align 8
  %35 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %13, i32 0, i32 2
  store i8** %9, i8*** %35, align 8
  %36 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %13, i32 0, i32 3
  store i32 1, i32* %36, align 8
  %37 = load %struct.device*, %struct.device** %7, align 8
  %38 = load %struct.clk_apb_mul*, %struct.clk_apb_mul** %12, align 8
  %39 = getelementptr inbounds %struct.clk_apb_mul, %struct.clk_apb_mul* %38, i32 0, i32 0
  %40 = call %struct.clk* @clk_register(%struct.device* %37, %struct.TYPE_2__* %39)
  store %struct.clk* %40, %struct.clk** %14, align 8
  %41 = load %struct.clk*, %struct.clk** %14, align 8
  %42 = call i64 @IS_ERR(%struct.clk* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %23
  %45 = load %struct.clk_apb_mul*, %struct.clk_apb_mul** %12, align 8
  %46 = call i32 @kfree(%struct.clk_apb_mul* %45)
  br label %47

47:                                               ; preds = %44, %23
  %48 = load %struct.clk*, %struct.clk** %14, align 8
  store %struct.clk* %48, %struct.clk** %6, align 8
  br label %49

49:                                               ; preds = %47, %19
  %50 = load %struct.clk*, %struct.clk** %6, align 8
  ret %struct.clk* %50
}

declare dso_local %struct.clk_apb_mul* @kzalloc(i32, i32) #1

declare dso_local %struct.clk* @ERR_PTR(i32) #1

declare dso_local %struct.clk* @clk_register(%struct.device*, %struct.TYPE_2__*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @kfree(%struct.clk_apb_mul*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
