; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-lazy-init-name-hash.c_time_runs.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-lazy-init-name-hash.c_time_runs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@count = common dso_local global i32 0, align 4
@the_index = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str = private unnamed_addr constant [28 x i8] c"non-threaded code path used\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%f %f %d multi %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"%f %f %d single\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"avg %f %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"multi\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"single\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @time_runs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @time_runs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %67, %1
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @count, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %70

14:                                               ; preds = %10
  %15 = call i32 (...) @getnanotime()
  store i32 %15, i32* %3, align 4
  %16 = call i32 (...) @read_cache()
  %17 = call i32 (...) @getnanotime()
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @test_lazy_init_name_hash(%struct.TYPE_3__* @the_index, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = call i32 (...) @getnanotime()
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = sub nsw i32 %21, %22
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %2, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %14
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = call i32 @die(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %28, %14
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %33
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %3, align 4
  %39 = sub nsw i32 %37, %38
  %40 = sitofp i32 %39 to double
  %41 = fdiv double %40, 1.000000e+09
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %4, align 4
  %44 = sub nsw i32 %42, %43
  %45 = sitofp i32 %44 to double
  %46 = fdiv double %45, 1.000000e+09
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @the_index, i32 0, i32 0), align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 (i8*, double, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), double %41, double %46, i32 %47, i32 %48)
  br label %63

50:                                               ; preds = %33
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %3, align 4
  %53 = sub nsw i32 %51, %52
  %54 = sitofp i32 %53 to double
  %55 = fdiv double %54, 1.000000e+09
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %4, align 4
  %58 = sub nsw i32 %56, %57
  %59 = sitofp i32 %58 to double
  %60 = fdiv double %59, 1.000000e+09
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @the_index, i32 0, i32 0), align 4
  %62 = call i32 (i8*, double, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), double %55, double %60, i32 %61)
  br label %63

63:                                               ; preds = %50, %36
  %64 = load i32, i32* @stdout, align 4
  %65 = call i32 @fflush(i32 %64)
  %66 = call i32 (...) @discard_cache()
  br label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %10

70:                                               ; preds = %10
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @count, align 4
  %73 = sdiv i32 %71, %72
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* @count, align 4
  %75 = icmp sgt i32 %74, 1
  br i1 %75, label %76, label %85

76:                                               ; preds = %70
  %77 = load i32, i32* %7, align 4
  %78 = sitofp i32 %77 to double
  %79 = fdiv double %78, 1.000000e+09
  %80 = load i32, i32* %2, align 4
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)
  %84 = call i32 (i8*, double, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), double %79, i8* %83)
  br label %85

85:                                               ; preds = %76, %70
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

declare dso_local i32 @getnanotime(...) #1

declare dso_local i32 @read_cache(...) #1

declare dso_local i32 @test_lazy_init_name_hash(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @printf(i8*, double, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @discard_cache(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
