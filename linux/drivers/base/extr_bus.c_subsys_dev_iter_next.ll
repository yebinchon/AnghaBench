; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_bus.c_subsys_dev_iter_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_bus.c_subsys_dev_iter_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64 }
%struct.subsys_dev_iter = type { i64, i32 }
%struct.klist_node = type { i32 }
%struct.TYPE_2__ = type { %struct.device* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device* @subsys_dev_iter_next(%struct.subsys_dev_iter* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.subsys_dev_iter*, align 8
  %4 = alloca %struct.klist_node*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.subsys_dev_iter* %0, %struct.subsys_dev_iter** %3, align 8
  br label %6

6:                                                ; preds = %32, %1
  %7 = load %struct.subsys_dev_iter*, %struct.subsys_dev_iter** %3, align 8
  %8 = getelementptr inbounds %struct.subsys_dev_iter, %struct.subsys_dev_iter* %7, i32 0, i32 1
  %9 = call %struct.klist_node* @klist_next(i32* %8)
  store %struct.klist_node* %9, %struct.klist_node** %4, align 8
  %10 = load %struct.klist_node*, %struct.klist_node** %4, align 8
  %11 = icmp ne %struct.klist_node* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  store %struct.device* null, %struct.device** %2, align 8
  br label %33

13:                                               ; preds = %6
  %14 = load %struct.klist_node*, %struct.klist_node** %4, align 8
  %15 = call %struct.TYPE_2__* @to_device_private_bus(%struct.klist_node* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %5, align 8
  %18 = load %struct.subsys_dev_iter*, %struct.subsys_dev_iter** %3, align 8
  %19 = getelementptr inbounds %struct.subsys_dev_iter, %struct.subsys_dev_iter* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %13
  %23 = load %struct.subsys_dev_iter*, %struct.subsys_dev_iter** %3, align 8
  %24 = getelementptr inbounds %struct.subsys_dev_iter, %struct.subsys_dev_iter* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %22, %13
  %31 = load %struct.device*, %struct.device** %5, align 8
  store %struct.device* %31, %struct.device** %2, align 8
  br label %33

32:                                               ; preds = %22
  br label %6

33:                                               ; preds = %30, %12
  %34 = load %struct.device*, %struct.device** %2, align 8
  ret %struct.device* %34
}

declare dso_local %struct.klist_node* @klist_next(i32*) #1

declare dso_local %struct.TYPE_2__* @to_device_private_bus(%struct.klist_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
