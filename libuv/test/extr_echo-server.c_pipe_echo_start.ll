; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_echo-server.c_pipe_echo_start.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_echo-server.c_pipe_echo_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pipeServer = common dso_local global i32 0, align 4
@server = common dso_local global i32* null, align 8
@PIPE = common dso_local global i32 0, align 4
@serverType = common dso_local global i32 0, align 4
@loop = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"uv_pipe_init: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"uv_pipe_bind: %s\0A\00", align 1
@SOMAXCONN = common dso_local global i32 0, align 4
@on_connection = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"uv_pipe_listen: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @pipe_echo_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe_echo_start(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @uv_fs_unlink(i32* null, i32* %5, i8* %6, i32* null)
  %8 = call i32 @uv_fs_req_cleanup(i32* %5)
  store i32* @pipeServer, i32** @server, align 8
  %9 = load i32, i32* @PIPE, align 4
  store i32 %9, i32* @serverType, align 4
  %10 = load i32, i32* @loop, align 4
  %11 = call i32 @uv_pipe_init(i32 %10, i32* @pipeServer, i32 0)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i32, i32* @stderr, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i8* @uv_strerror(i32 %16)
  %18 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %17)
  store i32 1, i32* %2, align 4
  br label %41

19:                                               ; preds = %1
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @uv_pipe_bind(i32* @pipeServer, i8* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i32, i32* @stderr, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i8* @uv_strerror(i32 %26)
  %28 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  store i32 1, i32* %2, align 4
  br label %41

29:                                               ; preds = %19
  %30 = load i32, i32* @SOMAXCONN, align 4
  %31 = load i32, i32* @on_connection, align 4
  %32 = call i32 @uv_listen(i32* @pipeServer, i32 %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load i32, i32* @stderr, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i8* @uv_strerror(i32 %37)
  %39 = call i32 @fprintf(i32 %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  store i32 1, i32* %2, align 4
  br label %41

40:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %35, %24, %14
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @uv_fs_unlink(i32*, i32*, i8*, i32*) #1

declare dso_local i32 @uv_fs_req_cleanup(i32*) #1

declare dso_local i32 @uv_pipe_init(i32, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @uv_strerror(i32) #1

declare dso_local i32 @uv_pipe_bind(i32*, i8*) #1

declare dso_local i32 @uv_listen(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
