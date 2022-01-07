; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_sx8.c_carm_pop_q.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_sx8.c_carm_pop_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.carm_host = type { i32, i32, %struct.request_queue** }

@CARM_MAX_WAIT_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.request_queue* (%struct.carm_host*)* @carm_pop_q to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.request_queue* @carm_pop_q(%struct.carm_host* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  %3 = alloca %struct.carm_host*, align 8
  %4 = alloca i32, align 4
  store %struct.carm_host* %0, %struct.carm_host** %3, align 8
  %5 = load %struct.carm_host*, %struct.carm_host** %3, align 8
  %6 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.carm_host*, %struct.carm_host** %3, align 8
  %9 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %7, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.request_queue* null, %struct.request_queue** %2, align 8
  br label %30

13:                                               ; preds = %1
  %14 = load %struct.carm_host*, %struct.carm_host** %3, align 8
  %15 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CARM_MAX_WAIT_Q, align 4
  %18 = urem i32 %16, %17
  store i32 %18, i32* %4, align 4
  %19 = load %struct.carm_host*, %struct.carm_host** %3, align 8
  %20 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load %struct.carm_host*, %struct.carm_host** %3, align 8
  %24 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %23, i32 0, i32 2
  %25 = load %struct.request_queue**, %struct.request_queue*** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.request_queue*, %struct.request_queue** %25, i64 %27
  %29 = load %struct.request_queue*, %struct.request_queue** %28, align 8
  store %struct.request_queue* %29, %struct.request_queue** %2, align 8
  br label %30

30:                                               ; preds = %13, %12
  %31 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  ret %struct.request_queue* %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
