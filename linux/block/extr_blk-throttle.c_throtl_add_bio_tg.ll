; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_add_bio_tg.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_add_bio_tg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 }
%struct.throtl_qnode = type { i32 }
%struct.throtl_grp = type { i32, %struct.throtl_qnode*, %struct.throtl_service_queue }
%struct.throtl_service_queue = type { i32*, i32* }

@THROTL_TG_WAS_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*, %struct.throtl_qnode*, %struct.throtl_grp*)* @throtl_add_bio_tg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @throtl_add_bio_tg(%struct.bio* %0, %struct.throtl_qnode* %1, %struct.throtl_grp* %2) #0 {
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.throtl_qnode*, align 8
  %6 = alloca %struct.throtl_grp*, align 8
  %7 = alloca %struct.throtl_service_queue*, align 8
  %8 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %4, align 8
  store %struct.throtl_qnode* %1, %struct.throtl_qnode** %5, align 8
  store %struct.throtl_grp* %2, %struct.throtl_grp** %6, align 8
  %9 = load %struct.throtl_grp*, %struct.throtl_grp** %6, align 8
  %10 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %9, i32 0, i32 2
  store %struct.throtl_service_queue* %10, %struct.throtl_service_queue** %7, align 8
  %11 = load %struct.bio*, %struct.bio** %4, align 8
  %12 = call i32 @bio_data_dir(%struct.bio* %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.throtl_qnode*, %struct.throtl_qnode** %5, align 8
  %14 = icmp ne %struct.throtl_qnode* %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %3
  %16 = load %struct.throtl_grp*, %struct.throtl_grp** %6, align 8
  %17 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %16, i32 0, i32 1
  %18 = load %struct.throtl_qnode*, %struct.throtl_qnode** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.throtl_qnode, %struct.throtl_qnode* %18, i64 %20
  store %struct.throtl_qnode* %21, %struct.throtl_qnode** %5, align 8
  br label %22

22:                                               ; preds = %15, %3
  %23 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %7, align 8
  %24 = getelementptr inbounds %struct.throtl_service_queue, %struct.throtl_service_queue* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* @THROTL_TG_WAS_EMPTY, align 4
  %33 = load %struct.throtl_grp*, %struct.throtl_grp** %6, align 8
  %34 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %31, %22
  %38 = load %struct.bio*, %struct.bio** %4, align 8
  %39 = load %struct.throtl_qnode*, %struct.throtl_qnode** %5, align 8
  %40 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %7, align 8
  %41 = getelementptr inbounds %struct.throtl_service_queue, %struct.throtl_service_queue* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = call i32 @throtl_qnode_add_bio(%struct.bio* %38, %struct.throtl_qnode* %39, i32* %45)
  %47 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %7, align 8
  %48 = getelementptr inbounds %struct.throtl_service_queue, %struct.throtl_service_queue* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load %struct.throtl_grp*, %struct.throtl_grp** %6, align 8
  %56 = call i32 @throtl_enqueue_tg(%struct.throtl_grp* %55)
  ret void
}

declare dso_local i32 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @throtl_qnode_add_bio(%struct.bio*, %struct.throtl_qnode*, i32*) #1

declare dso_local i32 @throtl_enqueue_tg(%struct.throtl_grp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
