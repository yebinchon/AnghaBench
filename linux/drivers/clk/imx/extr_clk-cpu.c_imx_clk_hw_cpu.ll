; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-cpu.c_imx_clk_hw_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-cpu.c_imx_clk_hw_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i8**, i32, i32, i32* }
%struct.clk = type { i32 }
%struct.clk_cpu = type { %struct.clk_hw, %struct.clk*, %struct.clk*, %struct.clk*, %struct.clk* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@clk_cpu_ops = common dso_local global i32 0, align 4
@CLK_IS_CRITICAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clk_hw* @imx_clk_hw_cpu(i8* %0, i8* %1, %struct.clk* %2, %struct.clk* %3, %struct.clk* %4, %struct.clk* %5) #0 {
  %7 = alloca %struct.clk_hw*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.clk*, align 8
  %11 = alloca %struct.clk*, align 8
  %12 = alloca %struct.clk*, align 8
  %13 = alloca %struct.clk*, align 8
  %14 = alloca %struct.clk_cpu*, align 8
  %15 = alloca %struct.clk_hw*, align 8
  %16 = alloca %struct.clk_init_data, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.clk* %2, %struct.clk** %10, align 8
  store %struct.clk* %3, %struct.clk** %11, align 8
  store %struct.clk* %4, %struct.clk** %12, align 8
  store %struct.clk* %5, %struct.clk** %13, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.clk_cpu* @kzalloc(i32 40, i32 %18)
  store %struct.clk_cpu* %19, %struct.clk_cpu** %14, align 8
  %20 = load %struct.clk_cpu*, %struct.clk_cpu** %14, align 8
  %21 = icmp ne %struct.clk_cpu* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.clk_hw* @ERR_PTR(i32 %24)
  store %struct.clk_hw* %25, %struct.clk_hw** %7, align 8
  br label %62

26:                                               ; preds = %6
  %27 = load %struct.clk*, %struct.clk** %10, align 8
  %28 = load %struct.clk_cpu*, %struct.clk_cpu** %14, align 8
  %29 = getelementptr inbounds %struct.clk_cpu, %struct.clk_cpu* %28, i32 0, i32 4
  store %struct.clk* %27, %struct.clk** %29, align 8
  %30 = load %struct.clk*, %struct.clk** %11, align 8
  %31 = load %struct.clk_cpu*, %struct.clk_cpu** %14, align 8
  %32 = getelementptr inbounds %struct.clk_cpu, %struct.clk_cpu* %31, i32 0, i32 3
  store %struct.clk* %30, %struct.clk** %32, align 8
  %33 = load %struct.clk*, %struct.clk** %12, align 8
  %34 = load %struct.clk_cpu*, %struct.clk_cpu** %14, align 8
  %35 = getelementptr inbounds %struct.clk_cpu, %struct.clk_cpu* %34, i32 0, i32 2
  store %struct.clk* %33, %struct.clk** %35, align 8
  %36 = load %struct.clk*, %struct.clk** %13, align 8
  %37 = load %struct.clk_cpu*, %struct.clk_cpu** %14, align 8
  %38 = getelementptr inbounds %struct.clk_cpu, %struct.clk_cpu* %37, i32 0, i32 1
  store %struct.clk* %36, %struct.clk** %38, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %16, i32 0, i32 0
  store i8* %39, i8** %40, align 8
  %41 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %16, i32 0, i32 4
  store i32* @clk_cpu_ops, i32** %41, align 8
  %42 = load i32, i32* @CLK_IS_CRITICAL, align 4
  %43 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %16, i32 0, i32 3
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %16, i32 0, i32 1
  store i8** %9, i8*** %44, align 8
  %45 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %16, i32 0, i32 2
  store i32 1, i32* %45, align 8
  %46 = load %struct.clk_cpu*, %struct.clk_cpu** %14, align 8
  %47 = getelementptr inbounds %struct.clk_cpu, %struct.clk_cpu* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %47, i32 0, i32 0
  store %struct.clk_init_data* %16, %struct.clk_init_data** %48, align 8
  %49 = load %struct.clk_cpu*, %struct.clk_cpu** %14, align 8
  %50 = getelementptr inbounds %struct.clk_cpu, %struct.clk_cpu* %49, i32 0, i32 0
  store %struct.clk_hw* %50, %struct.clk_hw** %15, align 8
  %51 = load %struct.clk_hw*, %struct.clk_hw** %15, align 8
  %52 = call i32 @clk_hw_register(i32* null, %struct.clk_hw* %51)
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %17, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %26
  %56 = load %struct.clk_cpu*, %struct.clk_cpu** %14, align 8
  %57 = call i32 @kfree(%struct.clk_cpu* %56)
  %58 = load i32, i32* %17, align 4
  %59 = call %struct.clk_hw* @ERR_PTR(i32 %58)
  store %struct.clk_hw* %59, %struct.clk_hw** %7, align 8
  br label %62

60:                                               ; preds = %26
  %61 = load %struct.clk_hw*, %struct.clk_hw** %15, align 8
  store %struct.clk_hw* %61, %struct.clk_hw** %7, align 8
  br label %62

62:                                               ; preds = %60, %55, %22
  %63 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  ret %struct.clk_hw* %63
}

declare dso_local %struct.clk_cpu* @kzalloc(i32, i32) #1

declare dso_local %struct.clk_hw* @ERR_PTR(i32) #1

declare dso_local i32 @clk_hw_register(i32*, %struct.clk_hw*) #1

declare dso_local i32 @kfree(%struct.clk_cpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
