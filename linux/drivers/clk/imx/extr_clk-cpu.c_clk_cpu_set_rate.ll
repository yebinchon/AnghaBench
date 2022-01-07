; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-cpu.c_clk_cpu_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-cpu.c_clk_cpu_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_cpu = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_cpu_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_cpu_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_cpu*, align 8
  %9 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %11 = call %struct.clk_cpu* @to_clk_cpu(%struct.clk_hw* %10)
  store %struct.clk_cpu* %11, %struct.clk_cpu** %8, align 8
  %12 = load %struct.clk_cpu*, %struct.clk_cpu** %8, align 8
  %13 = getelementptr inbounds %struct.clk_cpu, %struct.clk_cpu* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.clk_cpu*, %struct.clk_cpu** %8, align 8
  %16 = getelementptr inbounds %struct.clk_cpu, %struct.clk_cpu* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @clk_set_parent(i32 %14, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %4, align 4
  br label %53

23:                                               ; preds = %3
  %24 = load %struct.clk_cpu*, %struct.clk_cpu** %8, align 8
  %25 = getelementptr inbounds %struct.clk_cpu, %struct.clk_cpu* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @clk_set_rate(i32 %26, i64 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %23
  %32 = load %struct.clk_cpu*, %struct.clk_cpu** %8, align 8
  %33 = getelementptr inbounds %struct.clk_cpu, %struct.clk_cpu* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.clk_cpu*, %struct.clk_cpu** %8, align 8
  %36 = getelementptr inbounds %struct.clk_cpu, %struct.clk_cpu* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @clk_set_parent(i32 %34, i32 %37)
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %53

40:                                               ; preds = %23
  %41 = load %struct.clk_cpu*, %struct.clk_cpu** %8, align 8
  %42 = getelementptr inbounds %struct.clk_cpu, %struct.clk_cpu* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.clk_cpu*, %struct.clk_cpu** %8, align 8
  %45 = getelementptr inbounds %struct.clk_cpu, %struct.clk_cpu* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @clk_set_parent(i32 %43, i32 %46)
  %48 = load %struct.clk_cpu*, %struct.clk_cpu** %8, align 8
  %49 = getelementptr inbounds %struct.clk_cpu, %struct.clk_cpu* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @clk_set_rate(i32 %50, i64 %51)
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %40, %31, %21
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.clk_cpu* @to_clk_cpu(%struct.clk_hw*) #1

declare dso_local i32 @clk_set_parent(i32, i32) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
