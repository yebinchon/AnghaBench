; ModuleID = '/home/carl/AnghaBench/libuv/docs/code/pipe-echo-server/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/libuv/docs/code/pipe-echo-server/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@loop = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@remove_sock = common dso_local global i32 0, align 4
@PIPENAME = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Bind error %s\0A\00", align 1
@on_new_connection = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Listen error %s\0A\00", align 1
@UV_RUN_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = call i32 (...) @uv_default_loop()
  store i32 %4, i32* @loop, align 4
  %5 = load i32, i32* @loop, align 4
  %6 = call i32 @uv_pipe_init(i32 %5, i32* %2, i32 0)
  %7 = load i32, i32* @SIGINT, align 4
  %8 = load i32, i32* @remove_sock, align 4
  %9 = call i32 @signal(i32 %7, i32 %8)
  %10 = load i32, i32* @PIPENAME, align 4
  %11 = call i32 @uv_pipe_bind(i32* %2, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %0
  %14 = load i32, i32* @stderr, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i8* @uv_err_name(i32 %15)
  %17 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %16)
  store i32 1, i32* %1, align 4
  br label %31

18:                                               ; preds = %0
  %19 = load i32, i32* @on_new_connection, align 4
  %20 = call i32 @uv_listen(i32* %2, i32 128, i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32, i32* @stderr, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i8* @uv_err_name(i32 %24)
  %26 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  store i32 2, i32* %1, align 4
  br label %31

27:                                               ; preds = %18
  %28 = load i32, i32* @loop, align 4
  %29 = load i32, i32* @UV_RUN_DEFAULT, align 4
  %30 = call i32 @uv_run(i32 %28, i32 %29)
  store i32 %30, i32* %1, align 4
  br label %31

31:                                               ; preds = %27, %22, %13
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

declare dso_local i32 @uv_default_loop(...) #1

declare dso_local i32 @uv_pipe_init(i32, i32*, i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @uv_pipe_bind(i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @uv_err_name(i32) #1

declare dso_local i32 @uv_listen(i32*, i32, i32) #1

declare dso_local i32 @uv_run(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
