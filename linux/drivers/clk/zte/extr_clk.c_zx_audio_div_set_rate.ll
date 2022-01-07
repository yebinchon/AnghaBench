; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/zte/extr_clk.c_zx_audio_div_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/zte/extr_clk.c_zx_audio_div_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_zx_audio_divider = type { i64 }
%struct.zx_clk_audio_div_table = type { i64, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"the real rate is:%ld\00", align 1
@CLK_AUDIO_DIV_INT_FRAC_RE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @zx_audio_div_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_audio_div_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.clk_zx_audio_divider*, align 8
  %8 = alloca %struct.zx_clk_audio_div_table, align 8
  %9 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %11 = call %struct.clk_zx_audio_divider* @to_clk_zx_audio_div(%struct.clk_hw* %10)
  store %struct.clk_zx_audio_divider* %11, %struct.clk_zx_audio_divider** %7, align 8
  %12 = load %struct.clk_zx_audio_divider*, %struct.clk_zx_audio_divider** %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @audio_calc_reg(%struct.clk_zx_audio_divider* %12, %struct.zx_clk_audio_div_table* %8, i64 %13, i64 %14)
  %16 = getelementptr inbounds %struct.zx_clk_audio_div_table, %struct.zx_clk_audio_div_table* %8, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.zx_clk_audio_div_table, %struct.zx_clk_audio_div_table* %8, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %22)
  br label %24

24:                                               ; preds = %20, %3
  %25 = getelementptr inbounds %struct.zx_clk_audio_div_table, %struct.zx_clk_audio_div_table* %8, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.clk_zx_audio_divider*, %struct.clk_zx_audio_divider** %7, align 8
  %28 = getelementptr inbounds %struct.clk_zx_audio_divider, %struct.clk_zx_audio_divider* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @writel_relaxed(i32 %26, i64 %29)
  %31 = load %struct.clk_zx_audio_divider*, %struct.clk_zx_audio_divider** %7, align 8
  %32 = getelementptr inbounds %struct.clk_zx_audio_divider, %struct.clk_zx_audio_divider* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 4
  %35 = call i32 @readl_relaxed(i64 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %36, -65536
  store i32 %37, i32* %9, align 4
  %38 = getelementptr inbounds %struct.zx_clk_audio_div_table, %struct.zx_clk_audio_div_table* %8, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CLK_AUDIO_DIV_INT_FRAC_RE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.clk_zx_audio_divider*, %struct.clk_zx_audio_divider** %7, align 8
  %46 = getelementptr inbounds %struct.clk_zx_audio_divider, %struct.clk_zx_audio_divider* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 4
  %49 = call i32 @writel_relaxed(i32 %44, i64 %48)
  %50 = call i32 @mdelay(i32 1)
  %51 = load %struct.clk_zx_audio_divider*, %struct.clk_zx_audio_divider** %7, align 8
  %52 = getelementptr inbounds %struct.clk_zx_audio_divider, %struct.clk_zx_audio_divider* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 4
  %55 = call i32 @readl_relaxed(i64 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* @CLK_AUDIO_DIV_INT_FRAC_RE, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.clk_zx_audio_divider*, %struct.clk_zx_audio_divider** %7, align 8
  %62 = getelementptr inbounds %struct.clk_zx_audio_divider, %struct.clk_zx_audio_divider* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 4
  %65 = call i32 @writel_relaxed(i32 %60, i64 %64)
  ret i32 0
}

declare dso_local %struct.clk_zx_audio_divider* @to_clk_zx_audio_div(%struct.clk_hw*) #1

declare dso_local i32 @audio_calc_reg(%struct.clk_zx_audio_divider*, %struct.zx_clk_audio_div_table*, i64, i64) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
