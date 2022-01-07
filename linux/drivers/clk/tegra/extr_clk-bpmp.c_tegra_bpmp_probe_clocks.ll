; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-bpmp.c_tegra_bpmp_probe_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-bpmp.c_tegra_bpmp_probe_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bpmp = type { i32 }
%struct.tegra_bpmp_clk_info = type { i64, i8*, i32 }

@.str = private unnamed_addr constant [22 x i8] c"maximum clock ID: %u\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@U8_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"clock %u has too many parents (%u, max: %u)\0A\00", align 1
@TEGRA_BPMP_DUMP_CLOCK_INFO = common dso_local global i64 0, align 8
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"holes: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_bpmp*, %struct.tegra_bpmp_clk_info**)* @tegra_bpmp_probe_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_bpmp_probe_clocks(%struct.tegra_bpmp* %0, %struct.tegra_bpmp_clk_info** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_bpmp*, align 8
  %5 = alloca %struct.tegra_bpmp_clk_info**, align 8
  %6 = alloca %struct.tegra_bpmp_clk_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tegra_bpmp_clk_info*, align 8
  store %struct.tegra_bpmp* %0, %struct.tegra_bpmp** %4, align 8
  store %struct.tegra_bpmp_clk_info** %1, %struct.tegra_bpmp_clk_info*** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %4, align 8
  %14 = call i32 @tegra_bpmp_clk_get_max_id(%struct.tegra_bpmp* %13)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %3, align 4
  br label %105

19:                                               ; preds = %2
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %4, align 8
  %22 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = add i32 %26, 1
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.tegra_bpmp_clk_info* @kcalloc(i32 %27, i32 24, i32 %28)
  store %struct.tegra_bpmp_clk_info* %29, %struct.tegra_bpmp_clk_info** %6, align 8
  %30 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %6, align 8
  %31 = icmp ne %struct.tegra_bpmp_clk_info* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %19
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %105

35:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %93, %35
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ule i32 %37, %38
  br i1 %39, label %40, label %96

40:                                               ; preds = %36
  %41 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.tegra_bpmp_clk_info, %struct.tegra_bpmp_clk_info* %41, i64 %43
  store %struct.tegra_bpmp_clk_info* %44, %struct.tegra_bpmp_clk_info** %12, align 8
  %45 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %4, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %12, align 8
  %48 = call i32 @tegra_bpmp_clk_get_info(%struct.tegra_bpmp* %45, i32 %46, %struct.tegra_bpmp_clk_info* %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %93

52:                                               ; preds = %40
  %53 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %12, align 8
  %54 = getelementptr inbounds %struct.tegra_bpmp_clk_info, %struct.tegra_bpmp_clk_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @U8_MAX, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %52
  %59 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %4, align 8
  %60 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %12, align 8
  %64 = getelementptr inbounds %struct.tegra_bpmp_clk_info, %struct.tegra_bpmp_clk_info* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @U8_MAX, align 8
  %67 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %62, i64 %65, i64 %66)
  br label %93

68:                                               ; preds = %52
  %69 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %12, align 8
  %70 = getelementptr inbounds %struct.tegra_bpmp_clk_info, %struct.tegra_bpmp_clk_info* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load i32, i32* %10, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %93

79:                                               ; preds = %68
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %12, align 8
  %82 = getelementptr inbounds %struct.tegra_bpmp_clk_info, %struct.tegra_bpmp_clk_info* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* %9, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %9, align 4
  %85 = load i64, i64* @TEGRA_BPMP_DUMP_CLOCK_INFO, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %79
  %88 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %4, align 8
  %89 = load i32, i32* @KERN_DEBUG, align 4
  %90 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %12, align 8
  %91 = call i32 @tegra_bpmp_clk_info_dump(%struct.tegra_bpmp* %88, i32 %89, %struct.tegra_bpmp_clk_info* %90)
  br label %92

92:                                               ; preds = %87, %79
  br label %93

93:                                               ; preds = %92, %76, %58, %51
  %94 = load i32, i32* %8, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %36

96:                                               ; preds = %36
  %97 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %4, align 8
  %98 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @dev_dbg(i32 %99, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  %102 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %6, align 8
  %103 = load %struct.tegra_bpmp_clk_info**, %struct.tegra_bpmp_clk_info*** %5, align 8
  store %struct.tegra_bpmp_clk_info* %102, %struct.tegra_bpmp_clk_info** %103, align 8
  %104 = load i32, i32* %9, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %96, %32, %17
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @tegra_bpmp_clk_get_max_id(%struct.tegra_bpmp*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local %struct.tegra_bpmp_clk_info* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @tegra_bpmp_clk_get_info(%struct.tegra_bpmp*, i32, %struct.tegra_bpmp_clk_info*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i64, i64) #1

declare dso_local i32 @tegra_bpmp_clk_info_dump(%struct.tegra_bpmp*, i32, %struct.tegra_bpmp_clk_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
