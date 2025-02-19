; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-composite.c_clk_register_composite.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-composite.c_clk_register_composite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.device = type { i32 }
%struct.clk_hw = type { %struct.clk* }
%struct.clk_ops = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clk* @clk_register_composite(%struct.device* %0, i8* %1, i8** %2, i32 %3, %struct.clk_hw* %4, %struct.clk_ops* %5, %struct.clk_hw* %6, %struct.clk_ops* %7, %struct.clk_hw* %8, %struct.clk_ops* %9, i64 %10) #0 {
  %12 = alloca %struct.clk*, align 8
  %13 = alloca %struct.device*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.clk_hw*, align 8
  %18 = alloca %struct.clk_ops*, align 8
  %19 = alloca %struct.clk_hw*, align 8
  %20 = alloca %struct.clk_ops*, align 8
  %21 = alloca %struct.clk_hw*, align 8
  %22 = alloca %struct.clk_ops*, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.clk_hw*, align 8
  store %struct.device* %0, %struct.device** %13, align 8
  store i8* %1, i8** %14, align 8
  store i8** %2, i8*** %15, align 8
  store i32 %3, i32* %16, align 4
  store %struct.clk_hw* %4, %struct.clk_hw** %17, align 8
  store %struct.clk_ops* %5, %struct.clk_ops** %18, align 8
  store %struct.clk_hw* %6, %struct.clk_hw** %19, align 8
  store %struct.clk_ops* %7, %struct.clk_ops** %20, align 8
  store %struct.clk_hw* %8, %struct.clk_hw** %21, align 8
  store %struct.clk_ops* %9, %struct.clk_ops** %22, align 8
  store i64 %10, i64* %23, align 8
  %25 = load %struct.device*, %struct.device** %13, align 8
  %26 = load i8*, i8** %14, align 8
  %27 = load i8**, i8*** %15, align 8
  %28 = load i32, i32* %16, align 4
  %29 = load %struct.clk_hw*, %struct.clk_hw** %17, align 8
  %30 = load %struct.clk_ops*, %struct.clk_ops** %18, align 8
  %31 = load %struct.clk_hw*, %struct.clk_hw** %19, align 8
  %32 = load %struct.clk_ops*, %struct.clk_ops** %20, align 8
  %33 = load %struct.clk_hw*, %struct.clk_hw** %21, align 8
  %34 = load %struct.clk_ops*, %struct.clk_ops** %22, align 8
  %35 = load i64, i64* %23, align 8
  %36 = call %struct.clk_hw* @clk_hw_register_composite(%struct.device* %25, i8* %26, i8** %27, i32 %28, %struct.clk_hw* %29, %struct.clk_ops* %30, %struct.clk_hw* %31, %struct.clk_ops* %32, %struct.clk_hw* %33, %struct.clk_ops* %34, i64 %35)
  store %struct.clk_hw* %36, %struct.clk_hw** %24, align 8
  %37 = load %struct.clk_hw*, %struct.clk_hw** %24, align 8
  %38 = call i64 @IS_ERR(%struct.clk_hw* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %11
  %41 = load %struct.clk_hw*, %struct.clk_hw** %24, align 8
  %42 = call %struct.clk* @ERR_CAST(%struct.clk_hw* %41)
  store %struct.clk* %42, %struct.clk** %12, align 8
  br label %47

43:                                               ; preds = %11
  %44 = load %struct.clk_hw*, %struct.clk_hw** %24, align 8
  %45 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %44, i32 0, i32 0
  %46 = load %struct.clk*, %struct.clk** %45, align 8
  store %struct.clk* %46, %struct.clk** %12, align 8
  br label %47

47:                                               ; preds = %43, %40
  %48 = load %struct.clk*, %struct.clk** %12, align 8
  ret %struct.clk* %48
}

declare dso_local %struct.clk_hw* @clk_hw_register_composite(%struct.device*, i8*, i8**, i32, %struct.clk_hw*, %struct.clk_ops*, %struct.clk_hw*, %struct.clk_ops*, %struct.clk_hw*, %struct.clk_ops*, i64) #1

declare dso_local i64 @IS_ERR(%struct.clk_hw*) #1

declare dso_local %struct.clk* @ERR_CAST(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
