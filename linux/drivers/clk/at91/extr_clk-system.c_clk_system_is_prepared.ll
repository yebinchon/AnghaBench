; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-system.c_clk_system_is_prepared.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-system.c_clk_system_is_prepared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_system = type { i32, i32 }

@AT91_PMC_SCSR = common dso_local global i32 0, align 4
@AT91_PMC_SR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_system_is_prepared to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_system_is_prepared(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_system*, align 8
  %5 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %7 = call %struct.clk_system* @to_clk_system(%struct.clk_hw* %6)
  store %struct.clk_system* %7, %struct.clk_system** %4, align 8
  %8 = load %struct.clk_system*, %struct.clk_system** %4, align 8
  %9 = getelementptr inbounds %struct.clk_system, %struct.clk_system* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @AT91_PMC_SCSR, align 4
  %12 = call i32 @regmap_read(i32 %10, i32 %11, i32* %5)
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.clk_system*, %struct.clk_system** %4, align 8
  %15 = getelementptr inbounds %struct.clk_system, %struct.clk_system* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 1, %16
  %18 = and i32 %13, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

21:                                               ; preds = %1
  %22 = load %struct.clk_system*, %struct.clk_system** %4, align 8
  %23 = getelementptr inbounds %struct.clk_system, %struct.clk_system* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @is_pck(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %43

28:                                               ; preds = %21
  %29 = load %struct.clk_system*, %struct.clk_system** %4, align 8
  %30 = getelementptr inbounds %struct.clk_system, %struct.clk_system* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @AT91_PMC_SR, align 4
  %33 = call i32 @regmap_read(i32 %31, i32 %32, i32* %5)
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.clk_system*, %struct.clk_system** %4, align 8
  %36 = getelementptr inbounds %struct.clk_system, %struct.clk_system* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 1, %37
  %39 = and i32 %34, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 0
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %28, %27, %20
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.clk_system* @to_clk_system(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @is_pck(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
