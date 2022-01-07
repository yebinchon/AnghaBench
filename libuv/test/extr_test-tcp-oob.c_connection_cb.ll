; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-tcp-oob.c_connection_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-tcp-oob.c_connection_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@peer_handle = common dso_local global i32 0, align 4
@alloc_cb = common dso_local global i32 0, align 4
@read_cb = common dso_local global i32 0, align 4
@client_handle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@MSG_OOB = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @connection_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @connection_cb(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 0, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @ASSERT(i32 %9)
  %11 = load i32*, i32** %3, align 8
  %12 = call i64 @uv_accept(i32* %11, i32* @peer_handle)
  %13 = icmp eq i64 0, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load i32, i32* @alloc_cb, align 4
  %17 = load i32, i32* @read_cb, align 4
  %18 = call i64 @uv_read_start(i32* @peer_handle, i32 %16, i32 %17)
  %19 = icmp eq i64 0, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = call i64 @uv_fileno(i32* @client_handle, i32* %6)
  %23 = icmp eq i64 0, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = call i64 @uv_stream_set_blocking(i32* @client_handle, i32 1)
  %27 = icmp eq i64 0, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @ASSERT(i32 %28)
  br label %30

30:                                               ; preds = %41, %2
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @MSG_OOB, align 4
  %33 = call i32 @send(i32 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5, i32 %32)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i64, i64* @errno, align 8
  %39 = load i64, i64* @EINTR, align 8
  %40 = icmp eq i64 %38, %39
  br label %41

41:                                               ; preds = %37, %34
  %42 = phi i1 [ false, %34 ], [ %40, %37 ]
  br i1 %42, label %30, label %43

43:                                               ; preds = %41
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 5, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @ASSERT(i32 %46)
  br label %48

48:                                               ; preds = %59, %43
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @MSG_OOB, align 4
  %51 = call i32 @send(i32 %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5, i32 %50)
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i64, i64* @errno, align 8
  %57 = load i64, i64* @EINTR, align 8
  %58 = icmp eq i64 %56, %57
  br label %59

59:                                               ; preds = %55, %52
  %60 = phi i1 [ false, %52 ], [ %58, %55 ]
  br i1 %60, label %48, label %61

61:                                               ; preds = %59
  %62 = load i32, i32* %5, align 4
  %63 = icmp eq i32 5, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @ASSERT(i32 %64)
  %66 = call i64 @uv_stream_set_blocking(i32* @client_handle, i32 0)
  %67 = icmp eq i64 0, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @ASSERT(i32 %68)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @uv_accept(i32*, i32*) #1

declare dso_local i64 @uv_read_start(i32*, i32, i32) #1

declare dso_local i64 @uv_fileno(i32*, i32*) #1

declare dso_local i64 @uv_stream_set_blocking(i32*, i32) #1

declare dso_local i32 @send(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
