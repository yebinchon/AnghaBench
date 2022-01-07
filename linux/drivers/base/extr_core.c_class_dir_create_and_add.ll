; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_core.c_class_dir_create_and_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_core.c_class_dir_create_and_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.class = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.kobject = type { i32* }
%struct.class_dir = type { %struct.kobject, %struct.class* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@class_dir_ktype = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kobject* (%struct.class*, %struct.kobject*)* @class_dir_create_and_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kobject* @class_dir_create_and_add(%struct.class* %0, %struct.kobject* %1) #0 {
  %3 = alloca %struct.kobject*, align 8
  %4 = alloca %struct.class*, align 8
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.class_dir*, align 8
  %7 = alloca i32, align 4
  store %struct.class* %0, %struct.class** %4, align 8
  store %struct.kobject* %1, %struct.kobject** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.class_dir* @kzalloc(i32 16, i32 %8)
  store %struct.class_dir* %9, %struct.class_dir** %6, align 8
  %10 = load %struct.class_dir*, %struct.class_dir** %6, align 8
  %11 = icmp ne %struct.class_dir* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.kobject* @ERR_PTR(i32 %14)
  store %struct.kobject* %15, %struct.kobject** %3, align 8
  br label %48

16:                                               ; preds = %2
  %17 = load %struct.class*, %struct.class** %4, align 8
  %18 = load %struct.class_dir*, %struct.class_dir** %6, align 8
  %19 = getelementptr inbounds %struct.class_dir, %struct.class_dir* %18, i32 0, i32 1
  store %struct.class* %17, %struct.class** %19, align 8
  %20 = load %struct.class_dir*, %struct.class_dir** %6, align 8
  %21 = getelementptr inbounds %struct.class_dir, %struct.class_dir* %20, i32 0, i32 0
  %22 = call i32 @kobject_init(%struct.kobject* %21, i32* @class_dir_ktype)
  %23 = load %struct.class*, %struct.class** %4, align 8
  %24 = getelementptr inbounds %struct.class, %struct.class* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.class_dir*, %struct.class_dir** %6, align 8
  %28 = getelementptr inbounds %struct.class_dir, %struct.class_dir* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.kobject, %struct.kobject* %28, i32 0, i32 0
  store i32* %26, i32** %29, align 8
  %30 = load %struct.class_dir*, %struct.class_dir** %6, align 8
  %31 = getelementptr inbounds %struct.class_dir, %struct.class_dir* %30, i32 0, i32 0
  %32 = load %struct.kobject*, %struct.kobject** %5, align 8
  %33 = load %struct.class*, %struct.class** %4, align 8
  %34 = getelementptr inbounds %struct.class, %struct.class* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @kobject_add(%struct.kobject* %31, %struct.kobject* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %16
  %40 = load %struct.class_dir*, %struct.class_dir** %6, align 8
  %41 = getelementptr inbounds %struct.class_dir, %struct.class_dir* %40, i32 0, i32 0
  %42 = call i32 @kobject_put(%struct.kobject* %41)
  %43 = load i32, i32* %7, align 4
  %44 = call %struct.kobject* @ERR_PTR(i32 %43)
  store %struct.kobject* %44, %struct.kobject** %3, align 8
  br label %48

45:                                               ; preds = %16
  %46 = load %struct.class_dir*, %struct.class_dir** %6, align 8
  %47 = getelementptr inbounds %struct.class_dir, %struct.class_dir* %46, i32 0, i32 0
  store %struct.kobject* %47, %struct.kobject** %3, align 8
  br label %48

48:                                               ; preds = %45, %39, %12
  %49 = load %struct.kobject*, %struct.kobject** %3, align 8
  ret %struct.kobject* %49
}

declare dso_local %struct.class_dir* @kzalloc(i32, i32) #1

declare dso_local %struct.kobject* @ERR_PTR(i32) #1

declare dso_local i32 @kobject_init(%struct.kobject*, i32*) #1

declare dso_local i32 @kobject_add(%struct.kobject*, %struct.kobject*, i8*, i32) #1

declare dso_local i32 @kobject_put(%struct.kobject*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
