; ModuleID = '/home/carl/AnghaBench/glfw/tests/extr_glfwinfo.c_get_device_type_name.c'
source_filename = "/home/carl/AnghaBench/glfw/tests/extr_glfwinfo.c_get_device_type_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VK_PHYSICAL_DEVICE_TYPE_OTHER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"other\00", align 1
@VK_PHYSICAL_DEVICE_TYPE_INTEGRATED_GPU = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"integrated GPU\00", align 1
@VK_PHYSICAL_DEVICE_TYPE_DISCRETE_GPU = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"discrete GPU\00", align 1
@VK_PHYSICAL_DEVICE_TYPE_VIRTUAL_GPU = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"virtual GPU\00", align 1
@VK_PHYSICAL_DEVICE_TYPE_CPU = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"CPU\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @get_device_type_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_device_type_name(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @VK_PHYSICAL_DEVICE_TYPE_OTHER, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %33

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @VK_PHYSICAL_DEVICE_TYPE_INTEGRATED_GPU, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %33

13:                                               ; preds = %8
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @VK_PHYSICAL_DEVICE_TYPE_DISCRETE_GPU, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %33

18:                                               ; preds = %13
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @VK_PHYSICAL_DEVICE_TYPE_VIRTUAL_GPU, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %33

23:                                               ; preds = %18
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @VK_PHYSICAL_DEVICE_TYPE_CPU, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %33

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %28
  br label %30

30:                                               ; preds = %29
  br label %31

31:                                               ; preds = %30
  br label %32

32:                                               ; preds = %31
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %33

33:                                               ; preds = %32, %27, %22, %17, %12, %7
  %34 = load i8*, i8** %2, align 8
  ret i8* %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
