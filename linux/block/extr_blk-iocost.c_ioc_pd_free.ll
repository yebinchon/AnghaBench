; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-iocost.c_ioc_pd_free.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-iocost.c_ioc_pd_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkg_policy_data = type { i32 }
%struct.ioc_gq = type { i32, i32, i32, %struct.ioc* }
%struct.ioc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blkg_policy_data*)* @ioc_pd_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioc_pd_free(%struct.blkg_policy_data* %0) #0 {
  %2 = alloca %struct.blkg_policy_data*, align 8
  %3 = alloca %struct.ioc_gq*, align 8
  %4 = alloca %struct.ioc*, align 8
  store %struct.blkg_policy_data* %0, %struct.blkg_policy_data** %2, align 8
  %5 = load %struct.blkg_policy_data*, %struct.blkg_policy_data** %2, align 8
  %6 = call %struct.ioc_gq* @pd_to_iocg(%struct.blkg_policy_data* %5)
  store %struct.ioc_gq* %6, %struct.ioc_gq** %3, align 8
  %7 = load %struct.ioc_gq*, %struct.ioc_gq** %3, align 8
  %8 = getelementptr inbounds %struct.ioc_gq, %struct.ioc_gq* %7, i32 0, i32 3
  %9 = load %struct.ioc*, %struct.ioc** %8, align 8
  store %struct.ioc* %9, %struct.ioc** %4, align 8
  %10 = load %struct.ioc*, %struct.ioc** %4, align 8
  %11 = icmp ne %struct.ioc* %10, null
  br i1 %11, label %12, label %36

12:                                               ; preds = %1
  %13 = load %struct.ioc*, %struct.ioc** %4, align 8
  %14 = getelementptr inbounds %struct.ioc, %struct.ioc* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.ioc_gq*, %struct.ioc_gq** %3, align 8
  %17 = getelementptr inbounds %struct.ioc_gq, %struct.ioc_gq* %16, i32 0, i32 2
  %18 = call i32 @list_empty(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %12
  %21 = load %struct.ioc_gq*, %struct.ioc_gq** %3, align 8
  %22 = call i32 @propagate_active_weight(%struct.ioc_gq* %21, i32 0, i32 0)
  %23 = load %struct.ioc_gq*, %struct.ioc_gq** %3, align 8
  %24 = getelementptr inbounds %struct.ioc_gq, %struct.ioc_gq* %23, i32 0, i32 2
  %25 = call i32 @list_del_init(i32* %24)
  br label %26

26:                                               ; preds = %20, %12
  %27 = load %struct.ioc*, %struct.ioc** %4, align 8
  %28 = getelementptr inbounds %struct.ioc, %struct.ioc* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock(i32* %28)
  %30 = load %struct.ioc_gq*, %struct.ioc_gq** %3, align 8
  %31 = getelementptr inbounds %struct.ioc_gq, %struct.ioc_gq* %30, i32 0, i32 1
  %32 = call i32 @hrtimer_cancel(i32* %31)
  %33 = load %struct.ioc_gq*, %struct.ioc_gq** %3, align 8
  %34 = getelementptr inbounds %struct.ioc_gq, %struct.ioc_gq* %33, i32 0, i32 0
  %35 = call i32 @hrtimer_cancel(i32* %34)
  br label %36

36:                                               ; preds = %26, %1
  %37 = load %struct.ioc_gq*, %struct.ioc_gq** %3, align 8
  %38 = call i32 @kfree(%struct.ioc_gq* %37)
  ret void
}

declare dso_local %struct.ioc_gq* @pd_to_iocg(%struct.blkg_policy_data*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @propagate_active_weight(%struct.ioc_gq*, i32, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @kfree(%struct.ioc_gq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
