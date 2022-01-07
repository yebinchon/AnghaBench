; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_name_attribute_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_name_attribute_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device_attr_group = type { i32 }
%struct.counter_name_unit = type { i8* }
%struct.counter_attr_parm = type { i8*, i8*, %struct.counter_name_unit*, i32*, i32, %struct.counter_device_attr_group* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@counter_device_attr_name_show = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counter_device_attr_group*, i8*)* @counter_name_attribute_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @counter_name_attribute_create(%struct.counter_device_attr_group* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.counter_device_attr_group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.counter_name_unit*, align 8
  %7 = alloca %struct.counter_attr_parm, align 8
  %8 = alloca i32, align 4
  store %struct.counter_device_attr_group* %0, %struct.counter_device_attr_group** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %42

12:                                               ; preds = %2
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.counter_name_unit* @kmalloc(i32 8, i32 %13)
  store %struct.counter_name_unit* %14, %struct.counter_name_unit** %6, align 8
  %15 = load %struct.counter_name_unit*, %struct.counter_name_unit** %6, align 8
  %16 = icmp ne %struct.counter_name_unit* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %42

20:                                               ; preds = %12
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.counter_name_unit*, %struct.counter_name_unit** %6, align 8
  %23 = getelementptr inbounds %struct.counter_name_unit, %struct.counter_name_unit* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load %struct.counter_device_attr_group*, %struct.counter_device_attr_group** %4, align 8
  %25 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %7, i32 0, i32 5
  store %struct.counter_device_attr_group* %24, %struct.counter_device_attr_group** %25, align 8
  %26 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %26, align 8
  %27 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %7, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %27, align 8
  %28 = load i32, i32* @counter_device_attr_name_show, align 4
  %29 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %7, i32 0, i32 4
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %7, i32 0, i32 3
  store i32* null, i32** %30, align 8
  %31 = load %struct.counter_name_unit*, %struct.counter_name_unit** %6, align 8
  %32 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %7, i32 0, i32 2
  store %struct.counter_name_unit* %31, %struct.counter_name_unit** %32, align 8
  %33 = call i32 @counter_attribute_create(%struct.counter_attr_parm* %7)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %20
  br label %38

37:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %42

38:                                               ; preds = %36
  %39 = load %struct.counter_name_unit*, %struct.counter_name_unit** %6, align 8
  %40 = call i32 @kfree(%struct.counter_name_unit* %39)
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %37, %17, %11
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.counter_name_unit* @kmalloc(i32, i32) #1

declare dso_local i32 @counter_attribute_create(%struct.counter_attr_parm*) #1

declare dso_local i32 @kfree(%struct.counter_name_unit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
