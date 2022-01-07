; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-stat.c_blk_rq_stat_sum.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-stat.c_blk_rq_stat_sum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_rq_stat = type { i32, i32, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_rq_stat_sum(%struct.blk_rq_stat* %0, %struct.blk_rq_stat* %1) #0 {
  %3 = alloca %struct.blk_rq_stat*, align 8
  %4 = alloca %struct.blk_rq_stat*, align 8
  store %struct.blk_rq_stat* %0, %struct.blk_rq_stat** %3, align 8
  store %struct.blk_rq_stat* %1, %struct.blk_rq_stat** %4, align 8
  %5 = load %struct.blk_rq_stat*, %struct.blk_rq_stat** %4, align 8
  %6 = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %58

10:                                               ; preds = %2
  %11 = load %struct.blk_rq_stat*, %struct.blk_rq_stat** %3, align 8
  %12 = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.blk_rq_stat*, %struct.blk_rq_stat** %4, align 8
  %15 = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @min(i32 %13, i32 %16)
  %18 = load %struct.blk_rq_stat*, %struct.blk_rq_stat** %3, align 8
  %19 = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  %20 = load %struct.blk_rq_stat*, %struct.blk_rq_stat** %3, align 8
  %21 = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.blk_rq_stat*, %struct.blk_rq_stat** %4, align 8
  %24 = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @max(i32 %22, i32 %25)
  %27 = load %struct.blk_rq_stat*, %struct.blk_rq_stat** %3, align 8
  %28 = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load %struct.blk_rq_stat*, %struct.blk_rq_stat** %4, align 8
  %30 = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.blk_rq_stat*, %struct.blk_rq_stat** %3, align 8
  %33 = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.blk_rq_stat*, %struct.blk_rq_stat** %3, align 8
  %36 = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 %34, %37
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %31, %39
  %41 = load %struct.blk_rq_stat*, %struct.blk_rq_stat** %3, align 8
  %42 = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.blk_rq_stat*, %struct.blk_rq_stat** %4, align 8
  %45 = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %43, %46
  %48 = call i32 @div_u64(i64 %40, i32 %47)
  %49 = load %struct.blk_rq_stat*, %struct.blk_rq_stat** %3, align 8
  %50 = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.blk_rq_stat*, %struct.blk_rq_stat** %4, align 8
  %52 = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.blk_rq_stat*, %struct.blk_rq_stat** %3, align 8
  %55 = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @div_u64(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
