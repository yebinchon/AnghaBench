; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-delayed-accept.c_do_accept.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-delayed-accept.c_do_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@do_accept_called = common dso_local global i32 0, align 4
@close_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @do_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_accept(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = call i64 @malloc(i32 4)
  %7 = inttoptr i64 %6 to i32*
  store i32* %7, i32** %4, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @ASSERT(i32 %10)
  %12 = load i32*, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = call i32 (...) @uv_default_loop()
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @uv_tcp_init(i32 %16, i32* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %3, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @uv_accept(i32* %27, i32* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @ASSERT(i32 %32)
  %34 = load i32, i32* @do_accept_called, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* @do_accept_called, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* @close_cb, align 4
  %38 = call i32 @uv_close(i32* %36, i32 %37)
  %39 = load i32, i32* @do_accept_called, align 4
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %45

41:                                               ; preds = %1
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* @close_cb, align 4
  %44 = call i32 @uv_close(i32* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %47 = bitcast %struct.TYPE_3__* %46 to i32*
  %48 = load i32, i32* @close_cb, align 4
  %49 = call i32 @uv_close(i32* %47, i32 %48)
  ret void
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @uv_tcp_init(i32, i32*) #1

declare dso_local i32 @uv_default_loop(...) #1

declare dso_local i32 @uv_accept(i32*, i32*) #1

declare dso_local i32 @uv_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
