; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-bpmp.c_tegra_bpmp_clk_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-bpmp.c_tegra_bpmp_clk_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.tegra_bpmp_clk = type { i32, i64*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.cmd_clk_get_parent_response = type { i64 }
%struct.tegra_bpmp_clk_message = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, %struct.cmd_clk_get_parent_response* }

@CMD_CLK_GET_PARENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to get parent for %s: %d\0A\00", align 1
@U8_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @tegra_bpmp_clk_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_bpmp_clk_get_parent(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.tegra_bpmp_clk*, align 8
  %5 = alloca %struct.cmd_clk_get_parent_response, align 8
  %6 = alloca %struct.tegra_bpmp_clk_message, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %10 = call %struct.tegra_bpmp_clk* @to_tegra_bpmp_clk(%struct.clk_hw* %9)
  store %struct.tegra_bpmp_clk* %10, %struct.tegra_bpmp_clk** %4, align 8
  %11 = call i32 @memset(%struct.tegra_bpmp_clk_message* %6, i32 0, i32 24)
  %12 = load i32, i32* @CMD_CLK_GET_PARENT, align 4
  %13 = getelementptr inbounds %struct.tegra_bpmp_clk_message, %struct.tegra_bpmp_clk_message* %6, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = load %struct.tegra_bpmp_clk*, %struct.tegra_bpmp_clk** %4, align 8
  %15 = getelementptr inbounds %struct.tegra_bpmp_clk, %struct.tegra_bpmp_clk* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.tegra_bpmp_clk_message, %struct.tegra_bpmp_clk_message* %6, i32 0, i32 1
  store i32 %16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.tegra_bpmp_clk_message, %struct.tegra_bpmp_clk_message* %6, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store %struct.cmd_clk_get_parent_response* %5, %struct.cmd_clk_get_parent_response** %19, align 8
  %20 = getelementptr inbounds %struct.tegra_bpmp_clk_message, %struct.tegra_bpmp_clk_message* %6, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 8, i32* %21, align 8
  %22 = load %struct.tegra_bpmp_clk*, %struct.tegra_bpmp_clk** %4, align 8
  %23 = getelementptr inbounds %struct.tegra_bpmp_clk, %struct.tegra_bpmp_clk* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = call i32 @tegra_bpmp_clk_transfer(%struct.TYPE_4__* %24, %struct.tegra_bpmp_clk_message* %6)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %1
  %29 = load %struct.tegra_bpmp_clk*, %struct.tegra_bpmp_clk** %4, align 8
  %30 = getelementptr inbounds %struct.tegra_bpmp_clk, %struct.tegra_bpmp_clk* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %35 = call i32 @clk_hw_get_name(%struct.clk_hw* %34)
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load i32, i32* @U8_MAX, align 4
  store i32 %38, i32* %2, align 4
  br label %65

39:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %60, %39
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.tegra_bpmp_clk*, %struct.tegra_bpmp_clk** %4, align 8
  %43 = getelementptr inbounds %struct.tegra_bpmp_clk, %struct.tegra_bpmp_clk* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ult i32 %41, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %40
  %47 = load %struct.tegra_bpmp_clk*, %struct.tegra_bpmp_clk** %4, align 8
  %48 = getelementptr inbounds %struct.tegra_bpmp_clk, %struct.tegra_bpmp_clk* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.cmd_clk_get_parent_response, %struct.cmd_clk_get_parent_response* %5, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %53, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %2, align 4
  br label %65

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %7, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %40

63:                                               ; preds = %40
  %64 = load i32, i32* @U8_MAX, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %57, %28
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.tegra_bpmp_clk* @to_tegra_bpmp_clk(%struct.clk_hw*) #1

declare dso_local i32 @memset(%struct.tegra_bpmp_clk_message*, i32, i32) #1

declare dso_local i32 @tegra_bpmp_clk_transfer(%struct.TYPE_4__*, %struct.tegra_bpmp_clk_message*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @clk_hw_get_name(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
