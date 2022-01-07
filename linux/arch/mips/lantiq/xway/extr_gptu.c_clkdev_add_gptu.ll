; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/lantiq/xway/extr_gptu.c_clkdev_add_gptu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/lantiq/xway/extr_gptu.c_clkdev_add_gptu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.clk = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i8*, %struct.clk*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@gptu_enable = common dso_local global i32 0, align 4
@gptu_disable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i8*, i32)* @clkdev_add_gptu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clkdev_add_gptu(%struct.device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.clk*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.clk* @kzalloc(i32 40, i32 %8)
  store %struct.clk* %9, %struct.clk** %7, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call i32 @dev_name(%struct.device* %10)
  %12 = load %struct.clk*, %struct.clk** %7, align 8
  %13 = getelementptr inbounds %struct.clk, %struct.clk* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  store i32 %11, i32* %14, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load %struct.clk*, %struct.clk** %7, align 8
  %17 = getelementptr inbounds %struct.clk, %struct.clk* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i8* %15, i8** %18, align 8
  %19 = load %struct.clk*, %struct.clk** %7, align 8
  %20 = load %struct.clk*, %struct.clk** %7, align 8
  %21 = getelementptr inbounds %struct.clk, %struct.clk* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store %struct.clk* %19, %struct.clk** %22, align 8
  %23 = load i32, i32* @gptu_enable, align 4
  %24 = load %struct.clk*, %struct.clk** %7, align 8
  %25 = getelementptr inbounds %struct.clk, %struct.clk* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @gptu_disable, align 4
  %27 = load %struct.clk*, %struct.clk** %7, align 8
  %28 = getelementptr inbounds %struct.clk, %struct.clk* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.clk*, %struct.clk** %7, align 8
  %31 = getelementptr inbounds %struct.clk, %struct.clk* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.clk*, %struct.clk** %7, align 8
  %33 = getelementptr inbounds %struct.clk, %struct.clk* %32, i32 0, i32 1
  %34 = call i32 @clkdev_add(%struct.TYPE_2__* %33)
  ret void
}

declare dso_local %struct.clk* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @clkdev_add(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
