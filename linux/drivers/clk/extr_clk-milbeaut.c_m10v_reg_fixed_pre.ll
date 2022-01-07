; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-milbeaut.c_m10v_reg_fixed_pre.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-milbeaut.c_m10v_reg_fixed_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m10v_clk_div_fixed_data = type { i8*, i64, i32, i32, i32 }
%struct.clk_hw_onecell_data = type { %struct.clk_hw** }
%struct.clk_hw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.m10v_clk_div_fixed_data*, %struct.clk_hw_onecell_data*, i8*)* @m10v_reg_fixed_pre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m10v_reg_fixed_pre(%struct.m10v_clk_div_fixed_data* %0, %struct.clk_hw_onecell_data* %1, i8* %2) #0 {
  %4 = alloca %struct.m10v_clk_div_fixed_data*, align 8
  %5 = alloca %struct.clk_hw_onecell_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.clk_hw*, align 8
  %8 = alloca i8*, align 8
  store %struct.m10v_clk_div_fixed_data* %0, %struct.m10v_clk_div_fixed_data** %4, align 8
  store %struct.clk_hw_onecell_data* %1, %struct.clk_hw_onecell_data** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.m10v_clk_div_fixed_data*, %struct.m10v_clk_div_fixed_data** %4, align 8
  %10 = getelementptr inbounds %struct.m10v_clk_div_fixed_data, %struct.m10v_clk_div_fixed_data* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.m10v_clk_div_fixed_data*, %struct.m10v_clk_div_fixed_data** %4, align 8
  %15 = getelementptr inbounds %struct.m10v_clk_div_fixed_data, %struct.m10v_clk_div_fixed_data* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  br label %19

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  br label %19

19:                                               ; preds = %17, %13
  %20 = phi i8* [ %16, %13 ], [ %18, %17 ]
  store i8* %20, i8** %8, align 8
  %21 = load %struct.m10v_clk_div_fixed_data*, %struct.m10v_clk_div_fixed_data** %4, align 8
  %22 = getelementptr inbounds %struct.m10v_clk_div_fixed_data, %struct.m10v_clk_div_fixed_data* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load %struct.m10v_clk_div_fixed_data*, %struct.m10v_clk_div_fixed_data** %4, align 8
  %26 = getelementptr inbounds %struct.m10v_clk_div_fixed_data, %struct.m10v_clk_div_fixed_data* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.m10v_clk_div_fixed_data*, %struct.m10v_clk_div_fixed_data** %4, align 8
  %29 = getelementptr inbounds %struct.m10v_clk_div_fixed_data, %struct.m10v_clk_div_fixed_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.clk_hw* @clk_hw_register_fixed_factor(i32* null, i32 %23, i8* %24, i32 0, i32 %27, i32 %30)
  store %struct.clk_hw* %31, %struct.clk_hw** %7, align 8
  %32 = load %struct.m10v_clk_div_fixed_data*, %struct.m10v_clk_div_fixed_data** %4, align 8
  %33 = getelementptr inbounds %struct.m10v_clk_div_fixed_data, %struct.m10v_clk_div_fixed_data* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp uge i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %19
  %37 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %38 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %5, align 8
  %39 = getelementptr inbounds %struct.clk_hw_onecell_data, %struct.clk_hw_onecell_data* %38, i32 0, i32 0
  %40 = load %struct.clk_hw**, %struct.clk_hw*** %39, align 8
  %41 = load %struct.m10v_clk_div_fixed_data*, %struct.m10v_clk_div_fixed_data** %4, align 8
  %42 = getelementptr inbounds %struct.m10v_clk_div_fixed_data, %struct.m10v_clk_div_fixed_data* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %40, i64 %43
  store %struct.clk_hw* %37, %struct.clk_hw** %44, align 8
  br label %45

45:                                               ; preds = %36, %19
  ret void
}

declare dso_local %struct.clk_hw* @clk_hw_register_fixed_factor(i32*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
