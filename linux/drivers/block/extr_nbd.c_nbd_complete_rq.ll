; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_complete_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_complete_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.nbd_cmd = type { i64, i32 }

@.str = private unnamed_addr constant [16 x i8] c"request %p: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*)* @nbd_complete_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nbd_complete_rq(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca %struct.nbd_cmd*, align 8
  store %struct.request* %0, %struct.request** %2, align 8
  %4 = load %struct.request*, %struct.request** %2, align 8
  %5 = call %struct.nbd_cmd* @blk_mq_rq_to_pdu(%struct.request* %4)
  store %struct.nbd_cmd* %5, %struct.nbd_cmd** %3, align 8
  %6 = load %struct.nbd_cmd*, %struct.nbd_cmd** %3, align 8
  %7 = getelementptr inbounds %struct.nbd_cmd, %struct.nbd_cmd* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @nbd_to_dev(i32 %8)
  %10 = load %struct.request*, %struct.request** %2, align 8
  %11 = load %struct.nbd_cmd*, %struct.nbd_cmd** %3, align 8
  %12 = getelementptr inbounds %struct.nbd_cmd, %struct.nbd_cmd* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %17 = call i32 @dev_dbg(i32 %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.request* %10, i8* %16)
  %18 = load %struct.request*, %struct.request** %2, align 8
  %19 = load %struct.nbd_cmd*, %struct.nbd_cmd** %3, align 8
  %20 = getelementptr inbounds %struct.nbd_cmd, %struct.nbd_cmd* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @blk_mq_end_request(%struct.request* %18, i64 %21)
  ret void
}

declare dso_local %struct.nbd_cmd* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @dev_dbg(i32, i8*, %struct.request*, i8*) #1

declare dso_local i32 @nbd_to_dev(i32) #1

declare dso_local i32 @blk_mq_end_request(%struct.request*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
