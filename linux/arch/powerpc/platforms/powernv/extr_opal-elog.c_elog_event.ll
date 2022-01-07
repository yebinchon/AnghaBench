; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-elog.c_elog_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-elog.c_elog_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }

@OPAL_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"ELOG: OPAL log info read failed\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@OPAL_MAX_ERRLOG_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"0x%llx\00", align 1
@elog_kset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @elog_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elog_event(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca [19 x i8], align 16
  %14 = alloca %struct.kobject*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %15 = call i32 @opal_get_elog_size(i32* %7, i32* %6, i32* %8)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = load i32, i32* @OPAL_SUCCESS, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %21, i32* %3, align 4
  br label %58

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @be64_to_cpu(i32 %23)
  store i64 %24, i64* %9, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @be64_to_cpu(i32 %25)
  store i64 %26, i64* %10, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i64 @be64_to_cpu(i32 %27)
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @OPAL_MAX_ERRLOG_SIZE, align 8
  %31 = icmp sgt i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @WARN_ON(i32 %32)
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @OPAL_MAX_ERRLOG_SIZE, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %22
  %38 = load i64, i64* @OPAL_MAX_ERRLOG_SIZE, align 8
  store i64 %38, i64* %9, align 8
  br label %39

39:                                               ; preds = %37, %22
  %40 = getelementptr inbounds [19 x i8], [19 x i8]* %13, i64 0, i64 0
  %41 = load i64, i64* %10, align 8
  %42 = call i32 @sprintf(i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %41)
  %43 = load i32, i32* @elog_kset, align 4
  %44 = getelementptr inbounds [19 x i8], [19 x i8]* %13, i64 0, i64 0
  %45 = call %struct.kobject* @kset_find_obj(i32 %43, i8* %44)
  store %struct.kobject* %45, %struct.kobject** %14, align 8
  %46 = load %struct.kobject*, %struct.kobject** %14, align 8
  %47 = icmp ne %struct.kobject* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load %struct.kobject*, %struct.kobject** %14, align 8
  %50 = call i32 @kobject_put(%struct.kobject* %49)
  %51 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %51, i32* %3, align 4
  br label %58

52:                                               ; preds = %39
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %11, align 8
  %56 = call i32 @create_elog_obj(i64 %53, i64 %54, i64 %55)
  %57 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %52, %48, %19
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @opal_get_elog_size(i32*, i32*, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local %struct.kobject* @kset_find_obj(i32, i8*) #1

declare dso_local i32 @kobject_put(%struct.kobject*) #1

declare dso_local i32 @create_elog_obj(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
