; ModuleID = '/home/carl/AnghaBench/i3/i3bar/src/extr_parse_json_header.c_header_map_key.c'
source_filename = "/home/carl/AnghaBench/i3/i3bar/src/extr_parse_json_header.c_header_map_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@KEY_VERSION = common dso_local global i32 0, align 4
@current_key = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"stop_signal\00", align 1
@KEY_STOP_SIGNAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"cont_signal\00", align 1
@KEY_CONT_SIGNAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"click_events\00", align 1
@KEY_CLICK_EVENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @header_map_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @header_map_key(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = call i64 @CHECK_KEY(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = load i32, i32* @KEY_VERSION, align 4
  store i32 %10, i32* @current_key, align 4
  br label %29

11:                                               ; preds = %3
  %12 = call i64 @CHECK_KEY(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i32, i32* @KEY_STOP_SIGNAL, align 4
  store i32 %15, i32* @current_key, align 4
  br label %28

16:                                               ; preds = %11
  %17 = call i64 @CHECK_KEY(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @KEY_CONT_SIGNAL, align 4
  store i32 %20, i32* @current_key, align 4
  br label %27

21:                                               ; preds = %16
  %22 = call i64 @CHECK_KEY(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @KEY_CLICK_EVENTS, align 4
  store i32 %25, i32* @current_key, align 4
  br label %26

26:                                               ; preds = %24, %21
  br label %27

27:                                               ; preds = %26, %19
  br label %28

28:                                               ; preds = %27, %14
  br label %29

29:                                               ; preds = %28, %9
  ret i32 1
}

declare dso_local i64 @CHECK_KEY(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
