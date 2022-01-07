; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_elv_switch_none.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_elv_switch_none.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.request_queue = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.blk_mq_qe_pair = type { %struct.TYPE_3__*, i32, %struct.request_queue* }

@GFP_NOIO = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head*, %struct.request_queue*)* @blk_mq_elv_switch_none to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blk_mq_elv_switch_none(%struct.list_head* %0, %struct.request_queue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.blk_mq_qe_pair*, align 8
  store %struct.list_head* %0, %struct.list_head** %4, align 8
  store %struct.request_queue* %1, %struct.request_queue** %5, align 8
  %7 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %8 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %54

12:                                               ; preds = %2
  %13 = load i32, i32* @GFP_NOIO, align 4
  %14 = load i32, i32* @__GFP_NOWARN, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @__GFP_NORETRY, align 4
  %17 = or i32 %15, %16
  %18 = call %struct.blk_mq_qe_pair* @kmalloc(i32 24, i32 %17)
  store %struct.blk_mq_qe_pair* %18, %struct.blk_mq_qe_pair** %6, align 8
  %19 = load %struct.blk_mq_qe_pair*, %struct.blk_mq_qe_pair** %6, align 8
  %20 = icmp ne %struct.blk_mq_qe_pair* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %54

22:                                               ; preds = %12
  %23 = load %struct.blk_mq_qe_pair*, %struct.blk_mq_qe_pair** %6, align 8
  %24 = getelementptr inbounds %struct.blk_mq_qe_pair, %struct.blk_mq_qe_pair* %23, i32 0, i32 1
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %27 = load %struct.blk_mq_qe_pair*, %struct.blk_mq_qe_pair** %6, align 8
  %28 = getelementptr inbounds %struct.blk_mq_qe_pair, %struct.blk_mq_qe_pair* %27, i32 0, i32 2
  store %struct.request_queue* %26, %struct.request_queue** %28, align 8
  %29 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %30 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load %struct.blk_mq_qe_pair*, %struct.blk_mq_qe_pair** %6, align 8
  %35 = getelementptr inbounds %struct.blk_mq_qe_pair, %struct.blk_mq_qe_pair* %34, i32 0, i32 0
  store %struct.TYPE_3__* %33, %struct.TYPE_3__** %35, align 8
  %36 = load %struct.blk_mq_qe_pair*, %struct.blk_mq_qe_pair** %6, align 8
  %37 = getelementptr inbounds %struct.blk_mq_qe_pair, %struct.blk_mq_qe_pair* %36, i32 0, i32 1
  %38 = load %struct.list_head*, %struct.list_head** %4, align 8
  %39 = call i32 @list_add(i32* %37, %struct.list_head* %38)
  %40 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %41 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.blk_mq_qe_pair*, %struct.blk_mq_qe_pair** %6, align 8
  %44 = getelementptr inbounds %struct.blk_mq_qe_pair, %struct.blk_mq_qe_pair* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @__module_get(i32 %47)
  %49 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %50 = call i32 @elevator_switch_mq(%struct.request_queue* %49, i32* null)
  %51 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %52 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  store i32 1, i32* %3, align 4
  br label %54

54:                                               ; preds = %22, %21, %11
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.blk_mq_qe_pair* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__module_get(i32) #1

declare dso_local i32 @elevator_switch_mq(%struct.request_queue*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
