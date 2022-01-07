; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_alloc_rq_maps.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_alloc_rq_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_tag_set = type { i32, i32 }

@BLK_MQ_TAG_MIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"blk-mq: failed to allocate request map\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"blk-mq: reduced tag depth (%u -> %u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_tag_set*)* @blk_mq_alloc_rq_maps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blk_mq_alloc_rq_maps(%struct.blk_mq_tag_set* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.blk_mq_tag_set*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.blk_mq_tag_set* %0, %struct.blk_mq_tag_set** %3, align 8
  %6 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %7 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  br label %9

9:                                                ; preds = %33, %1
  %10 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %11 = call i32 @__blk_mq_alloc_rq_maps(%struct.blk_mq_tag_set* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  br label %38

15:                                               ; preds = %9
  %16 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %17 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = lshr i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %21 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %24 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @BLK_MQ_TAG_MIN, align 4
  %27 = add nsw i32 %25, %26
  %28 = icmp ult i32 %22, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %15
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %38

32:                                               ; preds = %15
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %35 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %9, label %38

38:                                               ; preds = %33, %29, %14
  %39 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %40 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43, %38
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %63

50:                                               ; preds = %43
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %53 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %51, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %59 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %60)
  br label %62

62:                                               ; preds = %56, %50
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %46
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @__blk_mq_alloc_rq_maps(%struct.blk_mq_tag_set*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
