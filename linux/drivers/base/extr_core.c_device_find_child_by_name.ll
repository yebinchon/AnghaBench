; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_core.c_device_find_child_by_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_core.c_device_find_child_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.klist_iter = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device* @device_find_child_by_name(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.klist_iter, align 4
  %7 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = icmp ne %struct.device* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store %struct.device* null, %struct.device** %3, align 8
  br label %35

11:                                               ; preds = %2
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @klist_iter_init(i32* %15, %struct.klist_iter* %6)
  br label %17

17:                                               ; preds = %31, %11
  %18 = call %struct.device* @next_device(%struct.klist_iter* %6)
  store %struct.device* %18, %struct.device** %7, align 8
  %19 = icmp ne %struct.device* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %17
  %21 = load %struct.device*, %struct.device** %7, align 8
  %22 = call i32 @dev_name(%struct.device* %21)
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @strcmp(i32 %22, i8* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  %27 = load %struct.device*, %struct.device** %7, align 8
  %28 = call i64 @get_device(%struct.device* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %32

31:                                               ; preds = %26, %20
  br label %17

32:                                               ; preds = %30, %17
  %33 = call i32 @klist_iter_exit(%struct.klist_iter* %6)
  %34 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %34, %struct.device** %3, align 8
  br label %35

35:                                               ; preds = %32, %10
  %36 = load %struct.device*, %struct.device** %3, align 8
  ret %struct.device* %36
}

declare dso_local i32 @klist_iter_init(i32*, %struct.klist_iter*) #1

declare dso_local %struct.device* @next_device(%struct.klist_iter*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i64 @get_device(%struct.device*) #1

declare dso_local i32 @klist_iter_exit(%struct.klist_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
