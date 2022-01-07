; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-ipc-send-recv.c_write2_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-ipc-send-recv.c_write2_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@write2_cb_called = common dso_local global i32 0, align 4
@is_child_process = common dso_local global i64 0, align 8
@is_in_process = common dso_local global i64 0, align 8
@ctx2 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @write2_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write2_cb(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @ASSERT(i32 %7)
  %9 = load i32, i32* @write2_cb_called, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @write2_cb_called, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load i64, i64* @is_child_process, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i64, i64* @is_in_process, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15, %12
  %19 = call i32 @uv_close(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ctx2, i32 0, i32 3, i32 0), i32* null)
  %20 = call i32 @uv_close(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ctx2, i32 0, i32 2, i32 0), i32* null)
  %21 = call i32 @uv_close(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ctx2, i32 0, i32 1), i32* null)
  %22 = call i32 @uv_close(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ctx2, i32 0, i32 0), i32* null)
  br label %23

23:                                               ; preds = %18, %15, %2
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @uv_close(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
