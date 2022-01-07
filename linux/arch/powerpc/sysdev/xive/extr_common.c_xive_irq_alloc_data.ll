; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_common.c_xive_irq_alloc_data.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_common.c_xive_irq_alloc_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, %struct.xive_irq_data*)* }
%struct.xive_irq_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@xive_ops = common dso_local global %struct.TYPE_2__* null, align 8
@XIVE_INVALID_TARGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @xive_irq_alloc_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xive_irq_alloc_data(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.xive_irq_data*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.xive_irq_data* @kzalloc(i32 4, i32 %8)
  store %struct.xive_irq_data* %9, %struct.xive_irq_data** %6, align 8
  %10 = load %struct.xive_irq_data*, %struct.xive_irq_data** %6, align 8
  %11 = icmp ne %struct.xive_irq_data* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %35

15:                                               ; preds = %2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xive_ops, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (i32, %struct.xive_irq_data*)*, i32 (i32, %struct.xive_irq_data*)** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.xive_irq_data*, %struct.xive_irq_data** %6, align 8
  %21 = call i32 %18(i32 %19, %struct.xive_irq_data* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %15
  %25 = load %struct.xive_irq_data*, %struct.xive_irq_data** %6, align 8
  %26 = call i32 @kfree(%struct.xive_irq_data* %25)
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %35

28:                                               ; preds = %15
  %29 = load i32, i32* @XIVE_INVALID_TARGET, align 4
  %30 = load %struct.xive_irq_data*, %struct.xive_irq_data** %6, align 8
  %31 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.xive_irq_data*, %struct.xive_irq_data** %6, align 8
  %34 = call i32 @irq_set_handler_data(i32 %32, %struct.xive_irq_data* %33)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %28, %24, %12
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.xive_irq_data* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.xive_irq_data*) #1

declare dso_local i32 @irq_set_handler_data(i32, %struct.xive_irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
