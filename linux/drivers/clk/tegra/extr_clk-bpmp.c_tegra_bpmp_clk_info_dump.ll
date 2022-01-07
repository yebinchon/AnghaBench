; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-bpmp.c_tegra_bpmp_clk_info_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-bpmp.c_tegra_bpmp_clk_info_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bpmp = type { i32 }
%struct.tegra_bpmp_clk_info = type { i32, i32, i32*, i32, i32 }
%struct.seq_buf = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@TEGRA_BPMP_CLK_HAS_MUX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%smux\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@TEGRA_BPMP_CLK_HAS_SET_RATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"%sfixed\00", align 1
@TEGRA_BPMP_CLK_IS_ROOT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"%sroot\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%03u: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"  flags: %lx %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"  parents: %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"    %03u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_bpmp*, i8*, %struct.tegra_bpmp_clk_info*)* @tegra_bpmp_clk_info_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_bpmp_clk_info_dump(%struct.tegra_bpmp* %0, i8* %1, %struct.tegra_bpmp_clk_info* %2) #0 {
  %4 = alloca %struct.tegra_bpmp*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tegra_bpmp_clk_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.seq_buf, align 4
  %9 = alloca i32, align 4
  %10 = alloca [64 x i8], align 16
  store %struct.tegra_bpmp* %0, %struct.tegra_bpmp** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.tegra_bpmp_clk_info* %2, %struct.tegra_bpmp_clk_info** %6, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %11 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %12 = call i32 @seq_buf_init(%struct.seq_buf* %8, i8* %11, i32 64)
  %13 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %6, align 8
  %14 = getelementptr inbounds %struct.tegra_bpmp_clk_info, %struct.tegra_bpmp_clk_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = call i32 (%struct.seq_buf*, i8*, ...) @seq_buf_printf(%struct.seq_buf* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %3
  %20 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %6, align 8
  %21 = getelementptr inbounds %struct.tegra_bpmp_clk_info, %struct.tegra_bpmp_clk_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @TEGRA_BPMP_CLK_HAS_MUX, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 (%struct.seq_buf*, i8*, ...) @seq_buf_printf(%struct.seq_buf* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %29

29:                                               ; preds = %26, %19
  %30 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %6, align 8
  %31 = getelementptr inbounds %struct.tegra_bpmp_clk_info, %struct.tegra_bpmp_clk_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @TEGRA_BPMP_CLK_HAS_SET_RATE, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 (%struct.seq_buf*, i8*, ...) @seq_buf_printf(%struct.seq_buf* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %37)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %39

39:                                               ; preds = %36, %29
  %40 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %6, align 8
  %41 = getelementptr inbounds %struct.tegra_bpmp_clk_info, %struct.tegra_bpmp_clk_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @TEGRA_BPMP_CLK_IS_ROOT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 (%struct.seq_buf*, i8*, ...) @seq_buf_printf(%struct.seq_buf* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %47)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %49

49:                                               ; preds = %46, %39
  %50 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %6, align 8
  %51 = getelementptr inbounds %struct.tegra_bpmp_clk_info, %struct.tegra_bpmp_clk_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 (%struct.seq_buf*, i8*, ...) @seq_buf_printf(%struct.seq_buf* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %49
  %57 = load i8*, i8** %5, align 8
  %58 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %4, align 8
  %59 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %6, align 8
  %62 = getelementptr inbounds %struct.tegra_bpmp_clk_info, %struct.tegra_bpmp_clk_info* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %6, align 8
  %65 = getelementptr inbounds %struct.tegra_bpmp_clk_info, %struct.tegra_bpmp_clk_info* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i8*, i32, i8*, i32, ...) @dev_printk(i8* %57, i32 %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %63, i32 %66)
  %68 = load i8*, i8** %5, align 8
  %69 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %4, align 8
  %70 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %6, align 8
  %73 = getelementptr inbounds %struct.tegra_bpmp_clk_info, %struct.tegra_bpmp_clk_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %76 = call i32 (i8*, i32, i8*, i32, ...) @dev_printk(i8* %68, i32 %71, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %74, i8* %75)
  %77 = load i8*, i8** %5, align 8
  %78 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %4, align 8
  %79 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %6, align 8
  %82 = getelementptr inbounds %struct.tegra_bpmp_clk_info, %struct.tegra_bpmp_clk_info* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i8*, i32, i8*, i32, ...) @dev_printk(i8* %77, i32 %80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %83)
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %104, %56
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %6, align 8
  %88 = getelementptr inbounds %struct.tegra_bpmp_clk_info, %struct.tegra_bpmp_clk_info* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ult i32 %86, %89
  br i1 %90, label %91, label %107

91:                                               ; preds = %85
  %92 = load i8*, i8** %5, align 8
  %93 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %4, align 8
  %94 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %6, align 8
  %97 = getelementptr inbounds %struct.tegra_bpmp_clk_info, %struct.tegra_bpmp_clk_info* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i8*, i32, i8*, i32, ...) @dev_printk(i8* %92, i32 %95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %91
  %105 = load i32, i32* %9, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %9, align 4
  br label %85

107:                                              ; preds = %85
  ret void
}

declare dso_local i32 @seq_buf_init(%struct.seq_buf*, i8*, i32) #1

declare dso_local i32 @seq_buf_printf(%struct.seq_buf*, i8*, ...) #1

declare dso_local i32 @dev_printk(i8*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
