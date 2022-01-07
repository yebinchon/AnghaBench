; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32f4.c_stm32_register_aux_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32f4.c_stm32_register_aux_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_ops = type { i32 }
%struct.clk_hw = type { i32 }
%struct.clk_gate = type { %struct.clk_hw, i64, i8*, i8*, i8*, i32*, i8* }
%struct.clk_mux = type { %struct.clk_hw, i64, i8*, i8*, i8*, i32*, i8* }

@NO_GATE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@base = common dso_local global i8* null, align 8
@clk_gate_ops = common dso_local global %struct.clk_ops zeroinitializer, align 4
@NO_MUX = common dso_local global i32 0, align 4
@clk_mux_ops = common dso_local global %struct.clk_ops zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk_hw* (i8*, i8**, i32, i32, i8*, i8*, i32, i8*, i64, i32*)* @stm32_register_aux_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk_hw* @stm32_register_aux_clk(i8* %0, i8** %1, i32 %2, i32 %3, i8* %4, i8* %5, i32 %6, i8* %7, i64 %8, i32* %9) #0 {
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.clk_hw*, align 8
  %22 = alloca %struct.clk_gate*, align 8
  %23 = alloca %struct.clk_mux*, align 8
  %24 = alloca %struct.clk_hw*, align 8
  %25 = alloca %struct.clk_hw*, align 8
  %26 = alloca %struct.clk_ops*, align 8
  %27 = alloca %struct.clk_ops*, align 8
  store i8* %0, i8** %11, align 8
  store i8** %1, i8*** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i64 %8, i64* %19, align 8
  store i32* %9, i32** %20, align 8
  store %struct.clk_gate* null, %struct.clk_gate** %22, align 8
  store %struct.clk_mux* null, %struct.clk_mux** %23, align 8
  store %struct.clk_hw* null, %struct.clk_hw** %24, align 8
  store %struct.clk_hw* null, %struct.clk_hw** %25, align 8
  store %struct.clk_ops* null, %struct.clk_ops** %26, align 8
  store %struct.clk_ops* null, %struct.clk_ops** %27, align 8
  %28 = load i32, i32* %17, align 4
  %29 = load i32, i32* @NO_GATE, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %58

31:                                               ; preds = %10
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.clk_mux* @kzalloc(i32 56, i32 %32)
  %34 = bitcast %struct.clk_mux* %33 to %struct.clk_gate*
  store %struct.clk_gate* %34, %struct.clk_gate** %22, align 8
  %35 = load %struct.clk_gate*, %struct.clk_gate** %22, align 8
  %36 = icmp ne %struct.clk_gate* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  %40 = call %struct.clk_hw* @ERR_PTR(i32 %39)
  store %struct.clk_hw* %40, %struct.clk_hw** %21, align 8
  br label %108

41:                                               ; preds = %31
  %42 = load i8*, i8** @base, align 8
  %43 = load i32, i32* %17, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr i8, i8* %42, i64 %44
  %46 = load %struct.clk_gate*, %struct.clk_gate** %22, align 8
  %47 = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %46, i32 0, i32 4
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** %18, align 8
  %49 = load %struct.clk_gate*, %struct.clk_gate** %22, align 8
  %50 = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %49, i32 0, i32 6
  store i8* %48, i8** %50, align 8
  %51 = load %struct.clk_gate*, %struct.clk_gate** %22, align 8
  %52 = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load i32*, i32** %20, align 8
  %54 = load %struct.clk_gate*, %struct.clk_gate** %22, align 8
  %55 = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %54, i32 0, i32 5
  store i32* %53, i32** %55, align 8
  %56 = load %struct.clk_gate*, %struct.clk_gate** %22, align 8
  %57 = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %56, i32 0, i32 0
  store %struct.clk_hw* %57, %struct.clk_hw** %25, align 8
  store %struct.clk_ops* @clk_gate_ops, %struct.clk_ops** %27, align 8
  br label %58

58:                                               ; preds = %41, %10
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* @NO_MUX, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %88

62:                                               ; preds = %58
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call %struct.clk_mux* @kzalloc(i32 56, i32 %63)
  store %struct.clk_mux* %64, %struct.clk_mux** %23, align 8
  %65 = load %struct.clk_mux*, %struct.clk_mux** %23, align 8
  %66 = icmp ne %struct.clk_mux* %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  %70 = call %struct.clk_hw* @ERR_PTR(i32 %69)
  store %struct.clk_hw* %70, %struct.clk_hw** %21, align 8
  br label %108

71:                                               ; preds = %62
  %72 = load i8*, i8** @base, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr i8, i8* %72, i64 %74
  %76 = load %struct.clk_mux*, %struct.clk_mux** %23, align 8
  %77 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %76, i32 0, i32 4
  store i8* %75, i8** %77, align 8
  %78 = load i8*, i8** %15, align 8
  %79 = load %struct.clk_mux*, %struct.clk_mux** %23, align 8
  %80 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %79, i32 0, i32 3
  store i8* %78, i8** %80, align 8
  %81 = load i8*, i8** %16, align 8
  %82 = load %struct.clk_mux*, %struct.clk_mux** %23, align 8
  %83 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  %84 = load %struct.clk_mux*, %struct.clk_mux** %23, align 8
  %85 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %84, i32 0, i32 1
  store i64 0, i64* %85, align 8
  %86 = load %struct.clk_mux*, %struct.clk_mux** %23, align 8
  %87 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %86, i32 0, i32 0
  store %struct.clk_hw* %87, %struct.clk_hw** %24, align 8
  store %struct.clk_ops* @clk_mux_ops, %struct.clk_ops** %26, align 8
  br label %88

88:                                               ; preds = %71, %58
  %89 = load %struct.clk_hw*, %struct.clk_hw** %24, align 8
  %90 = icmp eq %struct.clk_hw* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load %struct.clk_hw*, %struct.clk_hw** %25, align 8
  %93 = icmp eq %struct.clk_hw* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  %97 = call %struct.clk_hw* @ERR_PTR(i32 %96)
  store %struct.clk_hw* %97, %struct.clk_hw** %21, align 8
  br label %108

98:                                               ; preds = %91, %88
  %99 = load i8*, i8** %11, align 8
  %100 = load i8**, i8*** %12, align 8
  %101 = load i32, i32* %13, align 4
  %102 = load %struct.clk_hw*, %struct.clk_hw** %24, align 8
  %103 = load %struct.clk_ops*, %struct.clk_ops** %26, align 8
  %104 = load %struct.clk_hw*, %struct.clk_hw** %25, align 8
  %105 = load %struct.clk_ops*, %struct.clk_ops** %27, align 8
  %106 = load i64, i64* %19, align 8
  %107 = call %struct.clk_hw* @clk_hw_register_composite(i32* null, i8* %99, i8** %100, i32 %101, %struct.clk_hw* %102, %struct.clk_ops* %103, i32* null, i32* null, %struct.clk_hw* %104, %struct.clk_ops* %105, i64 %106)
  store %struct.clk_hw* %107, %struct.clk_hw** %21, align 8
  br label %108

108:                                              ; preds = %98, %94, %67, %37
  %109 = load %struct.clk_hw*, %struct.clk_hw** %21, align 8
  %110 = call i64 @IS_ERR(%struct.clk_hw* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %108
  %113 = load %struct.clk_gate*, %struct.clk_gate** %22, align 8
  %114 = bitcast %struct.clk_gate* %113 to %struct.clk_mux*
  %115 = call i32 @kfree(%struct.clk_mux* %114)
  %116 = load %struct.clk_mux*, %struct.clk_mux** %23, align 8
  %117 = call i32 @kfree(%struct.clk_mux* %116)
  br label %118

118:                                              ; preds = %112, %108
  %119 = load %struct.clk_hw*, %struct.clk_hw** %21, align 8
  ret %struct.clk_hw* %119
}

declare dso_local %struct.clk_mux* @kzalloc(i32, i32) #1

declare dso_local %struct.clk_hw* @ERR_PTR(i32) #1

declare dso_local %struct.clk_hw* @clk_hw_register_composite(i32*, i8*, i8**, i32, %struct.clk_hw*, %struct.clk_ops*, i32*, i32*, %struct.clk_hw*, %struct.clk_ops*, i64) #1

declare dso_local i64 @IS_ERR(%struct.clk_hw*) #1

declare dso_local i32 @kfree(%struct.clk_mux*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
