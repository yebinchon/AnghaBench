; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_test-ratelim.c_main.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_test-ratelim.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.timeval = type { i32 }

@weakrand_state = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIG_ERR = common dso_local global i64 0, align 8
@options = common dso_local global %struct.TYPE_4__* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Unknown option '%s'\0A\00", align 1
@cfg_help = common dso_local global i64 0, align 8
@cfg_tick_msec = common dso_local global i32 0, align 4
@cfg_tick = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@seconds_per_tick = common dso_local global double 0.000000e+00, align 8
@cfg_connlimit = common dso_local global double 0.000000e+00, align 8
@cfg_grouplimit = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca %struct.timeval, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = call i32 @evutil_weakrand_seed_(i32* @weakrand_state, i32 0)
  %11 = load i32, i32* @SIGPIPE, align 4
  %12 = load i32, i32* @SIG_IGN, align 4
  %13 = call i64 @signal(i32 %11, i32 %12)
  %14 = load i64, i64* @SIG_ERR, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %99

17:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %18

18:                                               ; preds = %70, %17
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %73

22:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %57, %22
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @options, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %60

31:                                               ; preds = %23
  %32 = load i8**, i8*** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @options, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @strcmp(i8* %36, i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %31
  %46 = load i32, i32* %4, align 4
  %47 = load i8**, i8*** %5, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @options, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = call i64 @handle_option(i32 %46, i8** %47, i32* %6, %struct.TYPE_4__* %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %99

55:                                               ; preds = %45
  br label %69

56:                                               ; preds = %31
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %23

60:                                               ; preds = %23
  %61 = load i32, i32* @stderr, align 4
  %62 = load i8**, i8*** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @fprintf(i32 %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %66)
  %68 = call i32 (...) @usage()
  store i32 1, i32* %3, align 4
  br label %99

69:                                               ; preds = %55
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %18

73:                                               ; preds = %18
  %74 = load i64, i64* @cfg_help, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = call i32 (...) @usage()
  store i32 0, i32* %3, align 4
  br label %99

78:                                               ; preds = %73
  %79 = load i32, i32* @cfg_tick_msec, align 4
  %80 = sdiv i32 %79, 1000
  store i32 %80, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cfg_tick, i32 0, i32 0), align 4
  %81 = load i32, i32* @cfg_tick_msec, align 4
  %82 = srem i32 %81, 1000
  %83 = mul nsw i32 %82, 1000
  store i32 %83, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cfg_tick, i32 0, i32 1), align 4
  %84 = load i32, i32* @cfg_tick_msec, align 4
  %85 = sitofp i32 %84 to double
  %86 = fdiv double %85, 1.000000e+03
  store double %86, double* %8, align 8
  store double %86, double* @seconds_per_tick, align 8
  %87 = load double, double* %8, align 8
  %88 = load double, double* @cfg_connlimit, align 8
  %89 = fmul double %88, %87
  store double %89, double* @cfg_connlimit, align 8
  %90 = load double, double* %8, align 8
  %91 = load double, double* @cfg_grouplimit, align 8
  %92 = fmul double %91, %90
  store double %92, double* @cfg_grouplimit, align 8
  %93 = call i32 @evutil_gettimeofday(%struct.timeval* %9, i32* null)
  %94 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @srandom(i32 %95)
  %97 = call i32 (...) @evthread_enable_lock_debugging()
  %98 = call i32 (...) @test_ratelimiting()
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %78, %76, %60, %54, %16
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @evutil_weakrand_seed_(i32*, i32) #1

declare dso_local i64 @signal(i32, i32) #1

declare dso_local i32 @strcmp(i8*, i64) #1

declare dso_local i64 @handle_option(i32, i8**, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @evutil_gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @srandom(i32) #1

declare dso_local i32 @evthread_enable_lock_debugging(...) #1

declare dso_local i32 @test_ratelimiting(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
