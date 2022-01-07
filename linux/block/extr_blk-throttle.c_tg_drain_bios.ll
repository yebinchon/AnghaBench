; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_tg_drain_bios.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_tg_drain_bios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_service_queue = type { i32* }
%struct.throtl_grp = type { %struct.throtl_service_queue }
%struct.bio = type { i32 }

@READ = common dso_local global i64 0, align 8
@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.throtl_service_queue*)* @tg_drain_bios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg_drain_bios(%struct.throtl_service_queue* %0) #0 {
  %2 = alloca %struct.throtl_service_queue*, align 8
  %3 = alloca %struct.throtl_grp*, align 8
  %4 = alloca %struct.throtl_service_queue*, align 8
  %5 = alloca %struct.bio*, align 8
  store %struct.throtl_service_queue* %0, %struct.throtl_service_queue** %2, align 8
  br label %6

6:                                                ; preds = %42, %1
  %7 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %2, align 8
  %8 = call %struct.throtl_grp* @throtl_rb_first(%struct.throtl_service_queue* %7)
  store %struct.throtl_grp* %8, %struct.throtl_grp** %3, align 8
  %9 = icmp ne %struct.throtl_grp* %8, null
  br i1 %9, label %10, label %43

10:                                               ; preds = %6
  %11 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %12 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %11, i32 0, i32 0
  store %struct.throtl_service_queue* %12, %struct.throtl_service_queue** %4, align 8
  %13 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %14 = call i32 @throtl_dequeue_tg(%struct.throtl_grp* %13)
  br label %15

15:                                               ; preds = %23, %10
  %16 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %4, align 8
  %17 = getelementptr inbounds %struct.throtl_service_queue, %struct.throtl_service_queue* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @READ, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = call %struct.bio* @throtl_peek_queued(i32* %20)
  store %struct.bio* %21, %struct.bio** %5, align 8
  %22 = icmp ne %struct.bio* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %15
  %24 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %25 = load %struct.bio*, %struct.bio** %5, align 8
  %26 = call i32 @bio_data_dir(%struct.bio* %25)
  %27 = call i32 @tg_dispatch_one_bio(%struct.throtl_grp* %24, i32 %26)
  br label %15

28:                                               ; preds = %15
  br label %29

29:                                               ; preds = %37, %28
  %30 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %4, align 8
  %31 = getelementptr inbounds %struct.throtl_service_queue, %struct.throtl_service_queue* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @WRITE, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = call %struct.bio* @throtl_peek_queued(i32* %34)
  store %struct.bio* %35, %struct.bio** %5, align 8
  %36 = icmp ne %struct.bio* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %39 = load %struct.bio*, %struct.bio** %5, align 8
  %40 = call i32 @bio_data_dir(%struct.bio* %39)
  %41 = call i32 @tg_dispatch_one_bio(%struct.throtl_grp* %38, i32 %40)
  br label %29

42:                                               ; preds = %29
  br label %6

43:                                               ; preds = %6
  ret void
}

declare dso_local %struct.throtl_grp* @throtl_rb_first(%struct.throtl_service_queue*) #1

declare dso_local i32 @throtl_dequeue_tg(%struct.throtl_grp*) #1

declare dso_local %struct.bio* @throtl_peek_queued(i32*) #1

declare dso_local i32 @tg_dispatch_one_bio(%struct.throtl_grp*, i32) #1

declare dso_local i32 @bio_data_dir(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
