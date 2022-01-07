; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_tinytest.c_testcase_run_bare_.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_tinytest.c_testcase_run_bare_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.testcase_t = type { %struct.TYPE_2__*, i32 (i8*)* }
%struct.TYPE_2__ = type { i64 (%struct.testcase_t*, i8*)*, i8* (%struct.testcase_t*)* }

@FAIL = common dso_local global i32 0, align 4
@TT_SKIP = common dso_local global i64 0, align 8
@SKIP = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4
@cur_test_outcome = common dso_local global i32 0, align 4
@opt_timeout = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.testcase_t*)* @testcase_run_bare_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @testcase_run_bare_(%struct.testcase_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.testcase_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.testcase_t* %0, %struct.testcase_t** %3, align 8
  store i8* null, i8** %4, align 8
  %6 = load %struct.testcase_t*, %struct.testcase_t** %3, align 8
  %7 = getelementptr inbounds %struct.testcase_t, %struct.testcase_t* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %31

10:                                               ; preds = %1
  %11 = load %struct.testcase_t*, %struct.testcase_t** %3, align 8
  %12 = getelementptr inbounds %struct.testcase_t, %struct.testcase_t* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i8* (%struct.testcase_t*)*, i8* (%struct.testcase_t*)** %14, align 8
  %16 = load %struct.testcase_t*, %struct.testcase_t** %3, align 8
  %17 = call i8* %15(%struct.testcase_t* %16)
  store i8* %17, i8** %4, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %10
  %21 = load i32, i32* @FAIL, align 4
  store i32 %21, i32* %2, align 4
  br label %70

22:                                               ; preds = %10
  %23 = load i8*, i8** %4, align 8
  %24 = load i64, i64* @TT_SKIP, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = icmp eq i8* %23, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @SKIP, align 4
  store i32 %28, i32* %2, align 4
  br label %70

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29
  br label %31

31:                                               ; preds = %30, %1
  %32 = load i32, i32* @OK, align 4
  store i32 %32, i32* @cur_test_outcome, align 4
  %33 = load i64, i64* @opt_timeout, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = call i32 (...) @testcase_set_timeout_()
  %37 = load %struct.testcase_t*, %struct.testcase_t** %3, align 8
  %38 = getelementptr inbounds %struct.testcase_t, %struct.testcase_t* %37, i32 0, i32 1
  %39 = load i32 (i8*)*, i32 (i8*)** %38, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 %39(i8* %40)
  %42 = call i32 (...) @testcase_reset_timeout_()
  br label %49

43:                                               ; preds = %31
  %44 = load %struct.testcase_t*, %struct.testcase_t** %3, align 8
  %45 = getelementptr inbounds %struct.testcase_t, %struct.testcase_t* %44, i32 0, i32 1
  %46 = load i32 (i8*)*, i32 (i8*)** %45, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 %46(i8* %47)
  br label %49

49:                                               ; preds = %43, %35
  %50 = load i32, i32* @cur_test_outcome, align 4
  store i32 %50, i32* %5, align 4
  %51 = load %struct.testcase_t*, %struct.testcase_t** %3, align 8
  %52 = getelementptr inbounds %struct.testcase_t, %struct.testcase_t* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = icmp ne %struct.TYPE_2__* %53, null
  br i1 %54, label %55, label %68

55:                                               ; preds = %49
  %56 = load %struct.testcase_t*, %struct.testcase_t** %3, align 8
  %57 = getelementptr inbounds %struct.testcase_t, %struct.testcase_t* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64 (%struct.testcase_t*, i8*)*, i64 (%struct.testcase_t*, i8*)** %59, align 8
  %61 = load %struct.testcase_t*, %struct.testcase_t** %3, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = call i64 %60(%struct.testcase_t* %61, i8* %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %55
  %66 = load i32, i32* @FAIL, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %65, %55
  br label %68

68:                                               ; preds = %67, %49
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %27, %20
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @testcase_set_timeout_(...) #1

declare dso_local i32 @testcase_reset_timeout_(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
