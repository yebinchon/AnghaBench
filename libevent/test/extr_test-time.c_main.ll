; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_test-time.c_main.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_test-time.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }

@weakrand_state = common dso_local global i32 0, align 4
@NEVENT = common dso_local global i32 0, align 4
@ev = common dso_local global i32* null, align 8
@time_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%d, %d\0A\00", align 1
@called = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.timeval, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = call i32 @evutil_weakrand_seed_(i32* @weakrand_state, i32 0)
  %9 = call i32 (...) @event_init()
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %41, %2
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @NEVENT, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %44

14:                                               ; preds = %10
  %15 = call i32 @malloc(i32 4)
  %16 = load i32*, i32** @ev, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  store i32 %15, i32* %19, align 4
  %20 = load i32*, i32** @ev, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @time_cb, align 4
  %26 = load i32*, i32** @ev, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @evtimer_set(i32 %24, i32 %25, i32 %30)
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = call i32 @rand_int(i32 50000)
  %34 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = load i32*, i32** @ev, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @evtimer_add(i32 %39, %struct.timeval* %6)
  br label %41

41:                                               ; preds = %14
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %10

44:                                               ; preds = %10
  %45 = call i32 (...) @event_dispatch()
  %46 = load i32, i32* @called, align 4
  %47 = load i32, i32* @NEVENT, align 4
  %48 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load i32, i32* @called, align 4
  %50 = load i32, i32* @NEVENT, align 4
  %51 = icmp slt i32 %49, %50
  %52 = zext i1 %51 to i32
  ret i32 %52
}

declare dso_local i32 @evutil_weakrand_seed_(i32*, i32) #1

declare dso_local i32 @event_init(...) #1

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @evtimer_set(i32, i32, i32) #1

declare dso_local i32 @rand_int(i32) #1

declare dso_local i32 @evtimer_add(i32, %struct.timeval*) #1

declare dso_local i32 @event_dispatch(...) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
