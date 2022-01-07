; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c_drbd_should_send_out_of_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c_drbd_should_send_out_of_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.drbd_dev_state = type { i64 }

@C_AHEAD = common dso_local global i64 0, align 8
@C_WF_BITMAP_S = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @drbd_should_send_out_of_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drbd_should_send_out_of_sync(i64 %0) #0 {
  %2 = alloca %union.drbd_dev_state, align 8
  %3 = getelementptr inbounds %union.drbd_dev_state, %union.drbd_dev_state* %2, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = bitcast %union.drbd_dev_state* %2 to i64*
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @C_AHEAD, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = bitcast %union.drbd_dev_state* %2 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @C_WF_BITMAP_S, align 8
  %12 = icmp eq i64 %10, %11
  br label %13

13:                                               ; preds = %8, %1
  %14 = phi i1 [ true, %1 ], [ %12, %8 ]
  %15 = zext i1 %14 to i32
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
