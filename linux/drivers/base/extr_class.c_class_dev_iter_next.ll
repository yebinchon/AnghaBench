; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_class.c_class_dev_iter_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_class.c_class_dev_iter_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64 }
%struct.class_dev_iter = type { i64, i32 }
%struct.klist_node = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device* @class_dev_iter_next(%struct.class_dev_iter* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.class_dev_iter*, align 8
  %4 = alloca %struct.klist_node*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.class_dev_iter* %0, %struct.class_dev_iter** %3, align 8
  br label %6

6:                                                ; preds = %1, %30
  %7 = load %struct.class_dev_iter*, %struct.class_dev_iter** %3, align 8
  %8 = getelementptr inbounds %struct.class_dev_iter, %struct.class_dev_iter* %7, i32 0, i32 1
  %9 = call %struct.klist_node* @klist_next(i32* %8)
  store %struct.klist_node* %9, %struct.klist_node** %4, align 8
  %10 = load %struct.klist_node*, %struct.klist_node** %4, align 8
  %11 = icmp ne %struct.klist_node* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  store %struct.device* null, %struct.device** %2, align 8
  br label %31

13:                                               ; preds = %6
  %14 = load %struct.klist_node*, %struct.klist_node** %4, align 8
  %15 = call %struct.device* @klist_class_to_dev(%struct.klist_node* %14)
  store %struct.device* %15, %struct.device** %5, align 8
  %16 = load %struct.class_dev_iter*, %struct.class_dev_iter** %3, align 8
  %17 = getelementptr inbounds %struct.class_dev_iter, %struct.class_dev_iter* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %13
  %21 = load %struct.class_dev_iter*, %struct.class_dev_iter** %3, align 8
  %22 = getelementptr inbounds %struct.class_dev_iter, %struct.class_dev_iter* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %20, %13
  %29 = load %struct.device*, %struct.device** %5, align 8
  store %struct.device* %29, %struct.device** %2, align 8
  br label %31

30:                                               ; preds = %20
  br label %6

31:                                               ; preds = %28, %12
  %32 = load %struct.device*, %struct.device** %2, align 8
  ret %struct.device* %32
}

declare dso_local %struct.klist_node* @klist_next(i32*) #1

declare dso_local %struct.device* @klist_class_to_dev(%struct.klist_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
