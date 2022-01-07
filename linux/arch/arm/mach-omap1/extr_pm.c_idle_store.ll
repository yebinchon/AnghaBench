; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap1/extr_pm.c_idle_store.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap1/extr_pm.c_idle_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.kobj_attribute = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%hu\00", align 1
@CONFIG_OMAP_32K_TIMER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"idle_sleep_store: Invalid value\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@enable_dyn_sleep = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* @idle_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @idle_store(%struct.kobject* %0, %struct.kobj_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.kobject*, align 8
  %7 = alloca %struct.kobj_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i16, align 2
  store %struct.kobject* %0, %struct.kobject** %6, align 8
  store %struct.kobj_attribute* %1, %struct.kobj_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = call i32 @sscanf(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i16* %10)
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %30, label %14

14:                                               ; preds = %4
  %15 = load i16, i16* %10, align 2
  %16 = zext i16 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i16, i16* %10, align 2
  %20 = zext i16 %19 to i32
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %30, label %22

22:                                               ; preds = %18, %14
  %23 = load i16, i16* %10, align 2
  %24 = zext i16 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load i32, i32* @CONFIG_OMAP_32K_TIMER, align 4
  %28 = call i32 @IS_ENABLED(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26, %18, %4
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i64, i64* @EINVAL, align 8
  %33 = sub i64 0, %32
  store i64 %33, i64* %5, align 8
  br label %37

34:                                               ; preds = %26, %22
  %35 = load i16, i16* %10, align 2
  store i16 %35, i16* @enable_dyn_sleep, align 2
  %36 = load i64, i64* %9, align 8
  store i64 %36, i64* %5, align 8
  br label %37

37:                                               ; preds = %34, %30
  %38 = load i64, i64* %5, align 8
  ret i64 %38
}

declare dso_local i32 @sscanf(i8*, i8*, i16*) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
