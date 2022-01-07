; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_blkg_to_tg.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_blkg_to_tg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_grp = type { i32 }
%struct.blkcg_gq = type { i32 }

@blkcg_policy_throtl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.throtl_grp* (%struct.blkcg_gq*)* @blkg_to_tg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.throtl_grp* @blkg_to_tg(%struct.blkcg_gq* %0) #0 {
  %2 = alloca %struct.blkcg_gq*, align 8
  store %struct.blkcg_gq* %0, %struct.blkcg_gq** %2, align 8
  %3 = load %struct.blkcg_gq*, %struct.blkcg_gq** %2, align 8
  %4 = call i32 @blkg_to_pd(%struct.blkcg_gq* %3, i32* @blkcg_policy_throtl)
  %5 = call %struct.throtl_grp* @pd_to_tg(i32 %4)
  ret %struct.throtl_grp* %5
}

declare dso_local %struct.throtl_grp* @pd_to_tg(i32) #1

declare dso_local i32 @blkg_to_pd(%struct.blkcg_gq*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
