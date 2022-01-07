; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_nwbutton.c_button_del_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_nwbutton.c_button_del_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { void (...)*, i64 }

@EINVAL = common dso_local global i32 0, align 4
@button_callback_list = common dso_local global %struct.TYPE_2__* null, align 8
@callback_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @button_del_callback(void ()* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca void ()*, align 8
  %4 = alloca i32, align 4
  store void ()* %0, void ()** %3, align 8
  store i32 31, i32* %4, align 4
  %5 = load void ()*, void ()** %3, align 8
  %6 = icmp ne void ()* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %43

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %37, %10
  %12 = load i32, i32* %4, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %11
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @button_callback_list, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load void (...)*, void (...)** %19, align 8
  %21 = load void ()*, void ()** %3, align 8
  %22 = bitcast void ()* %21 to void (...)*
  %23 = icmp eq void (...)* %20, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %14
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @button_callback_list, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store void (...)* null, void (...)** %29, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @button_callback_list, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @callback_count, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* @callback_count, align 4
  store i32 0, i32* %2, align 4
  br label %43

37:                                               ; preds = %14
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %4, align 4
  br label %11

40:                                               ; preds = %11
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %40, %24, %7
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
