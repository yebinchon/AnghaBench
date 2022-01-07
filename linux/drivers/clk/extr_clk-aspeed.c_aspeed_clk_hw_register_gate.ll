; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-aspeed.c_aspeed_clk_hw_register_gate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-aspeed.c_aspeed_clk_hw_register_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i64, i8**, i32, i32* }
%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.aspeed_clk_gate = type { %struct.clk_hw, i32*, i8*, i8*, i8*, %struct.regmap* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@aspeed_clk_gate_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk_hw* (%struct.device*, i8*, i8*, i64, %struct.regmap*, i8*, i8*, i8*, i32*)* @aspeed_clk_hw_register_gate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk_hw* @aspeed_clk_hw_register_gate(%struct.device* %0, i8* %1, i8* %2, i64 %3, %struct.regmap* %4, i8* %5, i8* %6, i8* %7, i32* %8) #0 {
  %10 = alloca %struct.clk_hw*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.regmap*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.aspeed_clk_gate*, align 8
  %21 = alloca %struct.clk_init_data, align 8
  %22 = alloca %struct.clk_hw*, align 8
  %23 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %11, align 8
  store i8* %1, i8** %12, align 8
  store i8* %2, i8** %13, align 8
  store i64 %3, i64* %14, align 8
  store %struct.regmap* %4, %struct.regmap** %15, align 8
  store i8* %5, i8** %16, align 8
  store i8* %6, i8** %17, align 8
  store i8* %7, i8** %18, align 8
  store i32* %8, i32** %19, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.aspeed_clk_gate* @kzalloc(i32 48, i32 %24)
  store %struct.aspeed_clk_gate* %25, %struct.aspeed_clk_gate** %20, align 8
  %26 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %20, align 8
  %27 = icmp ne %struct.aspeed_clk_gate* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %9
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.clk_hw* @ERR_PTR(i32 %30)
  store %struct.clk_hw* %31, %struct.clk_hw** %10, align 8
  br label %82

32:                                               ; preds = %9
  %33 = load i8*, i8** %12, align 8
  %34 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %21, i32 0, i32 0
  store i8* %33, i8** %34, align 8
  %35 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %21, i32 0, i32 4
  store i32* @aspeed_clk_gate_ops, i32** %35, align 8
  %36 = load i64, i64* %14, align 8
  %37 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %21, i32 0, i32 1
  store i64 %36, i64* %37, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %42

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %40
  %43 = phi i8** [ %13, %40 ], [ null, %41 ]
  %44 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %21, i32 0, i32 2
  store i8** %43, i8*** %44, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = icmp ne i8* %45, null
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 1, i32 0
  %49 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %21, i32 0, i32 3
  store i32 %48, i32* %49, align 8
  %50 = load %struct.regmap*, %struct.regmap** %15, align 8
  %51 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %20, align 8
  %52 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %51, i32 0, i32 5
  store %struct.regmap* %50, %struct.regmap** %52, align 8
  %53 = load i8*, i8** %16, align 8
  %54 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %20, align 8
  %55 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %54, i32 0, i32 4
  store i8* %53, i8** %55, align 8
  %56 = load i8*, i8** %17, align 8
  %57 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %20, align 8
  %58 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** %18, align 8
  %60 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %20, align 8
  %61 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load i32*, i32** %19, align 8
  %63 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %20, align 8
  %64 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %63, i32 0, i32 1
  store i32* %62, i32** %64, align 8
  %65 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %20, align 8
  %66 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %66, i32 0, i32 0
  store %struct.clk_init_data* %21, %struct.clk_init_data** %67, align 8
  %68 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %20, align 8
  %69 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %68, i32 0, i32 0
  store %struct.clk_hw* %69, %struct.clk_hw** %22, align 8
  %70 = load %struct.device*, %struct.device** %11, align 8
  %71 = load %struct.clk_hw*, %struct.clk_hw** %22, align 8
  %72 = call i32 @clk_hw_register(%struct.device* %70, %struct.clk_hw* %71)
  store i32 %72, i32* %23, align 4
  %73 = load i32, i32* %23, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %42
  %76 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %20, align 8
  %77 = call i32 @kfree(%struct.aspeed_clk_gate* %76)
  %78 = load i32, i32* %23, align 4
  %79 = call %struct.clk_hw* @ERR_PTR(i32 %78)
  store %struct.clk_hw* %79, %struct.clk_hw** %22, align 8
  br label %80

80:                                               ; preds = %75, %42
  %81 = load %struct.clk_hw*, %struct.clk_hw** %22, align 8
  store %struct.clk_hw* %81, %struct.clk_hw** %10, align 8
  br label %82

82:                                               ; preds = %80, %28
  %83 = load %struct.clk_hw*, %struct.clk_hw** %10, align 8
  ret %struct.clk_hw* %83
}

declare dso_local %struct.aspeed_clk_gate* @kzalloc(i32, i32) #1

declare dso_local %struct.clk_hw* @ERR_PTR(i32) #1

declare dso_local i32 @clk_hw_register(%struct.device*, %struct.clk_hw*) #1

declare dso_local i32 @kfree(%struct.aspeed_clk_gate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
