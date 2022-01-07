; ModuleID = '/home/carl/AnghaBench/libuv/docs/code/cgi/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/libuv/docs/code/cgi/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32 }
%struct.sockaddr = type { i32 }

@loop = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@on_new_connection = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Listen error %s\0A\00", align 1
@UV_RUN_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call i32 (...) @uv_default_loop()
  store i32 %5, i32* @loop, align 4
  %6 = load i32, i32* @loop, align 4
  %7 = call i32 @uv_tcp_init(i32 %6, i32* %2)
  %8 = call i32 @uv_ip4_addr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7000, %struct.sockaddr_in* %3)
  %9 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %10 = call i32 @uv_tcp_bind(i32* %2, %struct.sockaddr* %9, i32 0)
  %11 = load i32, i32* @on_new_connection, align 4
  %12 = call i32 @uv_listen(i32* %2, i32 128, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %0
  %16 = load i32, i32* @stderr, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i8* @uv_err_name(i32 %17)
  %19 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  store i32 1, i32* %1, align 4
  br label %24

20:                                               ; preds = %0
  %21 = load i32, i32* @loop, align 4
  %22 = load i32, i32* @UV_RUN_DEFAULT, align 4
  %23 = call i32 @uv_run(i32 %21, i32 %22)
  store i32 %23, i32* %1, align 4
  br label %24

24:                                               ; preds = %20, %15
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i32 @uv_default_loop(...) #1

declare dso_local i32 @uv_tcp_init(i32, i32*) #1

declare dso_local i32 @uv_ip4_addr(i8*, i32, %struct.sockaddr_in*) #1

declare dso_local i32 @uv_tcp_bind(i32*, %struct.sockaddr*, i32) #1

declare dso_local i32 @uv_listen(i32*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @uv_err_name(i32) #1

declare dso_local i32 @uv_run(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
