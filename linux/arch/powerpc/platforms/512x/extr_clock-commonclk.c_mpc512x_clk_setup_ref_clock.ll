; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/512x/extr_clock-commonclk.c_mpc512x_clk_setup_ref_clock.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/512x/extr_clock-commonclk.c_mpc512x_clk_setup_ref_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.device_node = type { i32 }
%struct.clk = type { i32 }

@clkregs = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"osc\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@clks = common dso_local global i32* null, align 8
@MPC512x_CLK_REF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"calc rate %d != OF spec %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_node*, i32, i32*, i32*, i32*)* @mpc512x_clk_setup_ref_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc512x_clk_setup_ref_clock(%struct.device_node* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.clk*, align 8
  %12 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = call i32 (...) @get_spmf_mult()
  %14 = load i32*, i32** %8, align 8
  store i32 %13, i32* %14, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %16, 2
  store i32 %17, i32* %15, align 4
  %18 = call i32 (...) @get_sys_div_x2()
  %19 = load i32*, i32** %9, align 8
  store i32 %18, i32* %19, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clkregs, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @get_bit_field(i32* %21, i32 23, i32 3)
  %23 = load i32*, i32** %10, align 8
  store i32 %22, i32* %23, align 4
  %24 = load %struct.device_node*, %struct.device_node** %6, align 8
  %25 = call %struct.clk* @of_clk_get_by_name(%struct.device_node* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.clk* %25, %struct.clk** %11, align 8
  %26 = load %struct.clk*, %struct.clk** %11, align 8
  %27 = call i32 @IS_ERR(%struct.clk* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %64, label %29

29:                                               ; preds = %5
  %30 = call i32 @mpc512x_clk_factor(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 1, i32 1)
  %31 = load i32*, i32** @clks, align 8
  %32 = load i64, i64* @MPC512x_CLK_REF, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32 %30, i32* %33, align 4
  %34 = load i32*, i32** @clks, align 8
  %35 = load i64, i64* @MPC512x_CLK_REF, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @clk_get_rate(i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %12, align 4
  %42 = mul nsw i32 %41, %40
  store i32 %42, i32* %12, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %12, align 4
  %46 = sdiv i32 %45, %44
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = sdiv i32 %47, 2
  store i32 %48, i32* %12, align 4
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %12, align 4
  %52 = sdiv i32 %51, %50
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %29
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @pr_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %55, %29
  br label %85

64:                                               ; preds = %5
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %12, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %12, align 4
  %69 = mul nsw i32 %68, %67
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = mul nsw i32 %70, 2
  store i32 %71, i32* %12, align 4
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %12, align 4
  %75 = mul nsw i32 %74, %73
  store i32 %75, i32* %12, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %12, align 4
  %79 = sdiv i32 %78, %77
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @mpc512x_clk_fixed(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load i32*, i32** @clks, align 8
  %83 = load i64, i64* @MPC512x_CLK_REF, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32 %81, i32* %84, align 4
  br label %85

85:                                               ; preds = %64, %63
  ret void
}

declare dso_local i32 @get_spmf_mult(...) #1

declare dso_local i32 @get_sys_div_x2(...) #1

declare dso_local i32 @get_bit_field(i32*, i32, i32) #1

declare dso_local %struct.clk* @of_clk_get_by_name(%struct.device_node*, i8*) #1

declare dso_local i32 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @mpc512x_clk_factor(i8*, i8*, i32, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @mpc512x_clk_fixed(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
