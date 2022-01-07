; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_pcd.c_pcd_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_pcd.c_pcd_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.pcd_unit* }
%struct.pcd_unit = type { i32 }

@pcd_busy = common dso_local global i32 0, align 4
@pcd_req = common dso_local global %struct.TYPE_6__* null, align 8
@pcd_current = common dso_local global %struct.pcd_unit* null, align 8
@pcd_bufblk = common dso_local global i32 0, align 4
@pcd_sector = common dso_local global i32 0, align 4
@pcd_count = common dso_local global i32 0, align 4
@pcd_buf = common dso_local global i32 0, align 4
@do_pcd_read = common dso_local global i32 0, align 4
@nice = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pcd_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcd_request() #0 {
  %1 = alloca %struct.pcd_unit*, align 8
  %2 = load i32, i32* @pcd_busy, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %35

5:                                                ; preds = %0
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pcd_req, align 8
  %7 = icmp ne %struct.TYPE_6__* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = call i32 (...) @set_next_request()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  br label %35

12:                                               ; preds = %8, %5
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pcd_req, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.pcd_unit*, %struct.pcd_unit** %16, align 8
  store %struct.pcd_unit* %17, %struct.pcd_unit** %1, align 8
  %18 = load %struct.pcd_unit*, %struct.pcd_unit** %1, align 8
  %19 = load %struct.pcd_unit*, %struct.pcd_unit** @pcd_current, align 8
  %20 = icmp ne %struct.pcd_unit* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  store i32 -1, i32* @pcd_bufblk, align 4
  br label %22

22:                                               ; preds = %21, %12
  %23 = load %struct.pcd_unit*, %struct.pcd_unit** %1, align 8
  store %struct.pcd_unit* %23, %struct.pcd_unit** @pcd_current, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pcd_req, align 8
  %25 = call i32 @blk_rq_pos(%struct.TYPE_6__* %24)
  store i32 %25, i32* @pcd_sector, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pcd_req, align 8
  %27 = call i32 @blk_rq_cur_sectors(%struct.TYPE_6__* %26)
  store i32 %27, i32* @pcd_count, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pcd_req, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @bio_data(i32 %30)
  store i32 %31, i32* @pcd_buf, align 4
  store i32 1, i32* @pcd_busy, align 4
  %32 = load i32, i32* @do_pcd_read, align 4
  %33 = load i32, i32* @nice, align 4
  %34 = call i32 @ps_set_intr(i32 %32, i32* null, i32 0, i32 %33)
  br label %35

35:                                               ; preds = %22, %11, %4
  ret void
}

declare dso_local i32 @set_next_request(...) #1

declare dso_local i32 @blk_rq_pos(%struct.TYPE_6__*) #1

declare dso_local i32 @blk_rq_cur_sectors(%struct.TYPE_6__*) #1

declare dso_local i32 @bio_data(i32) #1

declare dso_local i32 @ps_set_intr(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
