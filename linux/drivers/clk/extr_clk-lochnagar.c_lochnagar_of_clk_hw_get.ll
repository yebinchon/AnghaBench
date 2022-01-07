; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-lochnagar.c_lochnagar_of_clk_hw_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-lochnagar.c_lochnagar_of_clk_hw_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.of_phandle_args = type { i32* }
%struct.lochnagar_clk_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.clk_hw }

@.str = private unnamed_addr constant [18 x i8] c"Invalid index %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk_hw* (%struct.of_phandle_args*, i8*)* @lochnagar_of_clk_hw_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk_hw* @lochnagar_of_clk_hw_get(%struct.of_phandle_args* %0, i8* %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.of_phandle_args*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lochnagar_clk_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.of_phandle_args* %0, %struct.of_phandle_args** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.lochnagar_clk_priv*
  store %struct.lochnagar_clk_priv* %9, %struct.lochnagar_clk_priv** %6, align 8
  %10 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %11 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.lochnagar_clk_priv*, %struct.lochnagar_clk_priv** %6, align 8
  %17 = getelementptr inbounds %struct.lochnagar_clk_priv, %struct.lochnagar_clk_priv* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.TYPE_2__* %18)
  %20 = icmp uge i32 %15, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = load %struct.lochnagar_clk_priv*, %struct.lochnagar_clk_priv** %6, align 8
  %23 = getelementptr inbounds %struct.lochnagar_clk_priv, %struct.lochnagar_clk_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.clk_hw* @ERR_PTR(i32 %28)
  store %struct.clk_hw* %29, %struct.clk_hw** %3, align 8
  br label %38

30:                                               ; preds = %2
  %31 = load %struct.lochnagar_clk_priv*, %struct.lochnagar_clk_priv** %6, align 8
  %32 = getelementptr inbounds %struct.lochnagar_clk_priv, %struct.lochnagar_clk_priv* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store %struct.clk_hw* %37, %struct.clk_hw** %3, align 8
  br label %38

38:                                               ; preds = %30, %21
  %39 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  ret %struct.clk_hw* %39
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local %struct.clk_hw* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
