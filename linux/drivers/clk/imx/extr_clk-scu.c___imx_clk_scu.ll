; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-scu.c___imx_clk_scu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-scu.c___imx_clk_scu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i8**, i32, i32, i32* }
%struct.clk_scu = type { %struct.clk_hw, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@clk_scu_ops = common dso_local global i32 0, align 4
@IMX_SC_R_A35 = common dso_local global i64 0, align 8
@clk_scu_cpu_ops = common dso_local global i32 0, align 4
@CLK_GET_RATE_NOCACHE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clk_hw* @__imx_clk_scu(i8* %0, i8** %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.clk_hw*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.clk_init_data, align 8
  %13 = alloca %struct.clk_scu*, align 8
  %14 = alloca %struct.clk_hw*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.clk_scu* @kzalloc(i32 24, i32 %16)
  store %struct.clk_scu* %17, %struct.clk_scu** %13, align 8
  %18 = load %struct.clk_scu*, %struct.clk_scu** %13, align 8
  %19 = icmp ne %struct.clk_scu* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.clk_hw* @ERR_PTR(i32 %22)
  store %struct.clk_hw* %23, %struct.clk_hw** %6, align 8
  br label %64

24:                                               ; preds = %5
  %25 = load i64, i64* %10, align 8
  %26 = load %struct.clk_scu*, %struct.clk_scu** %13, align 8
  %27 = getelementptr inbounds %struct.clk_scu, %struct.clk_scu* %26, i32 0, i32 2
  store i64 %25, i64* %27, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.clk_scu*, %struct.clk_scu** %13, align 8
  %30 = getelementptr inbounds %struct.clk_scu, %struct.clk_scu* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %12, i32 0, i32 0
  store i8* %31, i8** %32, align 8
  %33 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %12, i32 0, i32 4
  store i32* @clk_scu_ops, i32** %33, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* @IMX_SC_R_A35, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %12, i32 0, i32 4
  store i32* @clk_scu_cpu_ops, i32** %38, align 8
  br label %41

39:                                               ; preds = %24
  %40 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %12, i32 0, i32 4
  store i32* @clk_scu_ops, i32** %40, align 8
  br label %41

41:                                               ; preds = %39, %37
  %42 = load i8**, i8*** %8, align 8
  %43 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %12, i32 0, i32 1
  store i8** %42, i8*** %43, align 8
  %44 = load i32, i32* %9, align 4
  %45 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %12, i32 0, i32 2
  store i32 %44, i32* %45, align 8
  %46 = load i32, i32* @CLK_GET_RATE_NOCACHE, align 4
  %47 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %12, i32 0, i32 3
  store i32 %46, i32* %47, align 4
  %48 = load %struct.clk_scu*, %struct.clk_scu** %13, align 8
  %49 = getelementptr inbounds %struct.clk_scu, %struct.clk_scu* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %49, i32 0, i32 0
  store %struct.clk_init_data* %12, %struct.clk_init_data** %50, align 8
  %51 = load %struct.clk_scu*, %struct.clk_scu** %13, align 8
  %52 = getelementptr inbounds %struct.clk_scu, %struct.clk_scu* %51, i32 0, i32 0
  store %struct.clk_hw* %52, %struct.clk_hw** %14, align 8
  %53 = load %struct.clk_hw*, %struct.clk_hw** %14, align 8
  %54 = call i32 @clk_hw_register(i32* null, %struct.clk_hw* %53)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %41
  %58 = load %struct.clk_scu*, %struct.clk_scu** %13, align 8
  %59 = call i32 @kfree(%struct.clk_scu* %58)
  %60 = load i32, i32* %15, align 4
  %61 = call %struct.clk_hw* @ERR_PTR(i32 %60)
  store %struct.clk_hw* %61, %struct.clk_hw** %14, align 8
  br label %62

62:                                               ; preds = %57, %41
  %63 = load %struct.clk_hw*, %struct.clk_hw** %14, align 8
  store %struct.clk_hw* %63, %struct.clk_hw** %6, align 8
  br label %64

64:                                               ; preds = %62, %20
  %65 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  ret %struct.clk_hw* %65
}

declare dso_local %struct.clk_scu* @kzalloc(i32, i32) #1

declare dso_local %struct.clk_hw* @ERR_PTR(i32) #1

declare dso_local i32 @clk_hw_register(i32*, %struct.clk_hw*) #1

declare dso_local i32 @kfree(%struct.clk_scu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
