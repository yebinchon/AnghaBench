; ModuleID = '/home/carl/AnghaBench/libgit2/tests/extr_clar.c_clar_run_test.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/extr_clar.c_clar_run_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, i32, i64, i32*, i32 (i32*)*, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.clar_func = type { i32, i32 (...)* }

@_clar = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@CL_TRACE__TEST__BEGIN = common dso_local global i32 0, align 4
@CL_TRACE__TEST__RUN_BEGIN = common dso_local global i32 0, align 4
@CL_TRACE__TEST__RUN_END = common dso_local global i32 0, align 4
@CL_TEST_NOTRUN = common dso_local global i64 0, align 8
@CL_TEST_OK = common dso_local global i64 0, align 8
@CL_TRACE__TEST__END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clar_func*, %struct.clar_func*, %struct.clar_func*)* @clar_run_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clar_run_test(%struct.clar_func* %0, %struct.clar_func* %1, %struct.clar_func* %2) #0 {
  %4 = alloca %struct.clar_func*, align 8
  %5 = alloca %struct.clar_func*, align 8
  %6 = alloca %struct.clar_func*, align 8
  store %struct.clar_func* %0, %struct.clar_func** %4, align 8
  store %struct.clar_func* %1, %struct.clar_func** %5, align 8
  store %struct.clar_func* %2, %struct.clar_func** %6, align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_clar, i32 0, i32 0), align 8
  %7 = load i32, i32* @CL_TRACE__TEST__BEGIN, align 4
  %8 = call i32 @CL_TRACE(i32 %7)
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_clar, i32 0, i32 6), align 8
  %10 = call i64 @setjmp(i32 %9) #3
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %3
  %13 = load %struct.clar_func*, %struct.clar_func** %5, align 8
  %14 = getelementptr inbounds %struct.clar_func, %struct.clar_func* %13, i32 0, i32 1
  %15 = load i32 (...)*, i32 (...)** %14, align 8
  %16 = icmp ne i32 (...)* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.clar_func*, %struct.clar_func** %5, align 8
  %19 = getelementptr inbounds %struct.clar_func, %struct.clar_func* %18, i32 0, i32 1
  %20 = load i32 (...)*, i32 (...)** %19, align 8
  %21 = call i32 (...) %20()
  br label %22

22:                                               ; preds = %17, %12
  %23 = load i32, i32* @CL_TRACE__TEST__RUN_BEGIN, align 4
  %24 = call i32 @CL_TRACE(i32 %23)
  %25 = load %struct.clar_func*, %struct.clar_func** %4, align 8
  %26 = getelementptr inbounds %struct.clar_func, %struct.clar_func* %25, i32 0, i32 1
  %27 = load i32 (...)*, i32 (...)** %26, align 8
  %28 = call i32 (...) %27()
  %29 = load i32, i32* @CL_TRACE__TEST__RUN_END, align 4
  %30 = call i32 @CL_TRACE(i32 %29)
  br label %31

31:                                               ; preds = %22, %3
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_clar, i32 0, i32 0), align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_clar, i32 0, i32 1), align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CL_TEST_NOTRUN, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i64, i64* @CL_TEST_OK, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_clar, i32 0, i32 1), align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %37, %31
  %42 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_clar, i32 0, i32 5), align 8
  %43 = icmp ne i32 (i32*)* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_clar, i32 0, i32 5), align 8
  %46 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_clar, i32 0, i32 4), align 8
  %47 = call i32 %45(i32* %46)
  br label %48

48:                                               ; preds = %44, %41
  %49 = load %struct.clar_func*, %struct.clar_func** %6, align 8
  %50 = getelementptr inbounds %struct.clar_func, %struct.clar_func* %49, i32 0, i32 1
  %51 = load i32 (...)*, i32 (...)** %50, align 8
  %52 = icmp ne i32 (...)* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.clar_func*, %struct.clar_func** %6, align 8
  %55 = getelementptr inbounds %struct.clar_func, %struct.clar_func* %54, i32 0, i32 1
  %56 = load i32 (...)*, i32 (...)** %55, align 8
  %57 = call i32 (...) %56()
  br label %58

58:                                               ; preds = %53, %48
  %59 = load i32, i32* @CL_TRACE__TEST__END, align 4
  %60 = call i32 @CL_TRACE(i32 %59)
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_clar, i32 0, i32 2), align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_clar, i32 0, i32 2), align 8
  store i32 (i32*)* null, i32 (i32*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_clar, i32 0, i32 5), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_clar, i32 0, i32 4), align 8
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_clar, i32 0, i32 3), align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_clar, i32 0, i32 1), align 8
  %67 = call i32 @clar_report_errors(%struct.TYPE_3__* %66)
  br label %77

68:                                               ; preds = %58
  %69 = load %struct.clar_func*, %struct.clar_func** %4, align 8
  %70 = getelementptr inbounds %struct.clar_func, %struct.clar_func* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_clar, i32 0, i32 2), align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_clar, i32 0, i32 1), align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @clar_print_ontest(i32 %71, i32 %72, i64 %75)
  br label %77

77:                                               ; preds = %68, %65
  ret void
}

declare dso_local i32 @CL_TRACE(i32) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i32 @clar_report_errors(%struct.TYPE_3__*) #1

declare dso_local i32 @clar_print_ontest(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
