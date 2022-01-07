; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-iolatency.c_iolatency_pd_stat.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-iolatency.c_iolatency_pd_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkg_policy_data = type { i32 }
%struct.iolatency_grp = type { %struct.TYPE_2__, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@blkcg_debug_stats = common dso_local global i32 0, align 4
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@NSEC_PER_MSEC = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c" depth=max avg_lat=%llu win=%llu\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c" depth=%u avg_lat=%llu win=%llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.blkg_policy_data*, i8*, i64)* @iolatency_pd_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iolatency_pd_stat(%struct.blkg_policy_data* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.blkg_policy_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.iolatency_grp*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.blkg_policy_data* %0, %struct.blkg_policy_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.blkg_policy_data*, %struct.blkg_policy_data** %5, align 8
  %12 = call %struct.iolatency_grp* @pd_to_lat(%struct.blkg_policy_data* %11)
  store %struct.iolatency_grp* %12, %struct.iolatency_grp** %8, align 8
  %13 = load i32, i32* @blkcg_debug_stats, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %60

16:                                               ; preds = %3
  %17 = load %struct.iolatency_grp*, %struct.iolatency_grp** %8, align 8
  %18 = getelementptr inbounds %struct.iolatency_grp, %struct.iolatency_grp* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.iolatency_grp*, %struct.iolatency_grp** %8, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i64 @iolatency_ssd_stat(%struct.iolatency_grp* %22, i8* %23, i64 %24)
  store i64 %25, i64* %4, align 8
  br label %60

26:                                               ; preds = %16
  %27 = load %struct.iolatency_grp*, %struct.iolatency_grp** %8, align 8
  %28 = getelementptr inbounds %struct.iolatency_grp, %struct.iolatency_grp* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @NSEC_PER_USEC, align 4
  %31 = call i64 @div64_u64(i32 %29, i32 %30)
  store i64 %31, i64* %9, align 8
  %32 = load %struct.iolatency_grp*, %struct.iolatency_grp** %8, align 8
  %33 = getelementptr inbounds %struct.iolatency_grp, %struct.iolatency_grp* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @NSEC_PER_MSEC, align 4
  %36 = call i64 @div64_u64(i32 %34, i32 %35)
  store i64 %36, i64* %10, align 8
  %37 = load %struct.iolatency_grp*, %struct.iolatency_grp** %8, align 8
  %38 = getelementptr inbounds %struct.iolatency_grp, %struct.iolatency_grp* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @UINT_MAX, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %26
  %44 = load i8*, i8** %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i64 (i8*, i64, i8*, i64, i64, ...) @scnprintf(i8* %44, i64 %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %46, i64 %47)
  store i64 %48, i64* %4, align 8
  br label %60

49:                                               ; preds = %26
  %50 = load i8*, i8** %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.iolatency_grp*, %struct.iolatency_grp** %8, align 8
  %53 = getelementptr inbounds %struct.iolatency_grp, %struct.iolatency_grp* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %10, align 8
  %59 = call i64 (i8*, i64, i8*, i64, i64, ...) @scnprintf(i8* %50, i64 %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %56, i64 %57, i64 %58)
  store i64 %59, i64* %4, align 8
  br label %60

60:                                               ; preds = %49, %43, %21, %15
  %61 = load i64, i64* %4, align 8
  ret i64 %61
}

declare dso_local %struct.iolatency_grp* @pd_to_lat(%struct.blkg_policy_data*) #1

declare dso_local i64 @iolatency_ssd_stat(%struct.iolatency_grp*, i8*, i64) #1

declare dso_local i64 @div64_u64(i32, i32) #1

declare dso_local i64 @scnprintf(i8*, i64, i8*, i64, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
