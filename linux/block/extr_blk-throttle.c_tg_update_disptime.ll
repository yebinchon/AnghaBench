; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_tg_update_disptime.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_tg_update_disptime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_grp = type { i64, i32, %struct.throtl_service_queue }
%struct.throtl_service_queue = type { i32* }
%struct.bio = type { i32 }

@READ = common dso_local global i64 0, align 8
@WRITE = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@THROTL_TG_WAS_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.throtl_grp*)* @tg_update_disptime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg_update_disptime(%struct.throtl_grp* %0) #0 {
  %2 = alloca %struct.throtl_grp*, align 8
  %3 = alloca %struct.throtl_service_queue*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bio*, align 8
  store %struct.throtl_grp* %0, %struct.throtl_grp** %2, align 8
  %9 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %10 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %9, i32 0, i32 2
  store %struct.throtl_service_queue* %10, %struct.throtl_service_queue** %3, align 8
  store i64 -1, i64* %4, align 8
  store i64 -1, i64* %5, align 8
  store i64 -1, i64* %6, align 8
  %11 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %3, align 8
  %12 = getelementptr inbounds %struct.throtl_service_queue, %struct.throtl_service_queue* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @READ, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = call %struct.bio* @throtl_peek_queued(i32* %15)
  store %struct.bio* %16, %struct.bio** %8, align 8
  %17 = load %struct.bio*, %struct.bio** %8, align 8
  %18 = icmp ne %struct.bio* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %21 = load %struct.bio*, %struct.bio** %8, align 8
  %22 = call i32 @tg_may_dispatch(%struct.throtl_grp* %20, %struct.bio* %21, i64* %4)
  br label %23

23:                                               ; preds = %19, %1
  %24 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %3, align 8
  %25 = getelementptr inbounds %struct.throtl_service_queue, %struct.throtl_service_queue* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @WRITE, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = call %struct.bio* @throtl_peek_queued(i32* %28)
  store %struct.bio* %29, %struct.bio** %8, align 8
  %30 = load %struct.bio*, %struct.bio** %8, align 8
  %31 = icmp ne %struct.bio* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %34 = load %struct.bio*, %struct.bio** %8, align 8
  %35 = call i32 @tg_may_dispatch(%struct.throtl_grp* %33, %struct.bio* %34, i64* %5)
  br label %36

36:                                               ; preds = %32, %23
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i64 @min(i64 %37, i64 %38)
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* @jiffies, align 8
  %41 = load i64, i64* %6, align 8
  %42 = add i64 %40, %41
  store i64 %42, i64* %7, align 8
  %43 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %44 = call i32 @throtl_dequeue_tg(%struct.throtl_grp* %43)
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %47 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %49 = call i32 @throtl_enqueue_tg(%struct.throtl_grp* %48)
  %50 = load i32, i32* @THROTL_TG_WAS_EMPTY, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %53 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 8
  ret void
}

declare dso_local %struct.bio* @throtl_peek_queued(i32*) #1

declare dso_local i32 @tg_may_dispatch(%struct.throtl_grp*, %struct.bio*, i64*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @throtl_dequeue_tg(%struct.throtl_grp*) #1

declare dso_local i32 @throtl_enqueue_tg(%struct.throtl_grp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
