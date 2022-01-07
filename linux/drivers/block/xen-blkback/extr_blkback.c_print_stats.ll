; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_blkback.c_print_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_blkback.c_print_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.xen_blkif_ring = type { i64, i64, i64, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [81 x i8] c"(%s): oo %3llu  |  rd %4llu  |  wr %4llu  |  f %4llu  |  ds %4llu | pg: %4u/%4d\0A\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8
@xen_blkif_max_pgrants = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xen_blkif_ring*)* @print_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_stats(%struct.xen_blkif_ring* %0) #0 {
  %2 = alloca %struct.xen_blkif_ring*, align 8
  store %struct.xen_blkif_ring* %0, %struct.xen_blkif_ring** %2, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %2, align 8
  %7 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %2, align 8
  %10 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %2, align 8
  %13 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %2, align 8
  %16 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %2, align 8
  %19 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %2, align 8
  %22 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @xen_blkif_max_pgrants, align 4
  %25 = call i32 @pr_info(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %5, i64 %8, i64 %11, i64 %14, i32 %17, i64 %20, i32 %23, i32 %24)
  %26 = load i64, i64* @jiffies, align 8
  %27 = call i64 @msecs_to_jiffies(i32 10000)
  %28 = add nsw i64 %26, %27
  %29 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %2, align 8
  %30 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %29, i32 0, i32 4
  store i64 %28, i64* %30, align 8
  %31 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %2, align 8
  %32 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %31, i32 0, i32 3
  store i64 0, i64* %32, align 8
  %33 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %2, align 8
  %34 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  %35 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %2, align 8
  %36 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %2, align 8
  %38 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  ret void
}

declare dso_local i32 @pr_info(i8*, i32, i64, i64, i64, i32, i64, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
