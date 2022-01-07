; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_size_attribute_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_size_attribute_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device_attr_group = type { i32 }
%struct.counter_size_unit = type { i64 }
%struct.counter_attr_parm = type { i8*, i8*, %struct.counter_size_unit*, i32*, i32, %struct.counter_device_attr_group* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@counter_device_attr_size_show = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counter_device_attr_group*, i64, i8*)* @counter_size_attribute_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @counter_size_attribute_create(%struct.counter_device_attr_group* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.counter_device_attr_group*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.counter_size_unit*, align 8
  %9 = alloca %struct.counter_attr_parm, align 8
  %10 = alloca i32, align 4
  store %struct.counter_device_attr_group* %0, %struct.counter_device_attr_group** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.counter_size_unit* @kmalloc(i32 8, i32 %11)
  store %struct.counter_size_unit* %12, %struct.counter_size_unit** %8, align 8
  %13 = load %struct.counter_size_unit*, %struct.counter_size_unit** %8, align 8
  %14 = icmp ne %struct.counter_size_unit* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %41

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.counter_size_unit*, %struct.counter_size_unit** %8, align 8
  %21 = getelementptr inbounds %struct.counter_size_unit, %struct.counter_size_unit* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.counter_device_attr_group*, %struct.counter_device_attr_group** %5, align 8
  %23 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %9, i32 0, i32 5
  store %struct.counter_device_attr_group* %22, %struct.counter_device_attr_group** %23, align 8
  %24 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %9, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %24, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %9, i32 0, i32 1
  store i8* %25, i8** %26, align 8
  %27 = load i32, i32* @counter_device_attr_size_show, align 4
  %28 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %9, i32 0, i32 4
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %9, i32 0, i32 3
  store i32* null, i32** %29, align 8
  %30 = load %struct.counter_size_unit*, %struct.counter_size_unit** %8, align 8
  %31 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %9, i32 0, i32 2
  store %struct.counter_size_unit* %30, %struct.counter_size_unit** %31, align 8
  %32 = call i32 @counter_attribute_create(%struct.counter_attr_parm* %9)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %18
  br label %37

36:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %41

37:                                               ; preds = %35
  %38 = load %struct.counter_size_unit*, %struct.counter_size_unit** %8, align 8
  %39 = call i32 @kfree(%struct.counter_size_unit* %38)
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %37, %36, %15
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.counter_size_unit* @kmalloc(i32, i32) #1

declare dso_local i32 @counter_attribute_create(%struct.counter_attr_parm*) #1

declare dso_local i32 @kfree(%struct.counter_size_unit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
