; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_core.c_device_find_child.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_core.c_device_find_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.klist_iter = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device* @device_find_child(%struct.device* %0, i8* %1, i32 (%struct.device*, i8*)* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32 (%struct.device*, i8*)*, align 8
  %8 = alloca %struct.klist_iter, align 4
  %9 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 (%struct.device*, i8*)* %2, i32 (%struct.device*, i8*)** %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = icmp ne %struct.device* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store %struct.device* null, %struct.device** %4, align 8
  br label %37

13:                                               ; preds = %3
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @klist_iter_init(i32* %17, %struct.klist_iter* %8)
  br label %19

19:                                               ; preds = %33, %13
  %20 = call %struct.device* @next_device(%struct.klist_iter* %8)
  store %struct.device* %20, %struct.device** %9, align 8
  %21 = icmp ne %struct.device* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load i32 (%struct.device*, i8*)*, i32 (%struct.device*, i8*)** %7, align 8
  %24 = load %struct.device*, %struct.device** %9, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 %23(%struct.device* %24, i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.device*, %struct.device** %9, align 8
  %30 = call i64 @get_device(%struct.device* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %34

33:                                               ; preds = %28, %22
  br label %19

34:                                               ; preds = %32, %19
  %35 = call i32 @klist_iter_exit(%struct.klist_iter* %8)
  %36 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %36, %struct.device** %4, align 8
  br label %37

37:                                               ; preds = %34, %12
  %38 = load %struct.device*, %struct.device** %4, align 8
  ret %struct.device* %38
}

declare dso_local i32 @klist_iter_init(i32*, %struct.klist_iter*) #1

declare dso_local %struct.device* @next_device(%struct.klist_iter*) #1

declare dso_local i64 @get_device(%struct.device*) #1

declare dso_local i32 @klist_iter_exit(%struct.klist_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
