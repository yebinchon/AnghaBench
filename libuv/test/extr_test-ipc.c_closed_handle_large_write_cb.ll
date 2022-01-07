; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-ipc.c_closed_handle_large_write_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-ipc.c_closed_handle_large_write_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LARGE_SIZE = common dso_local global i32 0, align 4
@closed_handle_data_read = common dso_local global i32 0, align 4
@write_reqs_completed = common dso_local global i64 0, align 8
@write_reqs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @closed_handle_large_write_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @closed_handle_large_write_cb(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @ASSERT(i32 %7)
  %9 = load i32, i32* @LARGE_SIZE, align 4
  store i32 %9, i32* @closed_handle_data_read, align 4
  %10 = call i32 @ASSERT(i32 %9)
  %11 = load i64, i64* @write_reqs_completed, align 8
  %12 = add nsw i64 %11, 1
  store i64 %12, i64* @write_reqs_completed, align 8
  %13 = load i32, i32* @write_reqs, align 4
  %14 = call i64 @ARRAY_SIZE(i32 %13)
  %15 = icmp eq i64 %12, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  store i64 0, i64* @write_reqs_completed, align 8
  %17 = call i64 (...) @write_until_data_queued()
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 (...) @send_handle_and_close()
  br label %21

21:                                               ; preds = %19, %16
  br label %22

22:                                               ; preds = %21, %2
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i64 @write_until_data_queued(...) #1

declare dso_local i32 @send_handle_and_close(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
