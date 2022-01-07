; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-aio.c_WaitAioArrAdd.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-aio.c_WaitAioArrAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aio_connection = type { i32 }

@WaitAioArrPos = common dso_local global i32 0, align 4
@WaitAioArr = common dso_local global %struct.aio_connection** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WaitAioArrAdd(%struct.aio_connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aio_connection*, align 8
  store %struct.aio_connection* %0, %struct.aio_connection** %3, align 8
  %4 = load i32, i32* @WaitAioArrPos, align 4
  %5 = icmp slt i32 %4, 99
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load %struct.aio_connection*, %struct.aio_connection** %3, align 8
  %8 = load %struct.aio_connection**, %struct.aio_connection*** @WaitAioArr, align 8
  %9 = load i32, i32* @WaitAioArrPos, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @WaitAioArrPos, align 4
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds %struct.aio_connection*, %struct.aio_connection** %8, i64 %11
  store %struct.aio_connection* %7, %struct.aio_connection** %12, align 8
  store i32 1, i32* %2, align 4
  br label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %13, %6
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
