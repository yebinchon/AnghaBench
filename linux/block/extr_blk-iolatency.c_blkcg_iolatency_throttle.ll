; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-iolatency.c_blkcg_iolatency_throttle.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-iolatency.c_blkcg_iolatency_throttle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq_qos = type { i32 }
%struct.bio = type { i32, %struct.blkcg_gq* }
%struct.blkcg_gq = type { %struct.blkcg_gq* }
%struct.blk_iolatency = type { i32 }
%struct.iolatency_grp = type { i32 }

@REQ_SWAP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rq_qos*, %struct.bio*)* @blkcg_iolatency_throttle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blkcg_iolatency_throttle(%struct.rq_qos* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.rq_qos*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.blk_iolatency*, align 8
  %6 = alloca %struct.blkcg_gq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iolatency_grp*, align 8
  store %struct.rq_qos* %0, %struct.rq_qos** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %9 = load %struct.rq_qos*, %struct.rq_qos** %3, align 8
  %10 = call %struct.blk_iolatency* @BLKIOLATENCY(%struct.rq_qos* %9)
  store %struct.blk_iolatency* %10, %struct.blk_iolatency** %5, align 8
  %11 = load %struct.bio*, %struct.bio** %4, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 1
  %13 = load %struct.blkcg_gq*, %struct.blkcg_gq** %12, align 8
  store %struct.blkcg_gq* %13, %struct.blkcg_gq** %6, align 8
  %14 = load %struct.bio*, %struct.bio** %4, align 8
  %15 = call i32 @bio_issue_as_root_blkg(%struct.bio* %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.blk_iolatency*, %struct.blk_iolatency** %5, align 8
  %17 = call i32 @blk_iolatency_enabled(%struct.blk_iolatency* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %70

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %40, %36, %20
  %22 = load %struct.blkcg_gq*, %struct.blkcg_gq** %6, align 8
  %23 = icmp ne %struct.blkcg_gq* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load %struct.blkcg_gq*, %struct.blkcg_gq** %6, align 8
  %26 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %25, i32 0, i32 0
  %27 = load %struct.blkcg_gq*, %struct.blkcg_gq** %26, align 8
  %28 = icmp ne %struct.blkcg_gq* %27, null
  br label %29

29:                                               ; preds = %24, %21
  %30 = phi i1 [ false, %21 ], [ %28, %24 ]
  br i1 %30, label %31, label %58

31:                                               ; preds = %29
  %32 = load %struct.blkcg_gq*, %struct.blkcg_gq** %6, align 8
  %33 = call %struct.iolatency_grp* @blkg_to_lat(%struct.blkcg_gq* %32)
  store %struct.iolatency_grp* %33, %struct.iolatency_grp** %8, align 8
  %34 = load %struct.iolatency_grp*, %struct.iolatency_grp** %8, align 8
  %35 = icmp ne %struct.iolatency_grp* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load %struct.blkcg_gq*, %struct.blkcg_gq** %6, align 8
  %38 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %37, i32 0, i32 0
  %39 = load %struct.blkcg_gq*, %struct.blkcg_gq** %38, align 8
  store %struct.blkcg_gq* %39, %struct.blkcg_gq** %6, align 8
  br label %21

40:                                               ; preds = %31
  %41 = load %struct.iolatency_grp*, %struct.iolatency_grp** %8, align 8
  %42 = call i32 @check_scale_change(%struct.iolatency_grp* %41)
  %43 = load %struct.rq_qos*, %struct.rq_qos** %3, align 8
  %44 = load %struct.iolatency_grp*, %struct.iolatency_grp** %8, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.bio*, %struct.bio** %4, align 8
  %47 = getelementptr inbounds %struct.bio, %struct.bio* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @REQ_SWAP, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @REQ_SWAP, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @__blkcg_iolatency_throttle(%struct.rq_qos* %43, %struct.iolatency_grp* %44, i32 %45, i32 %53)
  %55 = load %struct.blkcg_gq*, %struct.blkcg_gq** %6, align 8
  %56 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %55, i32 0, i32 0
  %57 = load %struct.blkcg_gq*, %struct.blkcg_gq** %56, align 8
  store %struct.blkcg_gq* %57, %struct.blkcg_gq** %6, align 8
  br label %21

58:                                               ; preds = %29
  %59 = load %struct.blk_iolatency*, %struct.blk_iolatency** %5, align 8
  %60 = getelementptr inbounds %struct.blk_iolatency, %struct.blk_iolatency* %59, i32 0, i32 0
  %61 = call i32 @timer_pending(i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %58
  %64 = load %struct.blk_iolatency*, %struct.blk_iolatency** %5, align 8
  %65 = getelementptr inbounds %struct.blk_iolatency, %struct.blk_iolatency* %64, i32 0, i32 0
  %66 = load i64, i64* @jiffies, align 8
  %67 = load i64, i64* @HZ, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @mod_timer(i32* %65, i64 %68)
  br label %70

70:                                               ; preds = %19, %63, %58
  ret void
}

declare dso_local %struct.blk_iolatency* @BLKIOLATENCY(%struct.rq_qos*) #1

declare dso_local i32 @bio_issue_as_root_blkg(%struct.bio*) #1

declare dso_local i32 @blk_iolatency_enabled(%struct.blk_iolatency*) #1

declare dso_local %struct.iolatency_grp* @blkg_to_lat(%struct.blkcg_gq*) #1

declare dso_local i32 @check_scale_change(%struct.iolatency_grp*) #1

declare dso_local i32 @__blkcg_iolatency_throttle(%struct.rq_qos*, %struct.iolatency_grp*, i32, i32) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
