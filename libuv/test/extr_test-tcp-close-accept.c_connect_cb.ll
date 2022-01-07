; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-tcp-close-accept.c_connect_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-tcp-close-accept.c_connect_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tcp_check_req = common dso_local global i32 0, align 4
@tcp_incoming = common dso_local global i32* null, align 8
@pending_incoming = common dso_local global i64 0, align 8
@close_cb = common dso_local global i32 0, align 4
@tcp_check = common dso_local global i32 0, align 4
@connect_reqs = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"x\00", align 1
@tcp_outgoing = common dso_local global i32* null, align 8
@write_reqs = common dso_local global i32* null, align 8
@write_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @connect_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @connect_cb(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = icmp eq i32* %8, @tcp_check_req
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @ASSERT(i32 %13)
  %15 = load i32*, i32** @tcp_incoming, align 8
  %16 = load i64, i64* @pending_incoming, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* @close_cb, align 4
  %19 = call i32 @uv_close(i32* %17, i32 %18)
  %20 = load i32, i32* @close_cb, align 4
  %21 = call i32 @uv_close(i32* @tcp_check, i32 %20)
  br label %63

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load i32*, i32** @connect_reqs, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = icmp ule i32* %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load i32*, i32** %3, align 8
  %33 = load i32*, i32** @connect_reqs, align 8
  %34 = load i32*, i32** @connect_reqs, align 8
  %35 = call i32 @ARRAY_SIZE(i32* %34)
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = icmp ule i32* %32, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @ASSERT(i32 %39)
  %41 = load i32*, i32** %3, align 8
  %42 = load i32*, i32** @connect_reqs, align 8
  %43 = ptrtoint i32* %41 to i64
  %44 = ptrtoint i32* %42 to i64
  %45 = sub i64 %43, %44
  %46 = sdiv exact i64 %45, 4
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %5, align 4
  %48 = call i32 @uv_buf_init(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %48, i32* %6, align 4
  %49 = load i32*, i32** @tcp_outgoing, align 8
  %50 = load i32, i32* %5, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32* %52, i32** %7, align 8
  %53 = load i32*, i32** @write_reqs, align 8
  %54 = load i32, i32* %5, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* @write_cb, align 4
  %59 = call i64 @uv_write(i32* %56, i32* %57, i32* %6, i32 1, i32 %58)
  %60 = icmp eq i64 0, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @ASSERT(i32 %61)
  br label %63

63:                                               ; preds = %22, %10
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @uv_close(i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @uv_buf_init(i8*, i32) #1

declare dso_local i64 @uv_write(i32*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
