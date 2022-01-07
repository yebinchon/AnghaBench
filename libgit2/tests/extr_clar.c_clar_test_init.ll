; ModuleID = '/home/carl/AnghaBench/libgit2/tests/extr_clar.c_clar_test_init.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/extr_clar.c_clar_test_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32 }

@_clar_callback_count = common dso_local global i64 0, align 8
@_clar_suite_count = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"CLAR_SUMMARY\00", align 1
@_clar = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to open the summary file\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to sandbox the test runner.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clar_test_init(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %5 = load i64, i64* @_clar_callback_count, align 8
  %6 = trunc i64 %5 to i32
  %7 = load i64, i64* @_clar_suite_count, align 8
  %8 = trunc i64 %7 to i32
  %9 = call i32 @clar_print_init(i32 %6, i32 %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %10 = call i32* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32* %10, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_clar, i32 0, i32 1), align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_clar, i32 0, i32 0), align 8
  %13 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_clar, i32 0, i32 1), align 8
  %14 = call i32* @strdup(i32* %13)
  store i32* %14, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_clar, i32 0, i32 1), align 8
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i32, i32* %3, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = load i8**, i8*** %4, align 8
  %21 = call i32 @clar_parse_args(i32 %19, i8** %20)
  br label %22

22:                                               ; preds = %18, %15
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_clar, i32 0, i32 0), align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_clar, i32 0, i32 1), align 8
  %27 = call i32 @clar_summary_init(i32* %26)
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_clar, i32 0, i32 2), align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = call i32 @clar_print_onabort(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %31 = call i32 @exit(i32 -1) #3
  unreachable

32:                                               ; preds = %25, %22
  %33 = call i64 (...) @clar_sandbox()
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = call i32 @clar_print_onabort(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %37 = call i32 @exit(i32 -1) #3
  unreachable

38:                                               ; preds = %32
  ret void
}

declare dso_local i32 @clar_print_init(i32, i32, i8*) #1

declare dso_local i32* @getenv(i8*) #1

declare dso_local i32* @strdup(i32*) #1

declare dso_local i32 @clar_parse_args(i32, i8**) #1

declare dso_local i32 @clar_summary_init(i32*) #1

declare dso_local i32 @clar_print_onabort(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @clar_sandbox(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
