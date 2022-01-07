; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_bench_cascade.c_main.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_bench_cascade.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i32 }

@.str = private unnamed_addr constant [3 x i8] c"n:\00", align 1
@optarg = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Illegal argument \22%c\22\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@RLIMIT_NOFILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.timeval*, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 100, i32* %9, align 4
  br label %10

10:                                               ; preds = %25, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %7, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %26

15:                                               ; preds = %10
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %20 [
    i32 110, label %17
  ]

17:                                               ; preds = %15
  %18 = load i32, i32* @optarg, align 4
  %19 = call i32 @atoi(i32 %18)
  store i32 %19, i32* %9, align 4
  br label %25

20:                                               ; preds = %15
  %21 = load i32, i32* @stderr, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = call i32 @exit(i32 1) #3
  unreachable

25:                                               ; preds = %17
  br label %10

26:                                               ; preds = %10
  %27 = call i32 (...) @event_init()
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %51, %26
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 25
  br i1 %30, label %31, label %54

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = call %struct.timeval* @run_once(i32 %32)
  store %struct.timeval* %33, %struct.timeval** %8, align 8
  %34 = load %struct.timeval*, %struct.timeval** %8, align 8
  %35 = icmp eq %struct.timeval* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 @exit(i32 1) #3
  unreachable

38:                                               ; preds = %31
  %39 = load i32, i32* @stdout, align 4
  %40 = load %struct.timeval*, %struct.timeval** %8, align 8
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = mul nsw i64 %42, 1000000
  %44 = load %struct.timeval*, %struct.timeval** %8, align 8
  %45 = getelementptr inbounds %struct.timeval, %struct.timeval* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %43, %47
  %49 = trunc i64 %48 to i32
  %50 = call i32 @fprintf(i32 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %38
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %28

54:                                               ; preds = %28
  %55 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @event_init(...) #1

declare dso_local %struct.timeval* @run_once(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
