; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/spear/extr_clk-aux-synth.c_aux_calc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/spear/extr_clk-aux-synth.c_aux_calc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_aux = type { %struct.aux_rate_tbl* }
%struct.aux_rate_tbl = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i32)* @aux_calc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @aux_calc_rate(%struct.clk_hw* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.clk_aux*, align 8
  %8 = alloca %struct.aux_rate_tbl*, align 8
  %9 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %11 = call %struct.clk_aux* @to_clk_aux(%struct.clk_hw* %10)
  store %struct.clk_aux* %11, %struct.clk_aux** %7, align 8
  %12 = load %struct.clk_aux*, %struct.clk_aux** %7, align 8
  %13 = getelementptr inbounds %struct.clk_aux, %struct.clk_aux* %12, i32 0, i32 0
  %14 = load %struct.aux_rate_tbl*, %struct.aux_rate_tbl** %13, align 8
  store %struct.aux_rate_tbl* %14, %struct.aux_rate_tbl** %8, align 8
  %15 = load %struct.aux_rate_tbl*, %struct.aux_rate_tbl** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.aux_rate_tbl, %struct.aux_rate_tbl* %15, i64 %17
  %19 = getelementptr inbounds %struct.aux_rate_tbl, %struct.aux_rate_tbl* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 2
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %5, align 8
  %26 = udiv i64 %25, 10000
  %27 = load %struct.aux_rate_tbl*, %struct.aux_rate_tbl** %8, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.aux_rate_tbl, %struct.aux_rate_tbl* %27, i64 %29
  %31 = getelementptr inbounds %struct.aux_rate_tbl, %struct.aux_rate_tbl* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = mul i64 %26, %32
  %34 = load %struct.aux_rate_tbl*, %struct.aux_rate_tbl** %8, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.aux_rate_tbl, %struct.aux_rate_tbl* %34, i64 %36
  %38 = getelementptr inbounds %struct.aux_rate_tbl, %struct.aux_rate_tbl* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %9, align 8
  %41 = mul i64 %39, %40
  %42 = udiv i64 %33, %41
  %43 = mul i64 %42, 10000
  ret i64 %43
}

declare dso_local %struct.clk_aux* @to_clk_aux(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
