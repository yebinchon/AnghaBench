; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-shutdown-eof.c_tcp_close_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-shutdown-eof.c_tcp_close_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tcp = common dso_local global i32 0, align 4
@called_connect_cb = common dso_local global i32 0, align 4
@got_q = common dso_local global i32 0, align 4
@got_eof = common dso_local global i32 0, align 4
@called_timer_cb = common dso_local global i32 0, align 4
@called_tcp_close_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @tcp_close_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_close_cb(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = icmp eq i32* %3, @tcp
  %5 = zext i1 %4 to i32
  %6 = call i32 @ASSERT(i32 %5)
  %7 = load i32, i32* @called_connect_cb, align 4
  %8 = icmp eq i32 %7, 1
  %9 = zext i1 %8 to i32
  %10 = call i32 @ASSERT(i32 %9)
  %11 = load i32, i32* @got_q, align 4
  %12 = call i32 @ASSERT(i32 %11)
  %13 = load i32, i32* @got_eof, align 4
  %14 = call i32 @ASSERT(i32 %13)
  %15 = load i32, i32* @called_timer_cb, align 4
  %16 = icmp eq i32 %15, 1
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load i32, i32* @called_tcp_close_cb, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @called_tcp_close_cb, align 4
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
