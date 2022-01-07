; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-getsockname.c_on_connection.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-getsockname.c_on_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.TYPE_6__ = type { i32* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Connect error %s\0A\00", align 1
@loop = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@server_port = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"accepted socket\00", align 1
@getsocknamecount = common dso_local global i32 0, align 4
@connect_port = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"accepted socket peer\00", align 1
@getpeernamecount = common dso_local global i32 0, align 4
@alloc = common dso_local global i32 0, align 4
@after_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @on_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_connection(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr, align 4
  %6 = alloca %struct.sockaddr, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i32, i32* @stderr, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i8* @uv_err_name(i32 %14)
  %16 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %15)
  br label %17

17:                                               ; preds = %12, %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = call %struct.TYPE_6__* @malloc(i32 8)
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %8, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %24 = icmp ne %struct.TYPE_6__* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load i32, i32* @loop, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %29 = call i32 @uv_tcp_init(i32 %27, %struct.TYPE_6__* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @ASSERT(i32 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32* %34, i32** %36, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %39 = bitcast %struct.TYPE_6__* %38 to i32*
  %40 = call i32 @uv_accept(i32* %37, i32* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @ASSERT(i32 %43)
  store i32 4, i32* %7, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %46 = call i32 @uv_tcp_getsockname(%struct.TYPE_6__* %45, %struct.sockaddr* %5, i32* %7)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @ASSERT(i32 %49)
  %51 = load i32, i32* @server_port, align 4
  %52 = call i32 @check_sockname(%struct.sockaddr* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @getsocknamecount, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @getsocknamecount, align 4
  store i32 4, i32* %7, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %56 = call i32 @uv_tcp_getpeername(%struct.TYPE_6__* %55, %struct.sockaddr* %6, i32* %7)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @ASSERT(i32 %59)
  %61 = load i32, i32* @connect_port, align 4
  %62 = call i32 @check_sockname(%struct.sockaddr* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32, i32* @getpeernamecount, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @getpeernamecount, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %66 = bitcast %struct.TYPE_6__* %65 to i32*
  %67 = load i32, i32* @alloc, align 4
  %68 = load i32, i32* @after_read, align 4
  %69 = call i32 @uv_read_start(i32* %66, i32 %67, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp eq i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = call i32 @ASSERT(i32 %72)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @uv_err_name(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_6__* @malloc(i32) #1

declare dso_local i32 @uv_tcp_init(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @uv_accept(i32*, i32*) #1

declare dso_local i32 @uv_tcp_getsockname(%struct.TYPE_6__*, %struct.sockaddr*, i32*) #1

declare dso_local i32 @check_sockname(%struct.sockaddr*, i8*, i32, i8*) #1

declare dso_local i32 @uv_tcp_getpeername(%struct.TYPE_6__*, %struct.sockaddr*, i32*) #1

declare dso_local i32 @uv_read_start(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
