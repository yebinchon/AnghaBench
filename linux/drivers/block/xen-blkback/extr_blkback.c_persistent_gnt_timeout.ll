; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_blkback.c_persistent_gnt_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_blkback.c_persistent_gnt_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.persistent_gnt = type { i32 }

@xen_blkif_pgrant_timeout = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.persistent_gnt*)* @persistent_gnt_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @persistent_gnt_timeout(%struct.persistent_gnt* %0) #0 {
  %2 = alloca %struct.persistent_gnt*, align 8
  store %struct.persistent_gnt* %0, %struct.persistent_gnt** %2, align 8
  %3 = load i32, i32* @xen_blkif_pgrant_timeout, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = load i32, i32* @jiffies, align 4
  %7 = load %struct.persistent_gnt*, %struct.persistent_gnt** %2, align 8
  %8 = getelementptr inbounds %struct.persistent_gnt, %struct.persistent_gnt* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sub nsw i32 %6, %9
  %11 = load i32, i32* @HZ, align 4
  %12 = load i32, i32* @xen_blkif_pgrant_timeout, align 4
  %13 = mul nsw i32 %11, %12
  %14 = icmp sge i32 %10, %13
  br label %15

15:                                               ; preds = %5, %1
  %16 = phi i1 [ false, %1 ], [ %14, %5 ]
  %17 = zext i1 %16 to i32
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
