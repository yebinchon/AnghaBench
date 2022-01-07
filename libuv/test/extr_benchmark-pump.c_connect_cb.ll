; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_benchmark-pump.c_connect_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_benchmark-pump.c_connect_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@write_sockets = common dso_local global i32 0, align 4
@TARGET_CONNECTIONS = common dso_local global i32 0, align 4
@type = common dso_local global i64 0, align 8
@TCP = common dso_local global i64 0, align 8
@tcp_write_handles = common dso_local global i32* null, align 8
@pipe_write_handles = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @connect_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @connect_cb(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load i32, i32* @stderr, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i8* @uv_strerror(i32 %10)
  %12 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 @fflush(i32 %13)
  br label %15

15:                                               ; preds = %8, %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load i32, i32* @write_sockets, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @write_sockets, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @req_free(i32* %22)
  %24 = call i32 (...) @maybe_connect_some()
  %25 = load i32, i32* @write_sockets, align 4
  %26 = load i32, i32* @TARGET_CONNECTIONS, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %55

28:                                               ; preds = %15
  %29 = call i32 (...) @start_stats_collection()
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %51, %28
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @write_sockets, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %30
  %35 = load i64, i64* @type, align 8
  %36 = load i64, i64* @TCP, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32*, i32** @tcp_write_handles, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call i32 @do_write(i32* %42)
  br label %50

44:                                               ; preds = %34
  %45 = load i32*, i32** @pipe_write_handles, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = call i32 @do_write(i32* %48)
  br label %50

50:                                               ; preds = %44, %38
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %30

54:                                               ; preds = %30
  br label %55

55:                                               ; preds = %54, %15
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @uv_strerror(i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @req_free(i32*) #1

declare dso_local i32 @maybe_connect_some(...) #1

declare dso_local i32 @start_stats_collection(...) #1

declare dso_local i32 @do_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
