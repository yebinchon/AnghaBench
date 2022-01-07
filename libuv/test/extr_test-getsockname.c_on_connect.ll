; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-getsockname.c_on_connect.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-getsockname.c_on_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"connected socket\00", align 1
@getsocknamecount = common dso_local global i32 0, align 4
@server_port = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"connected socket peer\00", align 1
@getpeernamecount = common dso_local global i32 0, align 4
@tcp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @on_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_connect(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr, align 4
  %6 = alloca %struct.sockaddr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @ASSERT(i32 %11)
  store i32 4, i32* %8, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i32*
  %17 = call i32 @uv_tcp_getsockname(i32* %16, %struct.sockaddr* %5, i32* %8)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = call i32 @check_sockname(%struct.sockaddr* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @getsocknamecount, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @getsocknamecount, align 4
  store i32 4, i32* %8, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i32*
  %29 = call i32 @uv_tcp_getpeername(i32* %28, %struct.sockaddr* %6, i32* %8)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @ASSERT(i32 %32)
  %34 = load i32, i32* @server_port, align 4
  %35 = call i32 @check_sockname(%struct.sockaddr* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @getpeernamecount, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @getpeernamecount, align 4
  %38 = call i32 @uv_close(i32* @tcp, i32* null)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @uv_tcp_getsockname(i32*, %struct.sockaddr*, i32*) #1

declare dso_local i32 @check_sockname(%struct.sockaddr*, i8*, i32, i8*) #1

declare dso_local i32 @uv_tcp_getpeername(i32*, %struct.sockaddr*, i32*) #1

declare dso_local i32 @uv_close(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
