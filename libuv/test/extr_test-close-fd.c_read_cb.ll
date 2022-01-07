; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-close-fd.c_read_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-close-fd.c_read_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@read_cb_called = common dso_local global i32 0, align 4
@UV_EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"read_cb_called > 2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*)* @read_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_cb(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* @read_cb_called, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @read_cb_called, align 4
  switch i32 %8, label %24 [
    i32 1, label %9
    i32 2, label %16
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 1
  %12 = zext i1 %11 to i32
  %13 = call i32 @ASSERT(i32 %12)
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @uv_read_stop(i32* %14)
  br label %26

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @UV_EOF, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @uv_close(i32* %22, i32* null)
  br label %26

24:                                               ; preds = %3
  %25 = call i32 @ASSERT(i32 0)
  br label %26

26:                                               ; preds = %24, %16, %9
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @uv_read_stop(i32*) #1

declare dso_local i32 @uv_close(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
