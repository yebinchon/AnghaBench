; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_xlvbd_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_xlvbd_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkfront_info = type { i64, i64, %struct.TYPE_2__*, i64, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"blkfront: %s: %s %s %s %s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"persistent grants:\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"enabled;\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"disabled;\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"indirect descriptors:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blkfront_info*)* @xlvbd_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlvbd_flush(%struct.blkfront_info* %0) #0 {
  %2 = alloca %struct.blkfront_info*, align 8
  store %struct.blkfront_info* %0, %struct.blkfront_info** %2, align 8
  %3 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %4 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %3, i32 0, i32 5
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %7 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 1, i32 0
  %12 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %13 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 1, i32 0
  %18 = call i32 @blk_queue_write_cache(i32 %5, i32 %11, i32 %17)
  %19 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %20 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %25 = call i32 @flush_info(%struct.blkfront_info* %24)
  %26 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %27 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %32 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %33 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %38 = call i32 @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %37)
  ret void
}

declare dso_local i32 @blk_queue_write_cache(i32, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @flush_info(%struct.blkfront_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
