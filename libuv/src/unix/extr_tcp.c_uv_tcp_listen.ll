; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_tcp.c_uv_tcp_listen.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_tcp.c_uv_tcp_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@uv_tcp_listen.single_accept = internal global i32 -1, align 4
@.str = private unnamed_addr constant [21 x i8] c"UV_TCP_SINGLE_ACCEPT\00", align 1
@UV_HANDLE_TCP_SINGLE_ACCEPT = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@UV_HANDLE_BOUND = common dso_local global i64 0, align 8
@uv__server_io = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_tcp_listen(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %4, align 4
  br label %82

19:                                               ; preds = %3
  %20 = load i32, i32* @uv_tcp_listen.single_accept, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = call i8* @getenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i8*, i8** %10, align 8
  %28 = call i64 @atoi(i8* %27)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i1 [ false, %22 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* @uv_tcp_listen.single_accept, align 4
  br label %33

33:                                               ; preds = %30, %19
  %34 = load i32, i32* @uv_tcp_listen.single_accept, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i64, i64* @UV_HANDLE_TCP_SINGLE_ACCEPT, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = or i64 %40, %37
  store i64 %41, i64* %39, align 8
  br label %42

42:                                               ; preds = %36, %33
  store i64 0, i64* %8, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = load i32, i32* @AF_INET, align 4
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @maybe_new_socket(%struct.TYPE_5__* %43, i32 %44, i64 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %4, align 4
  br label %82

51:                                               ; preds = %42
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i64 @listen(i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load i32, i32* @errno, align 4
  %61 = call i32 @UV__ERR(i32 %60)
  store i32 %61, i32* %4, align 4
  br label %82

62:                                               ; preds = %51
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  %66 = load i64, i64* @UV_HANDLE_BOUND, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = or i64 %69, %66
  store i64 %70, i64* %68, align 8
  %71 = load i32, i32* @uv__server_io, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = load i32, i32* @POLLIN, align 4
  %81 = call i32 @uv__io_start(i32 %77, %struct.TYPE_6__* %79, i32 %80)
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %62, %59, %49, %15
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i32 @maybe_new_socket(%struct.TYPE_5__*, i32, i64) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i32 @UV__ERR(i32) #1

declare dso_local i32 @uv__io_start(i32, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
