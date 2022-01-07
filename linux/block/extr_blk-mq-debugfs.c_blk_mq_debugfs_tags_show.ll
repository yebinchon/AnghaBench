; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq-debugfs.c_blk_mq_debugfs_tags_show.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq-debugfs.c_blk_mq_debugfs_tags_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.blk_mq_tags = type { i32, i64, i32, i32, i64 }

@.str = private unnamed_addr constant [12 x i8] c"nr_tags=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"nr_reserved_tags=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"active_queues=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"\0Abitmap_tags:\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"\0Abreserved_tags:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.blk_mq_tags*)* @blk_mq_debugfs_tags_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blk_mq_debugfs_tags_show(%struct.seq_file* %0, %struct.blk_mq_tags* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.blk_mq_tags*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.blk_mq_tags* %1, %struct.blk_mq_tags** %4, align 8
  %5 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %6 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %4, align 8
  %7 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @seq_printf(%struct.seq_file* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %8)
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %4, align 8
  %12 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @seq_printf(%struct.seq_file* %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %13)
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %4, align 8
  %17 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %16, i32 0, i32 3
  %18 = call i64 @atomic_read(i32* %17)
  %19 = call i32 @seq_printf(%struct.seq_file* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %18)
  %20 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %21 = call i32 @seq_puts(%struct.seq_file* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %22 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %4, align 8
  %23 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %22, i32 0, i32 2
  %24 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %25 = call i32 @sbitmap_queue_show(i32* %23, %struct.seq_file* %24)
  %26 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %4, align 8
  %27 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %2
  %31 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %32 = call i32 @seq_puts(%struct.seq_file* %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %33 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %4, align 8
  %34 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %33, i32 0, i32 0
  %35 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %36 = call i32 @sbitmap_queue_show(i32* %34, %struct.seq_file* %35)
  br label %37

37:                                               ; preds = %30, %2
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @sbitmap_queue_show(i32*, %struct.seq_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
