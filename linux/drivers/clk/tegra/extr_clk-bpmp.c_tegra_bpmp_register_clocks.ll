; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-bpmp.c_tegra_bpmp_register_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-bpmp.c_tegra_bpmp_register_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bpmp = type { i32, %struct.tegra_bpmp_clk**, i32 }
%struct.tegra_bpmp_clk = type { i32 }
%struct.tegra_bpmp_clk_info = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to register clock %u (%s): %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_bpmp*, %struct.tegra_bpmp_clk_info*, i32)* @tegra_bpmp_register_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_bpmp_register_clocks(%struct.tegra_bpmp* %0, %struct.tegra_bpmp_clk_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tegra_bpmp*, align 8
  %6 = alloca %struct.tegra_bpmp_clk_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tegra_bpmp_clk*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tegra_bpmp_clk_info*, align 8
  store %struct.tegra_bpmp* %0, %struct.tegra_bpmp** %5, align 8
  store %struct.tegra_bpmp_clk_info* %1, %struct.tegra_bpmp_clk_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %5, align 8
  %13 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %5, align 8
  %15 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.tegra_bpmp_clk** @devm_kcalloc(i32 %16, i32 %17, i32 8, i32 %18)
  %20 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %5, align 8
  %21 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %20, i32 0, i32 1
  store %struct.tegra_bpmp_clk** %19, %struct.tegra_bpmp_clk*** %21, align 8
  %22 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %5, align 8
  %23 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %22, i32 0, i32 1
  %24 = load %struct.tegra_bpmp_clk**, %struct.tegra_bpmp_clk*** %23, align 8
  %25 = icmp ne %struct.tegra_bpmp_clk** %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %72

29:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %68, %29
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %71

34:                                               ; preds = %30
  %35 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %6, align 8
  %36 = load i32, i32* %9, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.tegra_bpmp_clk_info, %struct.tegra_bpmp_clk_info* %35, i64 %37
  store %struct.tegra_bpmp_clk_info* %38, %struct.tegra_bpmp_clk_info** %10, align 8
  %39 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %5, align 8
  %40 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %10, align 8
  %41 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call %struct.tegra_bpmp_clk* @tegra_bpmp_clk_register(%struct.tegra_bpmp* %39, %struct.tegra_bpmp_clk_info* %40, %struct.tegra_bpmp_clk_info* %41, i32 %42)
  store %struct.tegra_bpmp_clk* %43, %struct.tegra_bpmp_clk** %8, align 8
  %44 = load %struct.tegra_bpmp_clk*, %struct.tegra_bpmp_clk** %8, align 8
  %45 = call i64 @IS_ERR(%struct.tegra_bpmp_clk* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %34
  %48 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %5, align 8
  %49 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %10, align 8
  %52 = getelementptr inbounds %struct.tegra_bpmp_clk_info, %struct.tegra_bpmp_clk_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %10, align 8
  %55 = getelementptr inbounds %struct.tegra_bpmp_clk_info, %struct.tegra_bpmp_clk_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.tegra_bpmp_clk*, %struct.tegra_bpmp_clk** %8, align 8
  %58 = call i32 @PTR_ERR(%struct.tegra_bpmp_clk* %57)
  %59 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %56, i32 %58)
  br label %68

60:                                               ; preds = %34
  %61 = load %struct.tegra_bpmp_clk*, %struct.tegra_bpmp_clk** %8, align 8
  %62 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %5, align 8
  %63 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %62, i32 0, i32 1
  %64 = load %struct.tegra_bpmp_clk**, %struct.tegra_bpmp_clk*** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.tegra_bpmp_clk*, %struct.tegra_bpmp_clk** %64, i64 %66
  store %struct.tegra_bpmp_clk* %61, %struct.tegra_bpmp_clk** %67, align 8
  br label %68

68:                                               ; preds = %60, %47
  %69 = load i32, i32* %9, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %30

71:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %26
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.tegra_bpmp_clk** @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local %struct.tegra_bpmp_clk* @tegra_bpmp_clk_register(%struct.tegra_bpmp*, %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.tegra_bpmp_clk*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @PTR_ERR(%struct.tegra_bpmp_clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
