; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-fixed-rate.c_clk_hw_register_fixed_rate_with_accuracy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-fixed-rate.c_clk_hw_register_fixed_rate_with_accuracy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i64, i8**, i32, i32* }
%struct.device = type { i32 }
%struct.clk_fixed_rate = type { i64, i64, %struct.clk_hw }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@clk_fixed_rate_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clk_hw* @clk_hw_register_fixed_rate_with_accuracy(%struct.device* %0, i8* %1, i8* %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.clk_hw*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.clk_fixed_rate*, align 8
  %15 = alloca %struct.clk_hw*, align 8
  %16 = alloca %struct.clk_init_data, align 8
  %17 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.clk_fixed_rate* @kzalloc(i32 24, i32 %18)
  store %struct.clk_fixed_rate* %19, %struct.clk_fixed_rate** %14, align 8
  %20 = load %struct.clk_fixed_rate*, %struct.clk_fixed_rate** %14, align 8
  %21 = icmp ne %struct.clk_fixed_rate* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.clk_hw* @ERR_PTR(i32 %24)
  store %struct.clk_hw* %25, %struct.clk_hw** %7, align 8
  br label %67

26:                                               ; preds = %6
  %27 = load i8*, i8** %9, align 8
  %28 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %16, i32 0, i32 0
  store i8* %27, i8** %28, align 8
  %29 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %16, i32 0, i32 4
  store i32* @clk_fixed_rate_ops, i32** %29, align 8
  %30 = load i64, i64* %11, align 8
  %31 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %16, i32 0, i32 1
  store i64 %30, i64* %31, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %36

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %34
  %37 = phi i8** [ %10, %34 ], [ null, %35 ]
  %38 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %16, i32 0, i32 2
  store i8** %37, i8*** %38, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = icmp ne i8* %39, null
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 0
  %43 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %16, i32 0, i32 3
  store i32 %42, i32* %43, align 8
  %44 = load i64, i64* %12, align 8
  %45 = load %struct.clk_fixed_rate*, %struct.clk_fixed_rate** %14, align 8
  %46 = getelementptr inbounds %struct.clk_fixed_rate, %struct.clk_fixed_rate* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load i64, i64* %13, align 8
  %48 = load %struct.clk_fixed_rate*, %struct.clk_fixed_rate** %14, align 8
  %49 = getelementptr inbounds %struct.clk_fixed_rate, %struct.clk_fixed_rate* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load %struct.clk_fixed_rate*, %struct.clk_fixed_rate** %14, align 8
  %51 = getelementptr inbounds %struct.clk_fixed_rate, %struct.clk_fixed_rate* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %51, i32 0, i32 0
  store %struct.clk_init_data* %16, %struct.clk_init_data** %52, align 8
  %53 = load %struct.clk_fixed_rate*, %struct.clk_fixed_rate** %14, align 8
  %54 = getelementptr inbounds %struct.clk_fixed_rate, %struct.clk_fixed_rate* %53, i32 0, i32 2
  store %struct.clk_hw* %54, %struct.clk_hw** %15, align 8
  %55 = load %struct.device*, %struct.device** %8, align 8
  %56 = load %struct.clk_hw*, %struct.clk_hw** %15, align 8
  %57 = call i32 @clk_hw_register(%struct.device* %55, %struct.clk_hw* %56)
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %17, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %36
  %61 = load %struct.clk_fixed_rate*, %struct.clk_fixed_rate** %14, align 8
  %62 = call i32 @kfree(%struct.clk_fixed_rate* %61)
  %63 = load i32, i32* %17, align 4
  %64 = call %struct.clk_hw* @ERR_PTR(i32 %63)
  store %struct.clk_hw* %64, %struct.clk_hw** %15, align 8
  br label %65

65:                                               ; preds = %60, %36
  %66 = load %struct.clk_hw*, %struct.clk_hw** %15, align 8
  store %struct.clk_hw* %66, %struct.clk_hw** %7, align 8
  br label %67

67:                                               ; preds = %65, %22
  %68 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  ret %struct.clk_hw* %68
}

declare dso_local %struct.clk_fixed_rate* @kzalloc(i32, i32) #1

declare dso_local %struct.clk_hw* @ERR_PTR(i32) #1

declare dso_local i32 @clk_hw_register(%struct.device*, %struct.clk_hw*) #1

declare dso_local i32 @kfree(%struct.clk_fixed_rate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
