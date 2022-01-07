; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_pd_free.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_pd_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkg_policy_data = type { i32 }
%struct.throtl_grp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blkg_policy_data*)* @throtl_pd_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @throtl_pd_free(%struct.blkg_policy_data* %0) #0 {
  %2 = alloca %struct.blkg_policy_data*, align 8
  %3 = alloca %struct.throtl_grp*, align 8
  store %struct.blkg_policy_data* %0, %struct.blkg_policy_data** %2, align 8
  %4 = load %struct.blkg_policy_data*, %struct.blkg_policy_data** %2, align 8
  %5 = call %struct.throtl_grp* @pd_to_tg(%struct.blkg_policy_data* %4)
  store %struct.throtl_grp* %5, %struct.throtl_grp** %3, align 8
  %6 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %7 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @del_timer_sync(i32* %8)
  %10 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %11 = call i32 @kfree(%struct.throtl_grp* %10)
  ret void
}

declare dso_local %struct.throtl_grp* @pd_to_tg(%struct.blkg_policy_data*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @kfree(%struct.throtl_grp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
