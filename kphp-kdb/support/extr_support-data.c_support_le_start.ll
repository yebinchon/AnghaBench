; ModuleID = '/home/carl/AnghaBench/kphp-kdb/support/extr_support-data.c_support_le_start.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/support/extr_support-data.c_support_le_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_start = type { i64, i64, i64, i64 }

@SUPPORT_SCHEMA_V1 = common dso_local global i64 0, align 8
@log_split_min = common dso_local global i64 0, align 8
@log_split_max = common dso_local global i64 0, align 8
@log_split_mod = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_start*)* @support_le_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @support_le_start(%struct.lev_start* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lev_start*, align 8
  store %struct.lev_start* %0, %struct.lev_start** %3, align 8
  %4 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %5 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @SUPPORT_SCHEMA_V1, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %39

10:                                               ; preds = %1
  %11 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %12 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* @log_split_min, align 8
  %14 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %15 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* @log_split_max, align 8
  %17 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %18 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* @log_split_mod, align 8
  %20 = load i64, i64* @log_split_mod, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %10
  %23 = load i64, i64* @log_split_min, align 8
  %24 = icmp sge i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load i64, i64* @log_split_min, align 8
  %27 = add nsw i64 %26, 1
  %28 = load i64, i64* @log_split_max, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i64, i64* @log_split_max, align 8
  %32 = load i64, i64* @log_split_mod, align 8
  %33 = icmp sle i64 %31, %32
  br label %34

34:                                               ; preds = %30, %25, %22, %10
  %35 = phi i1 [ false, %25 ], [ false, %22 ], [ false, %10 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = call i32 (...) @try_init_local_uid()
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %34, %9
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @try_init_local_uid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
