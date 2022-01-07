; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_fast-classifier.c_fast_classifier_get_exceptions.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_fast-classifier.c_fast_classifier_get_exceptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fast_classifier = type { i32*, i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@__fsc = common dso_local global %struct.fast_classifier zeroinitializer, align 8
@FAST_CL_EXCEPTION_MAX = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s = %d\0A\00", align 1
@fast_classifier_exception_events_string = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @fast_classifier_get_exceptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fast_classifier_get_exceptions(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fast_classifier*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.fast_classifier* @__fsc, %struct.fast_classifier** %9, align 8
  %10 = load %struct.fast_classifier*, %struct.fast_classifier** %9, align 8
  %11 = getelementptr inbounds %struct.fast_classifier, %struct.fast_classifier* %10, i32 0, i32 1
  %12 = call i32 @spin_lock_bh(i32* %11)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %52, %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @FAST_CL_EXCEPTION_MAX, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %55

17:                                               ; preds = %13
  %18 = load %struct.fast_classifier*, %struct.fast_classifier** %9, align 8
  %19 = getelementptr inbounds %struct.fast_classifier, %struct.fast_classifier* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %17
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = load i32, i32* %8, align 4
  %33 = sub nsw i32 %31, %32
  %34 = load i8**, i8*** @fast_classifier_exception_events_string, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.fast_classifier*, %struct.fast_classifier** %9, align 8
  %40 = getelementptr inbounds %struct.fast_classifier, %struct.fast_classifier* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @snprintf(i8* %30, i32 %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %38, i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %26, %17
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %13

55:                                               ; preds = %13
  %56 = load %struct.fast_classifier*, %struct.fast_classifier** %9, align 8
  %57 = getelementptr inbounds %struct.fast_classifier, %struct.fast_classifier* %56, i32 0, i32 1
  %58 = call i32 @spin_unlock_bh(i32* %57)
  %59 = load i32, i32* %8, align 4
  ret i32 %59
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
