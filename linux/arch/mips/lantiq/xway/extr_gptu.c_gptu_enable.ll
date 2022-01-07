; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/lantiq/xway/extr_gptu.c_gptu_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/lantiq/xway/extr_gptu.c_gptu_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.clk = type { i64 }

@irqres = common dso_local global %struct.TYPE_2__* null, align 8
@timer_irq_handler = common dso_local global i32 0, align 4
@IRQF_TIMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"gtpu\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"gptu: failed to request irq\0A\00", align 1
@CON_CNT = common dso_local global i32 0, align 4
@CON_EDGE_ANY = common dso_local global i32 0, align 4
@CON_SYNC = common dso_local global i32 0, align 4
@CON_CLK_INT = common dso_local global i32 0, align 4
@GPTU_IRNEN = common dso_local global i32 0, align 4
@RUN_SEN = common dso_local global i32 0, align 4
@RUN_RL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*)* @gptu_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gptu_enable(%struct.clk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %3, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @irqres, align 8
  %6 = load %struct.clk*, %struct.clk** %3, align 8
  %7 = getelementptr inbounds %struct.clk, %struct.clk* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @timer_irq_handler, align 4
  %13 = load i32, i32* @IRQF_TIMER, align 4
  %14 = call i32 @request_irq(i32 %11, i32 %12, i32 %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %55

20:                                               ; preds = %1
  %21 = load i32, i32* @CON_CNT, align 4
  %22 = load i32, i32* @CON_EDGE_ANY, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @CON_SYNC, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @CON_CLK_INT, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.clk*, %struct.clk** %3, align 8
  %29 = getelementptr inbounds %struct.clk, %struct.clk* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @GPTU_CON(i64 %30)
  %32 = call i32 @gptu_w32(i32 %27, i32 %31)
  %33 = load %struct.clk*, %struct.clk** %3, align 8
  %34 = getelementptr inbounds %struct.clk, %struct.clk* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @GPTU_RLD(i64 %35)
  %37 = call i32 @gptu_w32(i32 1, i32 %36)
  %38 = load i32, i32* @GPTU_IRNEN, align 4
  %39 = call i32 @gptu_r32(i32 %38)
  %40 = load %struct.clk*, %struct.clk** %3, align 8
  %41 = getelementptr inbounds %struct.clk, %struct.clk* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @BIT(i64 %42)
  %44 = or i32 %39, %43
  %45 = load i32, i32* @GPTU_IRNEN, align 4
  %46 = call i32 @gptu_w32(i32 %44, i32 %45)
  %47 = load i32, i32* @RUN_SEN, align 4
  %48 = load i32, i32* @RUN_RL, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.clk*, %struct.clk** %3, align 8
  %51 = getelementptr inbounds %struct.clk, %struct.clk* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @GPTU_RUN(i64 %52)
  %54 = call i32 @gptu_w32(i32 %49, i32 %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %20, %17
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @request_irq(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @gptu_w32(i32, i32) #1

declare dso_local i32 @GPTU_CON(i64) #1

declare dso_local i32 @GPTU_RLD(i64) #1

declare dso_local i32 @gptu_r32(i32) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @GPTU_RUN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
