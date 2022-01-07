; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_pd_init.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_pd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkg_policy_data = type { i32 }
%struct.throtl_grp = type { %struct.throtl_data*, %struct.throtl_service_queue }
%struct.throtl_data = type { i32 }
%struct.throtl_service_queue = type { i32* }
%struct.blkcg_gq = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.throtl_data* }
%struct.TYPE_4__ = type { i32 }

@io_cgrp_subsys = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blkg_policy_data*)* @throtl_pd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @throtl_pd_init(%struct.blkg_policy_data* %0) #0 {
  %2 = alloca %struct.blkg_policy_data*, align 8
  %3 = alloca %struct.throtl_grp*, align 8
  %4 = alloca %struct.blkcg_gq*, align 8
  %5 = alloca %struct.throtl_data*, align 8
  %6 = alloca %struct.throtl_service_queue*, align 8
  store %struct.blkg_policy_data* %0, %struct.blkg_policy_data** %2, align 8
  %7 = load %struct.blkg_policy_data*, %struct.blkg_policy_data** %2, align 8
  %8 = call %struct.throtl_grp* @pd_to_tg(%struct.blkg_policy_data* %7)
  store %struct.throtl_grp* %8, %struct.throtl_grp** %3, align 8
  %9 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %10 = call %struct.blkcg_gq* @tg_to_blkg(%struct.throtl_grp* %9)
  store %struct.blkcg_gq* %10, %struct.blkcg_gq** %4, align 8
  %11 = load %struct.blkcg_gq*, %struct.blkcg_gq** %4, align 8
  %12 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.throtl_data*, %struct.throtl_data** %14, align 8
  store %struct.throtl_data* %15, %struct.throtl_data** %5, align 8
  %16 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %17 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %16, i32 0, i32 1
  store %struct.throtl_service_queue* %17, %struct.throtl_service_queue** %6, align 8
  %18 = load %struct.throtl_data*, %struct.throtl_data** %5, align 8
  %19 = getelementptr inbounds %struct.throtl_data, %struct.throtl_data* %18, i32 0, i32 0
  %20 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %6, align 8
  %21 = getelementptr inbounds %struct.throtl_service_queue, %struct.throtl_service_queue* %20, i32 0, i32 0
  store i32* %19, i32** %21, align 8
  %22 = load i32, i32* @io_cgrp_subsys, align 4
  %23 = call i64 @cgroup_subsys_on_dfl(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %1
  %26 = load %struct.blkcg_gq*, %struct.blkcg_gq** %4, align 8
  %27 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.blkcg_gq*, %struct.blkcg_gq** %4, align 8
  %32 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call %struct.TYPE_4__* @blkg_to_tg(i64 %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %6, align 8
  %37 = getelementptr inbounds %struct.throtl_service_queue, %struct.throtl_service_queue* %36, i32 0, i32 0
  store i32* %35, i32** %37, align 8
  br label %38

38:                                               ; preds = %30, %25, %1
  %39 = load %struct.throtl_data*, %struct.throtl_data** %5, align 8
  %40 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %41 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %40, i32 0, i32 0
  store %struct.throtl_data* %39, %struct.throtl_data** %41, align 8
  ret void
}

declare dso_local %struct.throtl_grp* @pd_to_tg(%struct.blkg_policy_data*) #1

declare dso_local %struct.blkcg_gq* @tg_to_blkg(%struct.throtl_grp*) #1

declare dso_local i64 @cgroup_subsys_on_dfl(i32) #1

declare dso_local %struct.TYPE_4__* @blkg_to_tg(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
