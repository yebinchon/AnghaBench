; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-binlog.c_copyexec_main_le_start.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-binlog.c_copyexec_main_le_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_start = type { i64, i64, i64, i64 }

@COPYEXEC_MAIN_SCHEMA_V1 = common dso_local global i64 0, align 8
@COPYEXEC_RESULT_SCHEMA_V1 = common dso_local global i64 0, align 8
@log_split_min = common dso_local global i64 0, align 8
@log_split_max = common dso_local global i64 0, align 8
@log_split_mod = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_start*)* @copyexec_main_le_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copyexec_main_le_start(%struct.lev_start* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lev_start*, align 8
  store %struct.lev_start* %0, %struct.lev_start** %3, align 8
  %4 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %5 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @COPYEXEC_MAIN_SCHEMA_V1, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %11 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @COPYEXEC_RESULT_SCHEMA_V1, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32 -1, i32* %2, align 4
  br label %44

16:                                               ; preds = %9, %1
  %17 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %18 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* @log_split_min, align 8
  %20 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %21 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* @log_split_max, align 8
  %23 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %24 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* @log_split_mod, align 8
  %26 = load i64, i64* @log_split_mod, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %16
  %29 = load i64, i64* @log_split_min, align 8
  %30 = icmp sge i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load i64, i64* @log_split_min, align 8
  %33 = add nsw i64 %32, 1
  %34 = load i64, i64* @log_split_max, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i64, i64* @log_split_max, align 8
  %38 = load i64, i64* @log_split_mod, align 8
  %39 = icmp sle i64 %37, %38
  br label %40

40:                                               ; preds = %36, %31, %28, %16
  %41 = phi i1 [ false, %31 ], [ false, %28 ], [ false, %16 ], [ %39, %36 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %40, %15
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
