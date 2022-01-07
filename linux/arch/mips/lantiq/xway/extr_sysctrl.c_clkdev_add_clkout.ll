; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/lantiq/xway/extr_sysctrl.c_clkdev_add_clkout.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/lantiq/xway/extr_sysctrl.c_clkdev_add_clkout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, %struct.TYPE_2__, i32, i32, i64 }
%struct.TYPE_2__ = type { i8*, i8*, %struct.clk* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"clkout%d\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"1f103000.cgu\00", align 1
@valid_clkout_rates = common dso_local global i32* null, align 8
@clkout_enable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @clkdev_add_clkout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clkdev_add_clkout() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.clk*, align 8
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %45, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 4
  br i1 %6, label %7, label %48

7:                                                ; preds = %4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i8* @kzalloc(i32 8, i32 %8)
  store i8* %9, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @sprintf(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kzalloc(i32 48, i32 %13)
  %15 = bitcast i8* %14 to %struct.clk*
  store %struct.clk* %15, %struct.clk** %2, align 8
  %16 = load %struct.clk*, %struct.clk** %2, align 8
  %17 = getelementptr inbounds %struct.clk, %struct.clk* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = load %struct.clk*, %struct.clk** %2, align 8
  %21 = getelementptr inbounds %struct.clk, %struct.clk* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i8* %19, i8** %22, align 8
  %23 = load %struct.clk*, %struct.clk** %2, align 8
  %24 = load %struct.clk*, %struct.clk** %2, align 8
  %25 = getelementptr inbounds %struct.clk, %struct.clk* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  store %struct.clk* %23, %struct.clk** %26, align 8
  %27 = load %struct.clk*, %struct.clk** %2, align 8
  %28 = getelementptr inbounds %struct.clk, %struct.clk* %27, i32 0, i32 4
  store i64 0, i64* %28, align 8
  %29 = load i32*, i32** @valid_clkout_rates, align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.clk*, %struct.clk** %2, align 8
  %35 = getelementptr inbounds %struct.clk, %struct.clk* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @clkout_enable, align 4
  %37 = load %struct.clk*, %struct.clk** %2, align 8
  %38 = getelementptr inbounds %struct.clk, %struct.clk* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %1, align 4
  %40 = load %struct.clk*, %struct.clk** %2, align 8
  %41 = getelementptr inbounds %struct.clk, %struct.clk* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.clk*, %struct.clk** %2, align 8
  %43 = getelementptr inbounds %struct.clk, %struct.clk* %42, i32 0, i32 1
  %44 = call i32 @clkdev_add(%struct.TYPE_2__* %43)
  br label %45

45:                                               ; preds = %7
  %46 = load i32, i32* %1, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %1, align 4
  br label %4

48:                                               ; preds = %4
  ret void
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @clkdev_add(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
