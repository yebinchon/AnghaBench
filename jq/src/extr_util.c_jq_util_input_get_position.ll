; ModuleID = '/home/carl/AnghaBench/jq/src/extr_util.c_jq_util_input_get_position.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_util.c_jq_util_input_get_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@jq_util_input_next_input_cb = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Invalid jq_util_input API usage\00", align 1
@JV_KIND_STRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s:%lu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jq_util_input_get_position(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 0, i64* %4, align 8
  store i8* null, i8** %5, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @jq_get_input_cb(i32* %8, i64* %4, i8** %5)
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @jq_util_input_next_input_cb, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @jq_util_input_next_input_cb, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = call i32 @jv_string(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @jv_invalid_with_msg(i32 %19)
  store i32 %20, i32* %2, align 4
  br label %42

21:                                               ; preds = %1
  %22 = load i8*, i8** %5, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %6, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @jv_get_kind(i32 %26)
  %28 = load i64, i64* @JV_KIND_STRING, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = call i32 @jv_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 %31, i32* %2, align 4
  br label %42

32:                                               ; preds = %21
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @jv_string_value(i32 %35)
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @jv_string_fmt(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %36, i64 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %32, %30, %18
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @jq_get_input_cb(i32*, i64*, i8**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @jv_invalid_with_msg(i32) #1

declare dso_local i32 @jv_string(i8*) #1

declare dso_local i64 @jv_get_kind(i32) #1

declare dso_local i32 @jv_string_fmt(i8*, i32, i64) #1

declare dso_local i32 @jv_string_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
