; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_global_attr_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_global_attr_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device_attr_group = type { i32 }
%struct.counter_device = type { i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"num_counts\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"num_signals\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counter_device_attr_group*, %struct.counter_device*)* @counter_global_attr_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @counter_global_attr_register(%struct.counter_device_attr_group* %0, %struct.counter_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.counter_device_attr_group*, align 8
  %5 = alloca %struct.counter_device*, align 8
  %6 = alloca i32, align 4
  store %struct.counter_device_attr_group* %0, %struct.counter_device_attr_group** %4, align 8
  store %struct.counter_device* %1, %struct.counter_device** %5, align 8
  %7 = load %struct.counter_device_attr_group*, %struct.counter_device_attr_group** %4, align 8
  %8 = load %struct.counter_device*, %struct.counter_device** %5, align 8
  %9 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @counter_name_attribute_create(%struct.counter_device_attr_group* %7, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %47

16:                                               ; preds = %2
  %17 = load %struct.counter_device_attr_group*, %struct.counter_device_attr_group** %4, align 8
  %18 = load %struct.counter_device*, %struct.counter_device** %5, align 8
  %19 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @counter_size_attribute_create(%struct.counter_device_attr_group* %17, i32 %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %42

25:                                               ; preds = %16
  %26 = load %struct.counter_device_attr_group*, %struct.counter_device_attr_group** %4, align 8
  %27 = load %struct.counter_device*, %struct.counter_device** %5, align 8
  %28 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @counter_size_attribute_create(%struct.counter_device_attr_group* %26, i32 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %42

34:                                               ; preds = %25
  %35 = load %struct.counter_device_attr_group*, %struct.counter_device_attr_group** %4, align 8
  %36 = load %struct.counter_device*, %struct.counter_device** %5, align 8
  %37 = call i32 @counter_device_ext_register(%struct.counter_device_attr_group* %35, %struct.counter_device* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %42

41:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %47

42:                                               ; preds = %40, %33, %24
  %43 = load %struct.counter_device_attr_group*, %struct.counter_device_attr_group** %4, align 8
  %44 = getelementptr inbounds %struct.counter_device_attr_group, %struct.counter_device_attr_group* %43, i32 0, i32 0
  %45 = call i32 @counter_device_attr_list_free(i32* %44)
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %42, %41, %14
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @counter_name_attribute_create(%struct.counter_device_attr_group*, i32) #1

declare dso_local i32 @counter_size_attribute_create(%struct.counter_device_attr_group*, i32, i8*) #1

declare dso_local i32 @counter_device_ext_register(%struct.counter_device_attr_group*, %struct.counter_device*) #1

declare dso_local i32 @counter_device_attr_list_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
