; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-iolatency.c_iolatency_record_time.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-iolatency.c_iolatency_record_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iolatency_grp = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.bio_issue = type { i32 }

@UINT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iolatency_grp*, %struct.bio_issue*, i64, i32)* @iolatency_record_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iolatency_record_time(%struct.iolatency_grp* %0, %struct.bio_issue* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.iolatency_grp*, align 8
  %6 = alloca %struct.bio_issue*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.iolatency_grp* %0, %struct.iolatency_grp** %5, align 8
  store %struct.bio_issue* %1, %struct.bio_issue** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.bio_issue*, %struct.bio_issue** %6, align 8
  %13 = call i64 @bio_issue_time(%struct.bio_issue* %12)
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i64 @__bio_issue_time(i64 %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp sle i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %58

20:                                               ; preds = %4
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %9, align 8
  %23 = sub nsw i64 %21, %22
  store i64 %23, i64* %10, align 8
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load %struct.iolatency_grp*, %struct.iolatency_grp** %5, align 8
  %28 = getelementptr inbounds %struct.iolatency_grp, %struct.iolatency_grp* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @UINT_MAX, align 8
  %32 = icmp ne i64 %30, %31
  br label %33

33:                                               ; preds = %26, %20
  %34 = phi i1 [ false, %20 ], [ %32, %26 ]
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %33
  %39 = load %struct.iolatency_grp*, %struct.iolatency_grp** %5, align 8
  %40 = getelementptr inbounds %struct.iolatency_grp, %struct.iolatency_grp* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %11, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = load %struct.iolatency_grp*, %struct.iolatency_grp** %5, align 8
  %47 = call i32 @lat_to_blkg(%struct.iolatency_grp* %46)
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* %10, align 8
  %51 = sub nsw i64 %49, %50
  %52 = call i32 @blkcg_add_delay(i32 %47, i64 %48, i64 %51)
  br label %53

53:                                               ; preds = %45, %38
  br label %58

54:                                               ; preds = %33
  %55 = load %struct.iolatency_grp*, %struct.iolatency_grp** %5, align 8
  %56 = load i64, i64* %10, align 8
  %57 = call i32 @latency_stat_record_time(%struct.iolatency_grp* %55, i64 %56)
  br label %58

58:                                               ; preds = %54, %53, %19
  ret void
}

declare dso_local i64 @bio_issue_time(%struct.bio_issue*) #1

declare dso_local i64 @__bio_issue_time(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @blkcg_add_delay(i32, i64, i64) #1

declare dso_local i32 @lat_to_blkg(%struct.iolatency_grp*) #1

declare dso_local i32 @latency_stat_record_time(%struct.iolatency_grp*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
