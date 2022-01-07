; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si570.c_si570_update_rfreq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si570.c_si570_update_rfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_si570 = type { i32, i32, i64, i32 }

@RFREQ_37_32_MASK = common dso_local global i32 0, align 4
@SI570_REG_N1_RFREQ0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_si570*)* @si570_update_rfreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si570_update_rfreq(%struct.clk_si570* %0) #0 {
  %2 = alloca %struct.clk_si570*, align 8
  %3 = alloca [5 x i32], align 16
  store %struct.clk_si570* %0, %struct.clk_si570** %2, align 8
  %4 = load %struct.clk_si570*, %struct.clk_si570** %2, align 8
  %5 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = sub nsw i32 %6, 1
  %8 = shl i32 %7, 6
  %9 = load %struct.clk_si570*, %struct.clk_si570** %2, align 8
  %10 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = ashr i32 %11, 32
  %13 = load i32, i32* @RFREQ_37_32_MASK, align 4
  %14 = and i32 %12, %13
  %15 = or i32 %8, %14
  %16 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0
  store i32 %15, i32* %16, align 16
  %17 = load %struct.clk_si570*, %struct.clk_si570** %2, align 8
  %18 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %19, 24
  %21 = and i32 %20, 255
  %22 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 1
  store i32 %21, i32* %22, align 4
  %23 = load %struct.clk_si570*, %struct.clk_si570** %2, align 8
  %24 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 16
  %27 = and i32 %26, 255
  %28 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 2
  store i32 %27, i32* %28, align 8
  %29 = load %struct.clk_si570*, %struct.clk_si570** %2, align 8
  %30 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 8
  %33 = and i32 %32, 255
  %34 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 3
  store i32 %33, i32* %34, align 4
  %35 = load %struct.clk_si570*, %struct.clk_si570** %2, align 8
  %36 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 255
  %39 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 4
  store i32 %38, i32* %39, align 16
  %40 = load %struct.clk_si570*, %struct.clk_si570** %2, align 8
  %41 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load i64, i64* @SI570_REG_N1_RFREQ0, align 8
  %44 = load %struct.clk_si570*, %struct.clk_si570** %2, align 8
  %45 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0
  %49 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0
  %50 = call i32 @ARRAY_SIZE(i32* %49)
  %51 = call i32 @regmap_bulk_write(i32 %42, i64 %47, i32* %48, i32 %50)
  ret i32 %51
}

declare dso_local i32 @regmap_bulk_write(i32, i64, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
