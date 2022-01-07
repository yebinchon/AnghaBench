; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq-debugfs.c_print_stat.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq-debugfs.c_print_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.blk_rq_stat = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [42 x i8] c"samples=%d, mean=%llu, min=%llu, max=%llu\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"samples=0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.blk_rq_stat*)* @print_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_stat(%struct.seq_file* %0, %struct.blk_rq_stat* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.blk_rq_stat*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.blk_rq_stat* %1, %struct.blk_rq_stat** %4, align 8
  %5 = load %struct.blk_rq_stat*, %struct.blk_rq_stat** %4, align 8
  %6 = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = load %struct.blk_rq_stat*, %struct.blk_rq_stat** %4, align 8
  %12 = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.blk_rq_stat*, %struct.blk_rq_stat** %4, align 8
  %15 = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.blk_rq_stat*, %struct.blk_rq_stat** %4, align 8
  %18 = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.blk_rq_stat*, %struct.blk_rq_stat** %4, align 8
  %21 = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @seq_printf(%struct.seq_file* %10, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %13, i32 %16, i32 %19, i32 %22)
  br label %27

24:                                               ; preds = %2
  %25 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %26 = call i32 @seq_puts(%struct.seq_file* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %9
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
