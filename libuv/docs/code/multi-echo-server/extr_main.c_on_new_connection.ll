; ModuleID = '/home/carl/AnghaBench/libuv/docs/code/multi-echo-server/extr_main.c_on_new_connection.c'
source_filename = "/home/carl/AnghaBench/libuv/docs/code/multi-echo-server/extr_main.c_on_new_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_worker = type { i32 }

@loop = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@dummy_buf = common dso_local global i32 0, align 4
@workers = common dso_local global %struct.child_worker* null, align 8
@round_robin_counter = common dso_local global i64 0, align 8
@child_worker_count = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @on_new_connection(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.child_worker*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %40

11:                                               ; preds = %2
  %12 = call i64 @malloc(i32 4)
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %5, align 8
  %14 = load i32, i32* @loop, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @uv_tcp_init(i32 %14, i32* %15)
  %17 = load i32*, i32** %3, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i64 @uv_accept(i32* %17, i32* %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %11
  %22 = call i64 @malloc(i32 4)
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %6, align 8
  %24 = call i32 @uv_buf_init(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %24, i32* @dummy_buf, align 4
  %25 = load %struct.child_worker*, %struct.child_worker** @workers, align 8
  %26 = load i64, i64* @round_robin_counter, align 8
  %27 = getelementptr inbounds %struct.child_worker, %struct.child_worker* %25, i64 %26
  store %struct.child_worker* %27, %struct.child_worker** %7, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load %struct.child_worker*, %struct.child_worker** %7, align 8
  %30 = getelementptr inbounds %struct.child_worker, %struct.child_worker* %29, i32 0, i32 0
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @uv_write2(i32* %28, i32* %30, i32* @dummy_buf, i32 1, i32* %31, i32* null)
  %33 = load i64, i64* @round_robin_counter, align 8
  %34 = add i64 %33, 1
  %35 = load i64, i64* @child_worker_count, align 8
  %36 = urem i64 %34, %35
  store i64 %36, i64* @round_robin_counter, align 8
  br label %40

37:                                               ; preds = %11
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @uv_close(i32* %38, i32* null)
  br label %40

40:                                               ; preds = %10, %37, %21
  ret void
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @uv_tcp_init(i32, i32*) #1

declare dso_local i64 @uv_accept(i32*, i32*) #1

declare dso_local i32 @uv_buf_init(i8*, i32) #1

declare dso_local i32 @uv_write2(i32*, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @uv_close(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
