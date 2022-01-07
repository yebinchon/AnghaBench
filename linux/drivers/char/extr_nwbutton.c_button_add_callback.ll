; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_nwbutton.c_button_add_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_nwbutton.c_button_add_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { void (...)*, i32 }

@callback_count = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@button_callback_list = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @button_add_callback(void ()* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca void ()*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store void ()* %0, void ()** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @callback_count, align 4
  %8 = icmp eq i32 %7, 32
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %47

12:                                               ; preds = %2
  %13 = load void ()*, void ()** %4, align 8
  %14 = icmp ne void ()* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %47

18:                                               ; preds = %12
  %19 = load i32, i32* @callback_count, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @callback_count, align 4
  br label %21

21:                                               ; preds = %30, %18
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @button_callback_list, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load void (...)*, void (...)** %26, align 8
  %28 = icmp ne void (...)* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %21

33:                                               ; preds = %21
  %34 = load void ()*, void ()** %4, align 8
  %35 = bitcast void ()* %34 to void (...)*
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @button_callback_list, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store void (...)* %35, void (...)** %40, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @button_callback_list, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 %41, i32* %46, align 8
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %33, %15, %9
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
