; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_benchmark-pound.c_pound_it.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_benchmark-pound.c_pound_it.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@loop = common dso_local global i32 0, align 4
@start = common dso_local global i32 0, align 4
@UV_RUN_DEFAULT = common dso_local global i32 0, align 4
@NANOSEC = common dso_local global double 0.000000e+00, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"%s-conn-pound-%d: %.0f accepts/s (%d failed)\0A\00", align 1
@closed_streams = common dso_local global double 0.000000e+00, align 8
@conns_failed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32 (i32, i8*)*, i32 (i32, i32, i8*)*, i32, i8*)* @pound_it to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pound_it(i32 %0, i8* %1, i32 (i32, i8*)* %2, i32 (i32, i32, i8*)* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32 (i32, i8*)*, align 8
  %10 = alloca i32 (i32, i32, i8*)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 (i32, i8*)* %2, i32 (i32, i8*)** %9, align 8
  store i32 (i32, i32, i8*)* %3, i32 (i32, i32, i8*)** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %17 = call i32 (...) @uv_default_loop()
  store i32 %17, i32* @loop, align 4
  %18 = load i32, i32* @loop, align 4
  %19 = call i32 @uv_update_time(i32 %18)
  %20 = load i32, i32* @loop, align 4
  %21 = call i32 @uv_now(i32 %20)
  store i32 %21, i32* @start, align 4
  %22 = call i64 (...) @uv_hrtime()
  store i64 %22, i64* %15, align 8
  %23 = load i32 (i32, i8*)*, i32 (i32, i8*)** %9, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i8*, i8** %12, align 8
  %26 = call i32 %23(i32 %24, i8* %25)
  %27 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %10, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i8*, i8** %12, align 8
  %31 = call i32 %27(i32 %28, i32 %29, i8* %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @ASSERT(i32 %35)
  %37 = load i32, i32* @loop, align 4
  %38 = load i32, i32* @UV_RUN_DEFAULT, align 4
  %39 = call i32 @uv_run(i32 %37, i32 %38)
  %40 = call i64 (...) @uv_hrtime()
  store i64 %40, i64* %16, align 8
  %41 = load i64, i64* %16, align 8
  %42 = load i64, i64* %15, align 8
  %43 = sub nsw i64 %41, %42
  %44 = sitofp i64 %43 to double
  %45 = load double, double* @NANOSEC, align 8
  %46 = fdiv double %44, %45
  store double %46, double* %13, align 8
  %47 = load i32, i32* @stderr, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load double, double* @closed_streams, align 8
  %51 = load double, double* %13, align 8
  %52 = fdiv double %50, %51
  %53 = load i32, i32* @conns_failed, align 4
  %54 = call i32 @fprintf(i32 %47, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %48, i32 %49, double %52, i32 %53)
  %55 = load i32, i32* @stderr, align 4
  %56 = call i32 @fflush(i32 %55)
  %57 = call i32 (...) @MAKE_VALGRIND_HAPPY()
  ret i32 0
}

declare dso_local i32 @uv_default_loop(...) #1

declare dso_local i32 @uv_update_time(i32) #1

declare dso_local i32 @uv_now(i32) #1

declare dso_local i64 @uv_hrtime(...) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @uv_run(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, double, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @MAKE_VALGRIND_HAPPY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
