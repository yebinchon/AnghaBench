; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_benchmark-pump.c_read_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_benchmark-pump.c_read_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nrecv_total = common dso_local global i64 0, align 8
@start_time = common dso_local global i64 0, align 8
@loop = common dso_local global i32 0, align 4
@read_sockets_close_cb = common dso_local global i32 0, align 4
@nrecv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32*)* @read_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_cb(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i64, i64* @nrecv_total, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = load i64, i64* @start_time, align 8
  %11 = icmp eq i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @ASSERT(i32 %12)
  %14 = load i32, i32* @loop, align 4
  %15 = call i32 @uv_update_time(i32 %14)
  %16 = load i32, i32* @loop, align 4
  %17 = call i64 @uv_now(i32 %16)
  store i64 %17, i64* @start_time, align 8
  br label %18

18:                                               ; preds = %9, %3
  %19 = load i64, i64* %5, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @read_sockets_close_cb, align 4
  %24 = call i32 @uv_close(i32* %22, i32 %23)
  br label %36

25:                                               ; preds = %18
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @buf_free(i32* %26)
  %28 = load i64, i64* %5, align 8
  %29 = load i32, i32* @nrecv, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* @nrecv, align 4
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @nrecv_total, align 8
  %35 = add nsw i64 %34, %33
  store i64 %35, i64* @nrecv_total, align 8
  br label %36

36:                                               ; preds = %25, %21
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @uv_update_time(i32) #1

declare dso_local i64 @uv_now(i32) #1

declare dso_local i32 @uv_close(i32*, i32) #1

declare dso_local i32 @buf_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
