; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-poll-oob.c_connection_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-poll-oob.c_connection_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@peer_handle = common dso_local global i32 0, align 4
@server_fd = common dso_local global i32 0, align 4
@poll_req = common dso_local global i32* null, align 8
@client_fd = common dso_local global i32 0, align 4
@UV_PRIORITIZED = common dso_local global i32 0, align 4
@UV_READABLE = common dso_local global i32 0, align 4
@UV_WRITABLE = common dso_local global i32 0, align 4
@poll_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@MSG_OOB = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@idle = common dso_local global i32 0, align 4
@idle_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @connection_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @connection_cb(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 0, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @ASSERT(i32 %8)
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @uv_accept(i32* %10, i32* @peer_handle)
  %12 = icmp eq i64 0, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @ASSERT(i32 %13)
  %15 = call i64 @uv_fileno(i32* @peer_handle, i32* @server_fd)
  %16 = icmp eq i64 0, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = call i32 (...) @uv_default_loop()
  %20 = load i32*, i32** @poll_req, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* @client_fd, align 4
  %23 = call i64 @uv_poll_init_socket(i32 %19, i32* %21, i32 %22)
  %24 = icmp eq i64 0, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  %27 = call i32 (...) @uv_default_loop()
  %28 = load i32*, i32** @poll_req, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* @server_fd, align 4
  %31 = call i64 @uv_poll_init_socket(i32 %27, i32* %29, i32 %30)
  %32 = icmp eq i64 0, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  %35 = load i32*, i32** @poll_req, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* @UV_PRIORITIZED, align 4
  %38 = load i32, i32* @UV_READABLE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @UV_WRITABLE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @poll_cb, align 4
  %43 = call i64 @uv_poll_start(i32* %36, i32 %41, i32 %42)
  %44 = icmp eq i64 0, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @ASSERT(i32 %45)
  %47 = load i32*, i32** @poll_req, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* @UV_READABLE, align 4
  %50 = load i32, i32* @poll_cb, align 4
  %51 = call i64 @uv_poll_start(i32* %48, i32 %49, i32 %50)
  %52 = icmp eq i64 0, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @ASSERT(i32 %53)
  br label %55

55:                                               ; preds = %66, %2
  %56 = load i32, i32* @server_fd, align 4
  %57 = load i32, i32* @MSG_OOB, align 4
  %58 = call i32 @send(i32 %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5, i32 %57)
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i64, i64* @errno, align 8
  %64 = load i64, i64* @EINTR, align 8
  %65 = icmp eq i64 %63, %64
  br label %66

66:                                               ; preds = %62, %59
  %67 = phi i1 [ false, %59 ], [ %65, %62 ]
  br i1 %67, label %55, label %68

68:                                               ; preds = %66
  %69 = load i32, i32* %5, align 4
  %70 = icmp eq i32 5, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @ASSERT(i32 %71)
  br label %73

73:                                               ; preds = %83, %68
  %74 = load i32, i32* @server_fd, align 4
  %75 = call i32 @send(i32 %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5, i32 0)
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %5, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i64, i64* @errno, align 8
  %81 = load i64, i64* @EINTR, align 8
  %82 = icmp eq i64 %80, %81
  br label %83

83:                                               ; preds = %79, %76
  %84 = phi i1 [ false, %76 ], [ %82, %79 ]
  br i1 %84, label %73, label %85

85:                                               ; preds = %83
  %86 = load i32, i32* %5, align 4
  %87 = icmp eq i32 5, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @ASSERT(i32 %88)
  %90 = load i32, i32* @idle_cb, align 4
  %91 = call i64 @uv_idle_start(i32* @idle, i32 %90)
  %92 = icmp eq i64 0, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @ASSERT(i32 %93)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @uv_accept(i32*, i32*) #1

declare dso_local i64 @uv_fileno(i32*, i32*) #1

declare dso_local i64 @uv_poll_init_socket(i32, i32*, i32) #1

declare dso_local i32 @uv_default_loop(...) #1

declare dso_local i64 @uv_poll_start(i32*, i32, i32) #1

declare dso_local i32 @send(i32, i8*, i32, i32) #1

declare dso_local i64 @uv_idle_start(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
