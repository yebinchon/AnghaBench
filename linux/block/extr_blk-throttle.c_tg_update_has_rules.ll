; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_tg_update_has_rules.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_tg_update_has_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_grp = type { i32*, %struct.throtl_data*, %struct.TYPE_2__ }
%struct.throtl_data = type { i64, i64* }
%struct.TYPE_2__ = type { i32 }

@READ = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@U64_MAX = common dso_local global i64 0, align 8
@UINT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.throtl_grp*)* @tg_update_has_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg_update_has_rules(%struct.throtl_grp* %0) #0 {
  %2 = alloca %struct.throtl_grp*, align 8
  %3 = alloca %struct.throtl_grp*, align 8
  %4 = alloca %struct.throtl_data*, align 8
  %5 = alloca i32, align 4
  store %struct.throtl_grp* %0, %struct.throtl_grp** %2, align 8
  %6 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %7 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.throtl_grp* @sq_to_tg(i32 %9)
  store %struct.throtl_grp* %10, %struct.throtl_grp** %3, align 8
  %11 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %12 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %11, i32 0, i32 1
  %13 = load %struct.throtl_data*, %struct.throtl_data** %12, align 8
  store %struct.throtl_data* %13, %struct.throtl_data** %4, align 8
  %14 = load i32, i32* @READ, align 4
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %66, %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @WRITE, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %69

19:                                               ; preds = %15
  %20 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %21 = icmp ne %struct.throtl_grp* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %24 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %57, label %31

31:                                               ; preds = %22, %19
  %32 = load %struct.throtl_data*, %struct.throtl_data** %4, align 8
  %33 = getelementptr inbounds %struct.throtl_data, %struct.throtl_data* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = load %struct.throtl_data*, %struct.throtl_data** %4, align 8
  %36 = getelementptr inbounds %struct.throtl_data, %struct.throtl_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i64, i64* %34, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %31
  %42 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @tg_bps_limit(%struct.throtl_grp* %42, i32 %43)
  %45 = load i64, i64* @U64_MAX, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i64 @tg_iops_limit(%struct.throtl_grp* %48, i32 %49)
  %51 = load i64, i64* @UINT_MAX, align 8
  %52 = icmp ne i64 %50, %51
  br label %53

53:                                               ; preds = %47, %41
  %54 = phi i1 [ true, %41 ], [ %52, %47 ]
  br label %55

55:                                               ; preds = %53, %31
  %56 = phi i1 [ false, %31 ], [ %54, %53 ]
  br label %57

57:                                               ; preds = %55, %22
  %58 = phi i1 [ true, %22 ], [ %56, %55 ]
  %59 = zext i1 %58 to i32
  %60 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %61 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %59, i32* %65, align 4
  br label %66

66:                                               ; preds = %57
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %15

69:                                               ; preds = %15
  ret void
}

declare dso_local %struct.throtl_grp* @sq_to_tg(i32) #1

declare dso_local i64 @tg_bps_limit(%struct.throtl_grp*, i32) #1

declare dso_local i64 @tg_iops_limit(%struct.throtl_grp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
