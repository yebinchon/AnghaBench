; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si570.c_si570_set_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si570.c_si570_set_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_si570 = type { i32, i32, i32, i64, i32 }

@SI570_REG_FREEZE_DCO = common dso_local global i64 0, align 8
@SI570_FREEZE_DCO = common dso_local global i32 0, align 4
@SI570_REG_HS_N1 = common dso_local global i64 0, align 8
@HS_DIV_OFFSET = common dso_local global i32 0, align 4
@HS_DIV_SHIFT = common dso_local global i32 0, align 4
@N1_6_2_MASK = common dso_local global i32 0, align 4
@SI570_REG_CONTROL = common dso_local global i64 0, align 8
@SI570_CNTRL_NEWFREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_si570*, i64)* @si570_set_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si570_set_frequency(%struct.clk_si570* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_si570*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.clk_si570* %0, %struct.clk_si570** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.clk_si570*, %struct.clk_si570** %4, align 8
  %9 = load %struct.clk_si570*, %struct.clk_si570** %4, align 8
  %10 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %9, i32 0, i32 4
  %11 = load %struct.clk_si570*, %struct.clk_si570** %4, align 8
  %12 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %11, i32 0, i32 0
  %13 = load %struct.clk_si570*, %struct.clk_si570** %4, align 8
  %14 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %13, i32 0, i32 1
  %15 = call i32 @si570_calc_divs(i64 %7, %struct.clk_si570* %8, i32* %10, i32* %12, i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %65

20:                                               ; preds = %2
  %21 = load %struct.clk_si570*, %struct.clk_si570** %4, align 8
  %22 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i64, i64* @SI570_REG_FREEZE_DCO, align 8
  %25 = load i32, i32* @SI570_FREEZE_DCO, align 4
  %26 = call i32 @regmap_write(i32 %23, i64 %24, i32 %25)
  %27 = load %struct.clk_si570*, %struct.clk_si570** %4, align 8
  %28 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* @SI570_REG_HS_N1, align 8
  %31 = load %struct.clk_si570*, %struct.clk_si570** %4, align 8
  %32 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = load %struct.clk_si570*, %struct.clk_si570** %4, align 8
  %36 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @HS_DIV_OFFSET, align 4
  %39 = sub nsw i32 %37, %38
  %40 = load i32, i32* @HS_DIV_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = load %struct.clk_si570*, %struct.clk_si570** %4, align 8
  %43 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 1
  %46 = ashr i32 %45, 2
  %47 = load i32, i32* @N1_6_2_MASK, align 4
  %48 = and i32 %46, %47
  %49 = or i32 %41, %48
  %50 = call i32 @regmap_write(i32 %29, i64 %34, i32 %49)
  %51 = load %struct.clk_si570*, %struct.clk_si570** %4, align 8
  %52 = call i32 @si570_update_rfreq(%struct.clk_si570* %51)
  %53 = load %struct.clk_si570*, %struct.clk_si570** %4, align 8
  %54 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i64, i64* @SI570_REG_FREEZE_DCO, align 8
  %57 = call i32 @regmap_write(i32 %55, i64 %56, i32 0)
  %58 = load %struct.clk_si570*, %struct.clk_si570** %4, align 8
  %59 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i64, i64* @SI570_REG_CONTROL, align 8
  %62 = load i32, i32* @SI570_CNTRL_NEWFREQ, align 4
  %63 = call i32 @regmap_write(i32 %60, i64 %61, i32 %62)
  %64 = call i32 @usleep_range(i32 10000, i32 12000)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %20, %18
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @si570_calc_divs(i64, %struct.clk_si570*, i32*, i32*, i32*) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i32 @si570_update_rfreq(%struct.clk_si570*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
