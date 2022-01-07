; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_clk-dra7-atl.c_atl_clk_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_clk-dra7-atl.c_atl_clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.dra7_atl_desc = type { i32, i32, %struct.TYPE_2__*, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"atl%d has not been configured\0A\00", align 1
@DRA7_ATL_SWEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @atl_clk_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl_clk_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.dra7_atl_desc*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %4 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %5 = call %struct.dra7_atl_desc* @to_atl_desc(%struct.clk_hw* %4)
  store %struct.dra7_atl_desc* %5, %struct.dra7_atl_desc** %3, align 8
  %6 = load %struct.dra7_atl_desc*, %struct.dra7_atl_desc** %3, align 8
  %7 = getelementptr inbounds %struct.dra7_atl_desc, %struct.dra7_atl_desc* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %58

11:                                               ; preds = %1
  %12 = load %struct.dra7_atl_desc*, %struct.dra7_atl_desc** %3, align 8
  %13 = getelementptr inbounds %struct.dra7_atl_desc, %struct.dra7_atl_desc* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %11
  %21 = load %struct.dra7_atl_desc*, %struct.dra7_atl_desc** %3, align 8
  %22 = getelementptr inbounds %struct.dra7_atl_desc, %struct.dra7_atl_desc* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.dra7_atl_desc*, %struct.dra7_atl_desc** %3, align 8
  %27 = getelementptr inbounds %struct.dra7_atl_desc, %struct.dra7_atl_desc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_warn(i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %20, %11
  %31 = load %struct.dra7_atl_desc*, %struct.dra7_atl_desc** %3, align 8
  %32 = getelementptr inbounds %struct.dra7_atl_desc, %struct.dra7_atl_desc* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pm_runtime_get_sync(i32 %35)
  %37 = load %struct.dra7_atl_desc*, %struct.dra7_atl_desc** %3, align 8
  %38 = getelementptr inbounds %struct.dra7_atl_desc, %struct.dra7_atl_desc* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load %struct.dra7_atl_desc*, %struct.dra7_atl_desc** %3, align 8
  %41 = getelementptr inbounds %struct.dra7_atl_desc, %struct.dra7_atl_desc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @DRA7_ATL_ATLCR_REG(i32 %42)
  %44 = load %struct.dra7_atl_desc*, %struct.dra7_atl_desc** %3, align 8
  %45 = getelementptr inbounds %struct.dra7_atl_desc, %struct.dra7_atl_desc* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %46, 1
  %48 = call i32 @atl_write(%struct.TYPE_2__* %39, i32 %43, i64 %47)
  %49 = load %struct.dra7_atl_desc*, %struct.dra7_atl_desc** %3, align 8
  %50 = getelementptr inbounds %struct.dra7_atl_desc, %struct.dra7_atl_desc* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load %struct.dra7_atl_desc*, %struct.dra7_atl_desc** %3, align 8
  %53 = getelementptr inbounds %struct.dra7_atl_desc, %struct.dra7_atl_desc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @DRA7_ATL_SWEN_REG(i32 %54)
  %56 = load i64, i64* @DRA7_ATL_SWEN, align 8
  %57 = call i32 @atl_write(%struct.TYPE_2__* %51, i32 %55, i64 %56)
  br label %58

58:                                               ; preds = %30, %10
  %59 = load %struct.dra7_atl_desc*, %struct.dra7_atl_desc** %3, align 8
  %60 = getelementptr inbounds %struct.dra7_atl_desc, %struct.dra7_atl_desc* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  ret i32 0
}

declare dso_local %struct.dra7_atl_desc* @to_atl_desc(%struct.clk_hw*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @atl_write(%struct.TYPE_2__*, i32, i64) #1

declare dso_local i32 @DRA7_ATL_ATLCR_REG(i32) #1

declare dso_local i32 @DRA7_ATL_SWEN_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
