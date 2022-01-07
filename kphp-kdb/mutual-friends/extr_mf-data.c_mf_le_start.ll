; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-data.c_mf_le_start.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-data.c_mf_le_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_start = type { i32, i64, i64, i64 }

@MF_SCHEMA_V1 = common dso_local global i64 0, align 8
@log_split_min = common dso_local global i64 0, align 8
@log_split_max = common dso_local global i64 0, align 8
@log_split_mod = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_start*)* @mf_le_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mf_le_start(%struct.lev_start* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lev_start*, align 8
  store %struct.lev_start* %0, %struct.lev_start** %3, align 8
  %4 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %5 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i64, i64* @MF_SCHEMA_V1, align 8
  %8 = trunc i64 %7 to i32
  %9 = icmp ne i32 %6, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %40

11:                                               ; preds = %1
  %12 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %13 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* @log_split_min, align 8
  %15 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %16 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* @log_split_max, align 8
  %18 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %19 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* @log_split_mod, align 8
  %21 = load i64, i64* @log_split_mod, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %11
  %24 = load i64, i64* @log_split_min, align 8
  %25 = icmp sge i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load i64, i64* @log_split_min, align 8
  %28 = add nsw i64 %27, 1
  %29 = load i64, i64* @log_split_max, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i64, i64* @log_split_max, align 8
  %33 = load i64, i64* @log_split_mod, align 8
  %34 = icmp sle i64 %32, %33
  br label %35

35:                                               ; preds = %31, %26, %23, %11
  %36 = phi i1 [ false, %26 ], [ false, %23 ], [ false, %11 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = call i32 (...) @try_init_local_uid()
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %35, %10
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @try_init_local_uid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
