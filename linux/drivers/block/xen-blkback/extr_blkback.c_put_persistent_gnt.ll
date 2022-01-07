; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_blkback.c_put_persistent_gnt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_blkback.c_put_persistent_gnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_blkif_ring = type { i32 }
%struct.persistent_gnt = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"freeing a grant already unused\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xen_blkif_ring*, %struct.persistent_gnt*)* @put_persistent_gnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_persistent_gnt(%struct.xen_blkif_ring* %0, %struct.persistent_gnt* %1) #0 {
  %3 = alloca %struct.xen_blkif_ring*, align 8
  %4 = alloca %struct.persistent_gnt*, align 8
  store %struct.xen_blkif_ring* %0, %struct.xen_blkif_ring** %3, align 8
  store %struct.persistent_gnt* %1, %struct.persistent_gnt** %4, align 8
  %5 = load %struct.persistent_gnt*, %struct.persistent_gnt** %4, align 8
  %6 = getelementptr inbounds %struct.persistent_gnt, %struct.persistent_gnt* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = call i32 @pr_alert_ratelimited(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %2
  %12 = load i32, i32* @jiffies, align 4
  %13 = load %struct.persistent_gnt*, %struct.persistent_gnt** %4, align 8
  %14 = getelementptr inbounds %struct.persistent_gnt, %struct.persistent_gnt* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.persistent_gnt*, %struct.persistent_gnt** %4, align 8
  %16 = getelementptr inbounds %struct.persistent_gnt, %struct.persistent_gnt* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %3, align 8
  %18 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %17, i32 0, i32 0
  %19 = call i32 @atomic_dec(i32* %18)
  ret void
}

declare dso_local i32 @pr_alert_ratelimited(i8*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
