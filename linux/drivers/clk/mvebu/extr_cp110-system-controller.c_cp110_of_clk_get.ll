; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_cp110-system-controller.c_cp110_of_clk_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_cp110-system-controller.c_cp110_of_clk_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.of_phandle_args = type { i32* }
%struct.clk_hw_onecell_data = type { %struct.clk_hw** }

@CP110_CLK_TYPE_CORE = common dso_local global i32 0, align 4
@CP110_MAX_CORE_CLOCKS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CP110_CLK_TYPE_GATABLE = common dso_local global i32 0, align 4
@CP110_MAX_GATABLE_CLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk_hw* (%struct.of_phandle_args*, i8*)* @cp110_of_clk_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk_hw* @cp110_of_clk_get(%struct.of_phandle_args* %0, i8* %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.of_phandle_args*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.clk_hw_onecell_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.of_phandle_args* %0, %struct.of_phandle_args** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.clk_hw_onecell_data*
  store %struct.clk_hw_onecell_data* %10, %struct.clk_hw_onecell_data** %6, align 8
  %11 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %12 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %17 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @CP110_CLK_TYPE_CORE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @CP110_MAX_CORE_CLOCKS, align 4
  %27 = icmp uge i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.clk_hw* @ERR_PTR(i32 %30)
  store %struct.clk_hw* %31, %struct.clk_hw** %3, align 8
  br label %67

32:                                               ; preds = %24
  %33 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %6, align 8
  %34 = getelementptr inbounds %struct.clk_hw_onecell_data, %struct.clk_hw_onecell_data* %33, i32 0, i32 0
  %35 = load %struct.clk_hw**, %struct.clk_hw*** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %35, i64 %37
  %39 = load %struct.clk_hw*, %struct.clk_hw** %38, align 8
  store %struct.clk_hw* %39, %struct.clk_hw** %3, align 8
  br label %67

40:                                               ; preds = %2
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @CP110_CLK_TYPE_GATABLE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %40
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @CP110_MAX_GATABLE_CLOCKS, align 4
  %47 = icmp uge i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  %51 = call %struct.clk_hw* @ERR_PTR(i32 %50)
  store %struct.clk_hw* %51, %struct.clk_hw** %3, align 8
  br label %67

52:                                               ; preds = %44
  %53 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %6, align 8
  %54 = getelementptr inbounds %struct.clk_hw_onecell_data, %struct.clk_hw_onecell_data* %53, i32 0, i32 0
  %55 = load %struct.clk_hw**, %struct.clk_hw*** %54, align 8
  %56 = load i32, i32* @CP110_MAX_CORE_CLOCKS, align 4
  %57 = load i32, i32* %8, align 4
  %58 = add i32 %56, %57
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %55, i64 %59
  %61 = load %struct.clk_hw*, %struct.clk_hw** %60, align 8
  store %struct.clk_hw* %61, %struct.clk_hw** %3, align 8
  br label %67

62:                                               ; preds = %40
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  %66 = call %struct.clk_hw* @ERR_PTR(i32 %65)
  store %struct.clk_hw* %66, %struct.clk_hw** %3, align 8
  br label %67

67:                                               ; preds = %63, %52, %48, %32, %28
  %68 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  ret %struct.clk_hw* %68
}

declare dso_local %struct.clk_hw* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
