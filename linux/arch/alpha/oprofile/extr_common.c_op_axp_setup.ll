; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/oprofile/extr_common.c_op_axp_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/oprofile/extr_common.c_op_axp_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, i32*)* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i64 }

@perf_irq = common dso_local global i32 0, align 4
@save_perf_irq = common dso_local global i32 0, align 4
@op_handle_interrupt = common dso_local global i32 0, align 4
@model = common dso_local global %struct.TYPE_11__* null, align 8
@ctr = common dso_local global %struct.TYPE_10__* null, align 8
@reg = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@sys = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @op_axp_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op_axp_setup() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @perf_irq, align 4
  store i32 %3, i32* @save_perf_irq, align 4
  %4 = load i32, i32* @op_handle_interrupt, align 4
  store i32 %4, i32* @perf_irq, align 4
  store i64 0, i64* %2, align 8
  store i64 0, i64* %1, align 8
  br label %5

5:                                                ; preds = %26, %0
  %6 = load i64, i64* %1, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** @model, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %6, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %5
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ctr, align 8
  %13 = load i64, i64* %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %11
  %19 = load i64, i64* %1, align 8
  %20 = trunc i64 %19 to i32
  %21 = shl i32 1, %20
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* %2, align 8
  %24 = or i64 %23, %22
  store i64 %24, i64* %2, align 8
  br label %25

25:                                               ; preds = %18, %11
  br label %26

26:                                               ; preds = %25
  %27 = load i64, i64* %1, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %1, align 8
  br label %5

29:                                               ; preds = %5
  %30 = load i64, i64* %2, align 8
  store i64 %30, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @reg, i32 0, i32 0), align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** @model, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 2
  %33 = load i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, i32*)*, i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, i32*)** %32, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ctr, align 8
  %35 = call i32 %33(%struct.TYPE_9__* @reg, %struct.TYPE_10__* %34, i32* @sys)
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** @model, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %37, align 8
  %39 = call i32 @smp_call_function(i32 (%struct.TYPE_9__*)* %38, %struct.TYPE_9__* @reg, i32 1)
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** @model, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %41, align 8
  %43 = call i32 %42(%struct.TYPE_9__* @reg)
  ret i32 0
}

declare dso_local i32 @smp_call_function(i32 (%struct.TYPE_9__*)*, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
