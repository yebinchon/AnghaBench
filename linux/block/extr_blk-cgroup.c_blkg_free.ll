; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-cgroup.c_blkg_free.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-cgroup.c_blkg_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i64)* }
%struct.blkcg_gq = type { i32, i32, i32, i64* }

@BLKCG_MAX_POLS = common dso_local global i32 0, align 4
@blkcg_policy = common dso_local global %struct.TYPE_2__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blkcg_gq*)* @blkg_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blkg_free(%struct.blkcg_gq* %0) #0 {
  %2 = alloca %struct.blkcg_gq*, align 8
  %3 = alloca i32, align 4
  store %struct.blkcg_gq* %0, %struct.blkcg_gq** %2, align 8
  %4 = load %struct.blkcg_gq*, %struct.blkcg_gq** %2, align 8
  %5 = icmp ne %struct.blkcg_gq* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %53

7:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %38, %7
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @BLKCG_MAX_POLS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %41

12:                                               ; preds = %8
  %13 = load %struct.blkcg_gq*, %struct.blkcg_gq** %2, align 8
  %14 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %13, i32 0, i32 3
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %12
  %22 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @blkcg_policy, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %22, i64 %24
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (i64)*, i32 (i64)** %27, align 8
  %29 = load %struct.blkcg_gq*, %struct.blkcg_gq** %2, align 8
  %30 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %29, i32 0, i32 3
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = call i32 %28(i64 %35)
  br label %37

37:                                               ; preds = %21, %12
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %8

41:                                               ; preds = %8
  %42 = load %struct.blkcg_gq*, %struct.blkcg_gq** %2, align 8
  %43 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %42, i32 0, i32 2
  %44 = call i32 @blkg_rwstat_exit(i32* %43)
  %45 = load %struct.blkcg_gq*, %struct.blkcg_gq** %2, align 8
  %46 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %45, i32 0, i32 1
  %47 = call i32 @blkg_rwstat_exit(i32* %46)
  %48 = load %struct.blkcg_gq*, %struct.blkcg_gq** %2, align 8
  %49 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %48, i32 0, i32 0
  %50 = call i32 @percpu_ref_exit(i32* %49)
  %51 = load %struct.blkcg_gq*, %struct.blkcg_gq** %2, align 8
  %52 = call i32 @kfree(%struct.blkcg_gq* %51)
  br label %53

53:                                               ; preds = %41, %6
  ret void
}

declare dso_local i32 @blkg_rwstat_exit(i32*) #1

declare dso_local i32 @percpu_ref_exit(i32*) #1

declare dso_local i32 @kfree(%struct.blkcg_gq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
