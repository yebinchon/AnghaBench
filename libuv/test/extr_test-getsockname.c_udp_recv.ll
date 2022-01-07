; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-getsockname.c_udp_recv.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-getsockname.c_udp_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.sockaddr = type { i32 }

@udp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"udp receiving socket\00", align 1
@getsocknamecount = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, %struct.TYPE_3__*, %struct.sockaddr*, i32)* @udp_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udp_recv(i32* %0, i64 %1, %struct.TYPE_3__* %2, %struct.sockaddr* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i64, i64* %7, align 8
  %15 = icmp sge i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @free(i32 %20)
  %22 = load i64, i64* %7, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  br label %38

25:                                               ; preds = %5
  %26 = call i32 @memset(%struct.sockaddr* %11, i32 -1, i32 4)
  store i32 4, i32* %12, align 4
  %27 = call i32 @uv_udp_getsockname(i32* @udp, %struct.sockaddr* %11, i32* %12)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = call i32 @check_sockname(%struct.sockaddr* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @getsocknamecount, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @getsocknamecount, align 4
  %35 = call i32 @uv_close(i32* @udp, i32* null)
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @uv_close(i32* %36, i32* null)
  br label %38

38:                                               ; preds = %25, %24
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @memset(%struct.sockaddr*, i32, i32) #1

declare dso_local i32 @uv_udp_getsockname(i32*, %struct.sockaddr*, i32*) #1

declare dso_local i32 @check_sockname(%struct.sockaddr*, i8*, i32, i8*) #1

declare dso_local i32 @uv_close(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
