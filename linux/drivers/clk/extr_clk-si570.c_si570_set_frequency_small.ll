; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si570.c_si570_set_frequency_small.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si570.c_si570_set_frequency_small.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_si570 = type { i64, i32, i32 }

@SI570_REG_CONTROL = common dso_local global i32 0, align 4
@SI570_CNTRL_FREEZE_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_si570*, i64)* @si570_set_frequency_small to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si570_set_frequency_small(%struct.clk_si570* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_si570*, align 8
  %4 = alloca i64, align 8
  store %struct.clk_si570* %0, %struct.clk_si570** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.clk_si570*, %struct.clk_si570** %3, align 8
  %6 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = mul i64 %7, %8
  %10 = load %struct.clk_si570*, %struct.clk_si570** %3, align 8
  %11 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @div_u64(i32 %12, i32 2)
  %14 = add i64 %9, %13
  %15 = load %struct.clk_si570*, %struct.clk_si570** %3, align 8
  %16 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @div64_u64(i64 %14, i32 %17)
  %19 = load %struct.clk_si570*, %struct.clk_si570** %3, align 8
  %20 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.clk_si570*, %struct.clk_si570** %3, align 8
  %22 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @SI570_REG_CONTROL, align 4
  %25 = load i32, i32* @SI570_CNTRL_FREEZE_M, align 4
  %26 = call i32 @regmap_write(i32 %23, i32 %24, i32 %25)
  %27 = load %struct.clk_si570*, %struct.clk_si570** %3, align 8
  %28 = call i32 @si570_update_rfreq(%struct.clk_si570* %27)
  %29 = load %struct.clk_si570*, %struct.clk_si570** %3, align 8
  %30 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SI570_REG_CONTROL, align 4
  %33 = call i32 @regmap_write(i32 %31, i32 %32, i32 0)
  %34 = call i32 @usleep_range(i32 100, i32 200)
  ret i32 0
}

declare dso_local i64 @div64_u64(i64, i32) #1

declare dso_local i64 @div_u64(i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @si570_update_rfreq(%struct.clk_si570*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
