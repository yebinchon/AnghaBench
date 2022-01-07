; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/lantiq/falcon/extr_sysctrl.c_clkdev_add_sys.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/lantiq/falcon/extr_sysctrl.c_clkdev_add_sys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i8*, %struct.clk*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@sysctl_activate = common dso_local global i32 0, align 4
@sysctl_deactivate = common dso_local global i32 0, align 4
@sysctl_clken = common dso_local global i32 0, align 4
@sysctl_clkdis = common dso_local global i32 0, align 4
@sysctl_reboot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @clkdev_add_sys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clkdev_add_sys(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.clk*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.clk* @kzalloc(i32 56, i32 %8)
  store %struct.clk* %9, %struct.clk** %7, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load %struct.clk*, %struct.clk** %7, align 8
  %12 = getelementptr inbounds %struct.clk, %struct.clk* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i8* %10, i8** %13, align 8
  %14 = load %struct.clk*, %struct.clk** %7, align 8
  %15 = getelementptr inbounds %struct.clk, %struct.clk* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  store i32* null, i32** %16, align 8
  %17 = load %struct.clk*, %struct.clk** %7, align 8
  %18 = load %struct.clk*, %struct.clk** %7, align 8
  %19 = getelementptr inbounds %struct.clk, %struct.clk* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store %struct.clk* %17, %struct.clk** %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.clk*, %struct.clk** %7, align 8
  %23 = getelementptr inbounds %struct.clk, %struct.clk* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.clk*, %struct.clk** %7, align 8
  %26 = getelementptr inbounds %struct.clk, %struct.clk* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @sysctl_activate, align 4
  %28 = load %struct.clk*, %struct.clk** %7, align 8
  %29 = getelementptr inbounds %struct.clk, %struct.clk* %28, i32 0, i32 7
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @sysctl_deactivate, align 4
  %31 = load %struct.clk*, %struct.clk** %7, align 8
  %32 = getelementptr inbounds %struct.clk, %struct.clk* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @sysctl_clken, align 4
  %34 = load %struct.clk*, %struct.clk** %7, align 8
  %35 = getelementptr inbounds %struct.clk, %struct.clk* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @sysctl_clkdis, align 4
  %37 = load %struct.clk*, %struct.clk** %7, align 8
  %38 = getelementptr inbounds %struct.clk, %struct.clk* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @sysctl_reboot, align 4
  %40 = load %struct.clk*, %struct.clk** %7, align 8
  %41 = getelementptr inbounds %struct.clk, %struct.clk* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load %struct.clk*, %struct.clk** %7, align 8
  %43 = getelementptr inbounds %struct.clk, %struct.clk* %42, i32 0, i32 2
  %44 = call i32 @clkdev_add(%struct.TYPE_2__* %43)
  ret void
}

declare dso_local %struct.clk* @kzalloc(i32, i32) #1

declare dso_local i32 @clkdev_add(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
