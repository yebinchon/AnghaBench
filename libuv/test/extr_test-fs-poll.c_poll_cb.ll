; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-fs-poll.c_poll_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-fs-poll.c_poll_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@poll_handle = common dso_local global i32 0, align 4
@poll_cb_called = common dso_local global i32 0, align 4
@UV_ENOENT = common dso_local global i32 0, align 4
@FIXTURE = common dso_local global i32 0, align 4
@timer_handle = common dso_local global i32 0, align 4
@timer_cb = common dso_local global i32 0, align 4
@close_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32*)* @poll_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poll_cb(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = call i32 @memset(i32* %9, i32 0, i32 4)
  %11 = load i32*, i32** %5, align 8
  %12 = icmp eq i32* %11, @poll_handle
  %13 = zext i1 %12 to i32
  %14 = call i32 @ASSERT(i32 %13)
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @uv_is_active(i32* %15)
  %17 = icmp eq i32 1, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load i32*, i32** %8, align 8
  %25 = icmp ne i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load i32, i32* @poll_cb_called, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @poll_cb_called, align 4
  switch i32 %28, label %124 [
    i32 0, label %30
    i32 1, label %48
    i32 2, label %68
    i32 3, label %88
    i32 4, label %105
  ]

30:                                               ; preds = %4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @UV_ENOENT, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @ASSERT(i32 %34)
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @memcmp(i32* %36, i32* %9, i32 4)
  %38 = icmp eq i32 0, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @ASSERT(i32 %39)
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @memcmp(i32* %41, i32* %9, i32 4)
  %43 = icmp eq i32 0, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @ASSERT(i32 %44)
  %46 = load i32, i32* @FIXTURE, align 4
  %47 = call i32 @touch_file(i32 %46)
  br label %126

48:                                               ; preds = %4
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @ASSERT(i32 %51)
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @memcmp(i32* %53, i32* %9, i32 4)
  %55 = icmp eq i32 0, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @ASSERT(i32 %56)
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @memcmp(i32* %58, i32* %9, i32 4)
  %60 = icmp ne i32 0, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @ASSERT(i32 %61)
  %63 = load i32, i32* @timer_cb, align 4
  %64 = call i32 @uv_timer_start(i32* @timer_handle, i32 %63, i32 20, i32 0)
  %65 = icmp eq i32 0, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @ASSERT(i32 %66)
  br label %126

68:                                               ; preds = %4
  %69 = load i32, i32* %6, align 4
  %70 = icmp eq i32 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @ASSERT(i32 %71)
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @memcmp(i32* %73, i32* %9, i32 4)
  %75 = icmp ne i32 0, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @ASSERT(i32 %76)
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @memcmp(i32* %78, i32* %9, i32 4)
  %80 = icmp ne i32 0, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @ASSERT(i32 %81)
  %83 = load i32, i32* @timer_cb, align 4
  %84 = call i32 @uv_timer_start(i32* @timer_handle, i32 %83, i32 200, i32 0)
  %85 = icmp eq i32 0, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @ASSERT(i32 %86)
  br label %126

88:                                               ; preds = %4
  %89 = load i32, i32* %6, align 4
  %90 = icmp eq i32 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 @ASSERT(i32 %91)
  %93 = load i32*, i32** %7, align 8
  %94 = call i32 @memcmp(i32* %93, i32* %9, i32 4)
  %95 = icmp ne i32 0, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @ASSERT(i32 %96)
  %98 = load i32*, i32** %8, align 8
  %99 = call i32 @memcmp(i32* %98, i32* %9, i32 4)
  %100 = icmp ne i32 0, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @ASSERT(i32 %101)
  %103 = load i32, i32* @FIXTURE, align 4
  %104 = call i32 @remove(i32 %103)
  br label %126

105:                                              ; preds = %4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @UV_ENOENT, align 4
  %108 = icmp eq i32 %106, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 @ASSERT(i32 %109)
  %111 = load i32*, i32** %7, align 8
  %112 = call i32 @memcmp(i32* %111, i32* %9, i32 4)
  %113 = icmp ne i32 0, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 @ASSERT(i32 %114)
  %116 = load i32*, i32** %8, align 8
  %117 = call i32 @memcmp(i32* %116, i32* %9, i32 4)
  %118 = icmp eq i32 0, %117
  %119 = zext i1 %118 to i32
  %120 = call i32 @ASSERT(i32 %119)
  %121 = load i32*, i32** %5, align 8
  %122 = load i32, i32* @close_cb, align 4
  %123 = call i32 @uv_close(i32* %121, i32 %122)
  br label %126

124:                                              ; preds = %4
  %125 = call i32 @ASSERT(i32 0)
  br label %126

126:                                              ; preds = %124, %105, %88, %68, %48, %30
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @uv_is_active(i32*) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @touch_file(i32) #1

declare dso_local i32 @uv_timer_start(i32*, i32, i32, i32) #1

declare dso_local i32 @remove(i32) #1

declare dso_local i32 @uv_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
