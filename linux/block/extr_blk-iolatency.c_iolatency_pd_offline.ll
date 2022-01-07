; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-iolatency.c_iolatency_pd_offline.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-iolatency.c_iolatency_pd_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkg_policy_data = type { i32 }
%struct.iolatency_grp = type { %struct.blk_iolatency* }
%struct.blk_iolatency = type { i32 }
%struct.blkcg_gq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blkg_policy_data*)* @iolatency_pd_offline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iolatency_pd_offline(%struct.blkg_policy_data* %0) #0 {
  %2 = alloca %struct.blkg_policy_data*, align 8
  %3 = alloca %struct.iolatency_grp*, align 8
  %4 = alloca %struct.blkcg_gq*, align 8
  %5 = alloca %struct.blk_iolatency*, align 8
  %6 = alloca i32, align 4
  store %struct.blkg_policy_data* %0, %struct.blkg_policy_data** %2, align 8
  %7 = load %struct.blkg_policy_data*, %struct.blkg_policy_data** %2, align 8
  %8 = call %struct.iolatency_grp* @pd_to_lat(%struct.blkg_policy_data* %7)
  store %struct.iolatency_grp* %8, %struct.iolatency_grp** %3, align 8
  %9 = load %struct.iolatency_grp*, %struct.iolatency_grp** %3, align 8
  %10 = call %struct.blkcg_gq* @lat_to_blkg(%struct.iolatency_grp* %9)
  store %struct.blkcg_gq* %10, %struct.blkcg_gq** %4, align 8
  %11 = load %struct.iolatency_grp*, %struct.iolatency_grp** %3, align 8
  %12 = getelementptr inbounds %struct.iolatency_grp, %struct.iolatency_grp* %11, i32 0, i32 0
  %13 = load %struct.blk_iolatency*, %struct.blk_iolatency** %12, align 8
  store %struct.blk_iolatency* %13, %struct.blk_iolatency** %5, align 8
  %14 = load %struct.blkcg_gq*, %struct.blkcg_gq** %4, align 8
  %15 = call i32 @iolatency_set_min_lat_nsec(%struct.blkcg_gq* %14, i32 0)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.blk_iolatency*, %struct.blk_iolatency** %5, align 8
  %20 = getelementptr inbounds %struct.blk_iolatency, %struct.blk_iolatency* %19, i32 0, i32 0
  %21 = call i32 @atomic_inc(i32* %20)
  br label %22

22:                                               ; preds = %18, %1
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load %struct.blk_iolatency*, %struct.blk_iolatency** %5, align 8
  %27 = getelementptr inbounds %struct.blk_iolatency, %struct.blk_iolatency* %26, i32 0, i32 0
  %28 = call i32 @atomic_dec(i32* %27)
  br label %29

29:                                               ; preds = %25, %22
  %30 = load %struct.blkcg_gq*, %struct.blkcg_gq** %4, align 8
  %31 = call i32 @iolatency_clear_scaling(%struct.blkcg_gq* %30)
  ret void
}

declare dso_local %struct.iolatency_grp* @pd_to_lat(%struct.blkg_policy_data*) #1

declare dso_local %struct.blkcg_gq* @lat_to_blkg(%struct.iolatency_grp*) #1

declare dso_local i32 @iolatency_set_min_lat_nsec(%struct.blkcg_gq*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @iolatency_clear_scaling(%struct.blkcg_gq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
