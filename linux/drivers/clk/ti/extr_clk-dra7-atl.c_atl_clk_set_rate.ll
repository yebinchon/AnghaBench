; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_clk-dra7-atl.c_atl_clk_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_clk-dra7-atl.c_atl_clk_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.dra7_atl_desc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DRA7_ATL_DIVIDER_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @atl_clk_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl_clk_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dra7_atl_desc*, align 8
  %9 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %11 = icmp ne %struct.clk_hw* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12, %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %39

18:                                               ; preds = %12
  %19 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %20 = call %struct.dra7_atl_desc* @to_atl_desc(%struct.clk_hw* %19)
  store %struct.dra7_atl_desc* %20, %struct.dra7_atl_desc** %8, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %6, align 8
  %23 = udiv i64 %22, 2
  %24 = add i64 %21, %23
  %25 = load i64, i64* %6, align 8
  %26 = udiv i64 %24, %25
  %27 = sub i64 %26, 1
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @DRA7_ATL_DIVIDER_MASK, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %18
  %33 = load i32, i32* @DRA7_ATL_DIVIDER_MASK, align 4
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %32, %18
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  %37 = load %struct.dra7_atl_desc*, %struct.dra7_atl_desc** %8, align 8
  %38 = getelementptr inbounds %struct.dra7_atl_desc, %struct.dra7_atl_desc* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %34, %15
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.dra7_atl_desc* @to_atl_desc(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
