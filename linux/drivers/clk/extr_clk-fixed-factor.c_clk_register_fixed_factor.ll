; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-fixed-factor.c_clk_register_fixed_factor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-fixed-factor.c_clk_register_fixed_factor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.device = type { i32 }
%struct.clk_hw = type { %struct.clk* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clk* @clk_register_fixed_factor(%struct.device* %0, i8* %1, i8* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.clk*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.clk_hw*, align 8
  store %struct.device* %0, %struct.device** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load %struct.device*, %struct.device** %8, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = load i64, i64* %11, align 8
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %13, align 4
  %21 = call %struct.clk_hw* @clk_hw_register_fixed_factor(%struct.device* %15, i8* %16, i8* %17, i64 %18, i32 %19, i32 %20)
  store %struct.clk_hw* %21, %struct.clk_hw** %14, align 8
  %22 = load %struct.clk_hw*, %struct.clk_hw** %14, align 8
  %23 = call i64 @IS_ERR(%struct.clk_hw* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load %struct.clk_hw*, %struct.clk_hw** %14, align 8
  %27 = call %struct.clk* @ERR_CAST(%struct.clk_hw* %26)
  store %struct.clk* %27, %struct.clk** %7, align 8
  br label %32

28:                                               ; preds = %6
  %29 = load %struct.clk_hw*, %struct.clk_hw** %14, align 8
  %30 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %29, i32 0, i32 0
  %31 = load %struct.clk*, %struct.clk** %30, align 8
  store %struct.clk* %31, %struct.clk** %7, align 8
  br label %32

32:                                               ; preds = %28, %25
  %33 = load %struct.clk*, %struct.clk** %7, align 8
  ret %struct.clk* %33
}

declare dso_local %struct.clk_hw* @clk_hw_register_fixed_factor(%struct.device*, i8*, i8*, i64, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.clk_hw*) #1

declare dso_local %struct.clk* @ERR_CAST(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
