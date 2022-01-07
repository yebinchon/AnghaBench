; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/drivers/dma/extr_dmabrg.c_dmabrg_request_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/drivers/dma/extr_dmabrg.c_dmabrg_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { void (i8*)*, i8* }

@ENOENT = common dso_local global i32 0, align 4
@dmabrg_handlers = common dso_local global %struct.TYPE_2__* null, align 8
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmabrg_request_irq(i32 %0, void (i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca void (i8*)*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store void (i8*)* %1, void (i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp ugt i32 %8, 9
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load void (i8*)*, void (i8*)** %6, align 8
  %12 = icmp ne void (i8*)* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10, %3
  %14 = load i32, i32* @ENOENT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %42

16:                                               ; preds = %10
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmabrg_handlers, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load void (i8*)*, void (i8*)** %21, align 8
  %23 = icmp ne void (i8*)* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %42

27:                                               ; preds = %16
  %28 = load void (i8*)*, void (i8*)** %6, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmabrg_handlers, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store void (i8*)* %28, void (i8*)** %33, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmabrg_handlers, align 8
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i8* %34, i8** %39, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @dmabrg_enable_irq(i32 %40)
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %27, %24, %13
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @dmabrg_enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
