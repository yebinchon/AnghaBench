; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_core.c_device_for_each_child.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_core.c_device_for_each_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.klist_iter = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @device_for_each_child(%struct.device* %0, i8* %1, i32 (%struct.device*, i8*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32 (%struct.device*, i8*)*, align 8
  %8 = alloca %struct.klist_iter, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 (%struct.device*, i8*)* %2, i32 (%struct.device*, i8*)** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %38

16:                                               ; preds = %3
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @klist_iter_init(i32* %20, %struct.klist_iter* %8)
  br label %22

22:                                               ; preds = %30, %16
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = call %struct.device* @next_device(%struct.klist_iter* %8)
  store %struct.device* %26, %struct.device** %9, align 8
  %27 = icmp ne %struct.device* %26, null
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi i1 [ false, %22 ], [ %27, %25 ]
  br i1 %29, label %30, label %35

30:                                               ; preds = %28
  %31 = load i32 (%struct.device*, i8*)*, i32 (%struct.device*, i8*)** %7, align 8
  %32 = load %struct.device*, %struct.device** %9, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 %31(%struct.device* %32, i8* %33)
  store i32 %34, i32* %10, align 4
  br label %22

35:                                               ; preds = %28
  %36 = call i32 @klist_iter_exit(%struct.klist_iter* %8)
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %15
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @klist_iter_init(i32*, %struct.klist_iter*) #1

declare dso_local %struct.device* @next_device(%struct.klist_iter*) #1

declare dso_local i32 @klist_iter_exit(%struct.klist_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
