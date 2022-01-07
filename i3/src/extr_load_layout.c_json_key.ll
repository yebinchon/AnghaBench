; ModuleID = '/home/carl/AnghaBench/i3/src/extr_load_layout.c_json_key.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_load_layout.c_json_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"key: %.*s\0A\00", align 1
@last_key = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"swallows\00", align 1
@parsing_swallows = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"gaps\00", align 1
@parsing_gaps = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"rect\00", align 1
@parsing_rect = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"deco_rect\00", align 1
@parsing_deco_rect = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"window_rect\00", align 1
@parsing_window_rect = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"geometry\00", align 1
@parsing_geometry = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"focus\00", align 1
@parsing_focus = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"marks\00", align 1
@num_marks = common dso_local global i64 0, align 8
@parsing_marks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @json_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @json_key(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @LOG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %8, i8* %9)
  %11 = load i32, i32* @last_key, align 4
  %12 = call i32 @FREE(i32 %11)
  %13 = load i64, i64* %6, align 8
  %14 = add i64 %13, 1
  %15 = call i32 @scalloc(i64 %14, i32 1)
  store i32 %15, i32* @last_key, align 4
  %16 = load i32, i32* @last_key, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @memcpy(i32 %16, i8* %17, i64 %18)
  %20 = load i32, i32* @last_key, align 4
  %21 = call i64 @strcasecmp(i32 %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 1, i32* @parsing_swallows, align 4
  br label %24

24:                                               ; preds = %23, %3
  %25 = load i32, i32* @last_key, align 4
  %26 = call i64 @strcasecmp(i32 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 1, i32* @parsing_gaps, align 4
  br label %29

29:                                               ; preds = %28, %24
  %30 = load i32, i32* @last_key, align 4
  %31 = call i64 @strcasecmp(i32 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 1, i32* @parsing_rect, align 4
  br label %34

34:                                               ; preds = %33, %29
  %35 = load i32, i32* @last_key, align 4
  %36 = call i64 @strcasecmp(i32 %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 1, i32* @parsing_deco_rect, align 4
  br label %39

39:                                               ; preds = %38, %34
  %40 = load i32, i32* @last_key, align 4
  %41 = call i64 @strcasecmp(i32 %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 1, i32* @parsing_window_rect, align 4
  br label %44

44:                                               ; preds = %43, %39
  %45 = load i32, i32* @last_key, align 4
  %46 = call i64 @strcasecmp(i32 %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 1, i32* @parsing_geometry, align 4
  br label %49

49:                                               ; preds = %48, %44
  %50 = load i32, i32* @last_key, align 4
  %51 = call i64 @strcasecmp(i32 %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 1, i32* @parsing_focus, align 4
  br label %54

54:                                               ; preds = %53, %49
  %55 = load i32, i32* @last_key, align 4
  %56 = call i64 @strcasecmp(i32 %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i64 0, i64* @num_marks, align 8
  store i32 1, i32* @parsing_marks, align 4
  br label %59

59:                                               ; preds = %58, %54
  ret i32 1
}

declare dso_local i32 @LOG(i8*, i32, i8*) #1

declare dso_local i32 @FREE(i32) #1

declare dso_local i32 @scalloc(i64, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i64 @strcasecmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
