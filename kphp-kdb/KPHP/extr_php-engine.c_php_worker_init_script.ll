; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_php_worker_init_script.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_php_worker_init_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { double, double, i32, i32, i32, i64 }

@precise_now = common dso_local global double 0.000000e+00, align 8
@phpq_finish = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"START php script [req_id = %016llx]\0A\00", align 1
@immediate_stats = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"#0\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"failed to get script\00", align 1
@php_script = common dso_local global i32* null, align 8
@max_memory = common dso_local global i64 0, align 8
@phpq_run = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @php_worker_init_script(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca double, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load double, double* %6, align 8
  %8 = load double, double* @precise_now, align 8
  %9 = fsub double %7, %8
  %10 = fsub double %9, 1.000000e-02
  store double %10, double* %3, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load double, double* %3, align 8
  %17 = fcmp olt double %16, 2.000000e-01
  br i1 %17, label %18, label %22

18:                                               ; preds = %15, %1
  %19 = load i32, i32* @phpq_finish, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  br label %55

22:                                               ; preds = %15
  %23 = call i32 (...) @get_utime_monotonic()
  %24 = load double, double* @precise_now, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  store double %24, double* %26, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @immediate_stats, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @immediate_stats, i32 0, i32 1), align 8
  %31 = call i32 (...) @qmem_init()
  %32 = call i32 (...) @qresults_clean()
  %33 = call i32* @get_script(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %33, i32** %4, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = icmp ne i32* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @dl_assert(i32 %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32*, i32** @php_script, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %22
  %41 = load i64, i64* @max_memory, align 8
  %42 = call i32* @php_script_create(i64 %41, i64 8388608)
  store i32* %42, i32** @php_script, align 8
  br label %43

43:                                               ; preds = %40, %22
  %44 = load i32*, i32** @php_script, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @php_script_init(i32* %44, i32* %45, i32 %48)
  %50 = load double, double* %3, align 8
  %51 = call i32 @php_script_set_timeout(double %50)
  %52 = load i32, i32* @phpq_run, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %43, %18
  ret void
}

declare dso_local i32 @get_utime_monotonic(...) #1

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

declare dso_local i32 @qmem_init(...) #1

declare dso_local i32 @qresults_clean(...) #1

declare dso_local i32* @get_script(i8*) #1

declare dso_local i32 @dl_assert(i32, i8*) #1

declare dso_local i32* @php_script_create(i64, i64) #1

declare dso_local i32 @php_script_init(i32*, i32*, i32) #1

declare dso_local i32 @php_script_set_timeout(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
