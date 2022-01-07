; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-udp-connect.c_sv_recv_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-udp-connect.c_sv_recv_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"EXIT\00", align 1
@sv_recv_cb_called = common dso_local global i32 0, align 4
@server = common dso_local global i32 0, align 4
@close_cb = common dso_local global i32 0, align 4
@client = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_3__*, %struct.sockaddr*, i32)* @sv_recv_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sv_recv_cb(i32* %0, i32 %1, %struct.TYPE_3__* %2, %struct.sockaddr* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %5
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 4
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %19 = icmp ne %struct.sockaddr* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @memcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @ASSERT(i32 %28)
  %30 = load i32, i32* @sv_recv_cb_called, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @sv_recv_cb_called, align 4
  %32 = icmp eq i32 %31, 4
  br i1 %32, label %33, label %38

33:                                               ; preds = %13
  %34 = load i32, i32* @close_cb, align 4
  %35 = call i32 @uv_close(i32* @server, i32 %34)
  %36 = load i32, i32* @close_cb, align 4
  %37 = call i32 @uv_close(i32* @client, i32 %36)
  br label %38

38:                                               ; preds = %33, %13
  br label %39

39:                                               ; preds = %38, %5
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @uv_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
