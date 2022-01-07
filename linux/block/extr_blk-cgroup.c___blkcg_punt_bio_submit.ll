; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-cgroup.c___blkcg_punt_bio_submit.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-cgroup.c___blkcg_punt_bio_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.blkcg_gq* }
%struct.blkcg_gq = type { i32, i32, i32, i32 }

@REQ_CGROUP_PUNT = common dso_local global i32 0, align 4
@blkcg_punt_bio_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__blkcg_punt_bio_submit(%struct.bio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bio*, align 8
  %4 = alloca %struct.blkcg_gq*, align 8
  store %struct.bio* %0, %struct.bio** %3, align 8
  %5 = load %struct.bio*, %struct.bio** %3, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 1
  %7 = load %struct.blkcg_gq*, %struct.blkcg_gq** %6, align 8
  store %struct.blkcg_gq* %7, %struct.blkcg_gq** %4, align 8
  %8 = load i32, i32* @REQ_CGROUP_PUNT, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.bio*, %struct.bio** %3, align 8
  %11 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 8
  %14 = load %struct.blkcg_gq*, %struct.blkcg_gq** %4, align 8
  %15 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

19:                                               ; preds = %1
  %20 = load %struct.blkcg_gq*, %struct.blkcg_gq** %4, align 8
  %21 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %20, i32 0, i32 1
  %22 = call i32 @spin_lock_bh(i32* %21)
  %23 = load %struct.blkcg_gq*, %struct.blkcg_gq** %4, align 8
  %24 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %23, i32 0, i32 2
  %25 = load %struct.bio*, %struct.bio** %3, align 8
  %26 = call i32 @bio_list_add(i32* %24, %struct.bio* %25)
  %27 = load %struct.blkcg_gq*, %struct.blkcg_gq** %4, align 8
  %28 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %27, i32 0, i32 1
  %29 = call i32 @spin_unlock_bh(i32* %28)
  %30 = load i32, i32* @blkcg_punt_bio_wq, align 4
  %31 = load %struct.blkcg_gq*, %struct.blkcg_gq** %4, align 8
  %32 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %31, i32 0, i32 0
  %33 = call i32 @queue_work(i32 %30, i32* %32)
  store i32 1, i32* %2, align 4
  br label %34

34:                                               ; preds = %19, %18
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @bio_list_add(i32*, %struct.bio*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
