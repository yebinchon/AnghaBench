; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_pd.c_pd_next_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_pd.c_pd_next_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@pd_count = common dso_local global i64 0, align 8
@pd_run = common dso_local global i32 0, align 4
@pd_buf = common dso_local global i32* null, align 8
@pd_block = common dso_local global i32 0, align 4
@pd_lock = common dso_local global i32 0, align 4
@pd_req = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pd_next_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pd_next_buf() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i64, i64* @pd_count, align 8
  %4 = add nsw i64 %3, -1
  store i64 %4, i64* @pd_count, align 8
  %5 = load i32, i32* @pd_run, align 4
  %6 = add nsw i32 %5, -1
  store i32 %6, i32* @pd_run, align 4
  %7 = load i32*, i32** @pd_buf, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 512
  store i32* %8, i32** @pd_buf, align 8
  %9 = load i32, i32* @pd_block, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @pd_block, align 4
  %11 = load i32, i32* @pd_run, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %43

14:                                               ; preds = %0
  %15 = load i64, i64* @pd_count, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 0, i32* %1, align 4
  br label %43

18:                                               ; preds = %14
  %19 = load i64, i64* %2, align 8
  %20 = call i32 @spin_lock_irqsave(i32* @pd_lock, i64 %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pd_req, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pd_req, align 8
  %23 = call i32 @blk_rq_cur_bytes(%struct.TYPE_6__* %22)
  %24 = call i32 @blk_update_request(%struct.TYPE_6__* %21, i32 0, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pd_req, align 8
  %28 = call i32 @__blk_mq_end_request(%struct.TYPE_6__* %27, i32 0)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** @pd_req, align 8
  store i64 0, i64* @pd_count, align 8
  store i32* null, i32** @pd_buf, align 8
  br label %36

29:                                               ; preds = %18
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pd_req, align 8
  %31 = call i64 @blk_rq_cur_sectors(%struct.TYPE_6__* %30)
  store i64 %31, i64* @pd_count, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pd_req, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32* @bio_data(i32 %34)
  store i32* %35, i32** @pd_buf, align 8
  br label %36

36:                                               ; preds = %29, %26
  %37 = load i64, i64* %2, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* @pd_lock, i64 %37)
  %39 = load i64, i64* @pd_count, align 8
  %40 = icmp ne i64 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %1, align 4
  br label %43

43:                                               ; preds = %36, %17, %13
  %44 = load i32, i32* %1, align 4
  ret i32 %44
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @blk_update_request(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @blk_rq_cur_bytes(%struct.TYPE_6__*) #1

declare dso_local i32 @__blk_mq_end_request(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @blk_rq_cur_sectors(%struct.TYPE_6__*) #1

declare dso_local i32* @bio_data(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
