; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_posix-poll.c_uv__pollfds_maybe_resize.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_posix-poll.c_uv__pollfds_maybe_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, %struct.pollfd* }
%struct.pollfd = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @uv__pollfds_maybe_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uv__pollfds_maybe_resize(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pollfd*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %74

14:                                               ; preds = %1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = mul i64 %22, 2
  br label %25

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24, %19
  %26 = phi i64 [ %23, %19 ], [ 64, %24 ]
  store i64 %26, i64* %4, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load %struct.pollfd*, %struct.pollfd** %28, align 8
  %30 = load i64, i64* %4, align 8
  %31 = mul i64 %30, 24
  %32 = call %struct.pollfd* @uv__realloc(%struct.pollfd* %29, i64 %31)
  store %struct.pollfd* %32, %struct.pollfd** %5, align 8
  %33 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %34 = icmp eq %struct.pollfd* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = call i32 (...) @abort() #3
  unreachable

37:                                               ; preds = %25
  %38 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  store %struct.pollfd* %38, %struct.pollfd** %40, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %3, align 8
  br label %44

44:                                               ; preds = %67, %37
  %45 = load i64, i64* %3, align 8
  %46 = load i64, i64* %4, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %70

48:                                               ; preds = %44
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load %struct.pollfd*, %struct.pollfd** %50, align 8
  %52 = load i64, i64* %3, align 8
  %53 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %51, i64 %52
  %54 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %53, i32 0, i32 0
  store i32 -1, i32* %54, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load %struct.pollfd*, %struct.pollfd** %56, align 8
  %58 = load i64, i64* %3, align 8
  %59 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %57, i64 %58
  %60 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %59, i32 0, i32 2
  store i64 0, i64* %60, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load %struct.pollfd*, %struct.pollfd** %62, align 8
  %64 = load i64, i64* %3, align 8
  %65 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %63, i64 %64
  %66 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %48
  %68 = load i64, i64* %3, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %3, align 8
  br label %44

70:                                               ; preds = %44
  %71 = load i64, i64* %4, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %70, %13
  ret void
}

declare dso_local %struct.pollfd* @uv__realloc(%struct.pollfd*, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
