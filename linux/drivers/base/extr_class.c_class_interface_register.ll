; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_class.c_class_interface_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_class.c_class_interface_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.class_interface = type { i32 (%struct.device*, %struct.class_interface*)*, i32, i32 }
%struct.device = type { i32 }
%struct.class = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.class_dev_iter = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @class_interface_register(%struct.class_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.class_interface*, align 8
  %4 = alloca %struct.class*, align 8
  %5 = alloca %struct.class_dev_iter, align 4
  %6 = alloca %struct.device*, align 8
  store %struct.class_interface* %0, %struct.class_interface** %3, align 8
  %7 = load %struct.class_interface*, %struct.class_interface** %3, align 8
  %8 = icmp ne %struct.class_interface* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.class_interface*, %struct.class_interface** %3, align 8
  %11 = getelementptr inbounds %struct.class_interface, %struct.class_interface* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9, %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %65

17:                                               ; preds = %9
  %18 = load %struct.class_interface*, %struct.class_interface** %3, align 8
  %19 = getelementptr inbounds %struct.class_interface, %struct.class_interface* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.class* @class_get(i32 %20)
  store %struct.class* %21, %struct.class** %4, align 8
  %22 = load %struct.class*, %struct.class** %4, align 8
  %23 = icmp ne %struct.class* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %65

27:                                               ; preds = %17
  %28 = load %struct.class*, %struct.class** %4, align 8
  %29 = getelementptr inbounds %struct.class, %struct.class* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.class_interface*, %struct.class_interface** %3, align 8
  %34 = getelementptr inbounds %struct.class_interface, %struct.class_interface* %33, i32 0, i32 1
  %35 = load %struct.class*, %struct.class** %4, align 8
  %36 = getelementptr inbounds %struct.class, %struct.class* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = call i32 @list_add_tail(i32* %34, i32* %38)
  %40 = load %struct.class_interface*, %struct.class_interface** %3, align 8
  %41 = getelementptr inbounds %struct.class_interface, %struct.class_interface* %40, i32 0, i32 0
  %42 = load i32 (%struct.device*, %struct.class_interface*)*, i32 (%struct.device*, %struct.class_interface*)** %41, align 8
  %43 = icmp ne i32 (%struct.device*, %struct.class_interface*)* %42, null
  br i1 %43, label %44, label %59

44:                                               ; preds = %27
  %45 = load %struct.class*, %struct.class** %4, align 8
  %46 = call i32 @class_dev_iter_init(%struct.class_dev_iter* %5, %struct.class* %45, i32* null, i32* null)
  br label %47

47:                                               ; preds = %50, %44
  %48 = call %struct.device* @class_dev_iter_next(%struct.class_dev_iter* %5)
  store %struct.device* %48, %struct.device** %6, align 8
  %49 = icmp ne %struct.device* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load %struct.class_interface*, %struct.class_interface** %3, align 8
  %52 = getelementptr inbounds %struct.class_interface, %struct.class_interface* %51, i32 0, i32 0
  %53 = load i32 (%struct.device*, %struct.class_interface*)*, i32 (%struct.device*, %struct.class_interface*)** %52, align 8
  %54 = load %struct.device*, %struct.device** %6, align 8
  %55 = load %struct.class_interface*, %struct.class_interface** %3, align 8
  %56 = call i32 %53(%struct.device* %54, %struct.class_interface* %55)
  br label %47

57:                                               ; preds = %47
  %58 = call i32 @class_dev_iter_exit(%struct.class_dev_iter* %5)
  br label %59

59:                                               ; preds = %57, %27
  %60 = load %struct.class*, %struct.class** %4, align 8
  %61 = getelementptr inbounds %struct.class, %struct.class* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %59, %24, %14
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.class* @class_get(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @class_dev_iter_init(%struct.class_dev_iter*, %struct.class*, i32*, i32*) #1

declare dso_local %struct.device* @class_dev_iter_next(%struct.class_dev_iter*) #1

declare dso_local i32 @class_dev_iter_exit(%struct.class_dev_iter*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
