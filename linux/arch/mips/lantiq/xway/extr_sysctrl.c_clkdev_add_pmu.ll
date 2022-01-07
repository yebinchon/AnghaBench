; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/lantiq/xway/extr_sysctrl.c_clkdev_add_pmu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/lantiq/xway/extr_sysctrl.c_clkdev_add_pmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i32, %struct.TYPE_2__, i32 (%struct.clk*)*, i32 }
%struct.TYPE_2__ = type { i8*, i8*, %struct.clk* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@pmu_enable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32, i32)* @clkdev_add_pmu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clkdev_add_pmu(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.clk*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.clk* @kzalloc(i32 48, i32 %12)
  store %struct.clk* %13, %struct.clk** %11, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load %struct.clk*, %struct.clk** %11, align 8
  %16 = getelementptr inbounds %struct.clk, %struct.clk* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i8* %14, i8** %17, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load %struct.clk*, %struct.clk** %11, align 8
  %20 = getelementptr inbounds %struct.clk, %struct.clk* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i8* %18, i8** %21, align 8
  %22 = load %struct.clk*, %struct.clk** %11, align 8
  %23 = load %struct.clk*, %struct.clk** %11, align 8
  %24 = getelementptr inbounds %struct.clk, %struct.clk* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  store %struct.clk* %22, %struct.clk** %25, align 8
  %26 = load i32, i32* @pmu_enable, align 4
  %27 = load %struct.clk*, %struct.clk** %11, align 8
  %28 = getelementptr inbounds %struct.clk, %struct.clk* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = load %struct.clk*, %struct.clk** %11, align 8
  %30 = getelementptr inbounds %struct.clk, %struct.clk* %29, i32 0, i32 3
  store i32 (%struct.clk*)* @pmu_disable, i32 (%struct.clk*)** %30, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.clk*, %struct.clk** %11, align 8
  %33 = getelementptr inbounds %struct.clk, %struct.clk* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.clk*, %struct.clk** %11, align 8
  %36 = getelementptr inbounds %struct.clk, %struct.clk* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %5
  %40 = load %struct.clk*, %struct.clk** %11, align 8
  %41 = call i32 @pmu_disable(%struct.clk* %40)
  br label %42

42:                                               ; preds = %39, %5
  %43 = load %struct.clk*, %struct.clk** %11, align 8
  %44 = getelementptr inbounds %struct.clk, %struct.clk* %43, i32 0, i32 2
  %45 = call i32 @clkdev_add(%struct.TYPE_2__* %44)
  ret void
}

declare dso_local %struct.clk* @kzalloc(i32, i32) #1

declare dso_local i32 @pmu_disable(%struct.clk*) #1

declare dso_local i32 @clkdev_add(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
