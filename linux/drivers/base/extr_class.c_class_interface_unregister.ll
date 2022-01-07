; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_class.c_class_interface_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_class.c_class_interface_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.class_interface = type { i32 (%struct.device*, %struct.class_interface*)*, i32, %struct.class* }
%struct.device = type { i32 }
%struct.class = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.class_dev_iter = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @class_interface_unregister(%struct.class_interface* %0) #0 {
  %2 = alloca %struct.class_interface*, align 8
  %3 = alloca %struct.class*, align 8
  %4 = alloca %struct.class_dev_iter, align 4
  %5 = alloca %struct.device*, align 8
  store %struct.class_interface* %0, %struct.class_interface** %2, align 8
  %6 = load %struct.class_interface*, %struct.class_interface** %2, align 8
  %7 = getelementptr inbounds %struct.class_interface, %struct.class_interface* %6, i32 0, i32 2
  %8 = load %struct.class*, %struct.class** %7, align 8
  store %struct.class* %8, %struct.class** %3, align 8
  %9 = load %struct.class*, %struct.class** %3, align 8
  %10 = icmp ne %struct.class* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %48

12:                                               ; preds = %1
  %13 = load %struct.class*, %struct.class** %3, align 8
  %14 = getelementptr inbounds %struct.class, %struct.class* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.class_interface*, %struct.class_interface** %2, align 8
  %19 = getelementptr inbounds %struct.class_interface, %struct.class_interface* %18, i32 0, i32 1
  %20 = call i32 @list_del_init(i32* %19)
  %21 = load %struct.class_interface*, %struct.class_interface** %2, align 8
  %22 = getelementptr inbounds %struct.class_interface, %struct.class_interface* %21, i32 0, i32 0
  %23 = load i32 (%struct.device*, %struct.class_interface*)*, i32 (%struct.device*, %struct.class_interface*)** %22, align 8
  %24 = icmp ne i32 (%struct.device*, %struct.class_interface*)* %23, null
  br i1 %24, label %25, label %40

25:                                               ; preds = %12
  %26 = load %struct.class*, %struct.class** %3, align 8
  %27 = call i32 @class_dev_iter_init(%struct.class_dev_iter* %4, %struct.class* %26, i32* null, i32* null)
  br label %28

28:                                               ; preds = %31, %25
  %29 = call %struct.device* @class_dev_iter_next(%struct.class_dev_iter* %4)
  store %struct.device* %29, %struct.device** %5, align 8
  %30 = icmp ne %struct.device* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load %struct.class_interface*, %struct.class_interface** %2, align 8
  %33 = getelementptr inbounds %struct.class_interface, %struct.class_interface* %32, i32 0, i32 0
  %34 = load i32 (%struct.device*, %struct.class_interface*)*, i32 (%struct.device*, %struct.class_interface*)** %33, align 8
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = load %struct.class_interface*, %struct.class_interface** %2, align 8
  %37 = call i32 %34(%struct.device* %35, %struct.class_interface* %36)
  br label %28

38:                                               ; preds = %28
  %39 = call i32 @class_dev_iter_exit(%struct.class_dev_iter* %4)
  br label %40

40:                                               ; preds = %38, %12
  %41 = load %struct.class*, %struct.class** %3, align 8
  %42 = getelementptr inbounds %struct.class, %struct.class* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load %struct.class*, %struct.class** %3, align 8
  %47 = call i32 @class_put(%struct.class* %46)
  br label %48

48:                                               ; preds = %40, %11
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @class_dev_iter_init(%struct.class_dev_iter*, %struct.class*, i32*, i32*) #1

declare dso_local %struct.device* @class_dev_iter_next(%struct.class_dev_iter*) #1

declare dso_local i32 @class_dev_iter_exit(%struct.class_dev_iter*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @class_put(%struct.class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
