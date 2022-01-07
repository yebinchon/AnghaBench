; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq-tag.c_bt_tags_iter.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq-tag.c_bt_tags_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbitmap = type { i32 }
%struct.bt_tags_iter_data = type { i32, i32 (%struct.request*, i32, i32)*, i32, %struct.blk_mq_tags* }
%struct.request = type { i32 }
%struct.blk_mq_tags = type { %struct.request**, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbitmap*, i32, i8*)* @bt_tags_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt_tags_iter(%struct.sbitmap* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sbitmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.bt_tags_iter_data*, align 8
  %9 = alloca %struct.blk_mq_tags*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.request*, align 8
  store %struct.sbitmap* %0, %struct.sbitmap** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.bt_tags_iter_data*
  store %struct.bt_tags_iter_data* %13, %struct.bt_tags_iter_data** %8, align 8
  %14 = load %struct.bt_tags_iter_data*, %struct.bt_tags_iter_data** %8, align 8
  %15 = getelementptr inbounds %struct.bt_tags_iter_data, %struct.bt_tags_iter_data* %14, i32 0, i32 3
  %16 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %15, align 8
  store %struct.blk_mq_tags* %16, %struct.blk_mq_tags** %9, align 8
  %17 = load %struct.bt_tags_iter_data*, %struct.bt_tags_iter_data** %8, align 8
  %18 = getelementptr inbounds %struct.bt_tags_iter_data, %struct.bt_tags_iter_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %3
  %23 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %9, align 8
  %24 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = add nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %22, %3
  %31 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %9, align 8
  %32 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %31, i32 0, i32 0
  %33 = load %struct.request**, %struct.request*** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.request*, %struct.request** %33, i64 %35
  %37 = load %struct.request*, %struct.request** %36, align 8
  store %struct.request* %37, %struct.request** %11, align 8
  %38 = load %struct.request*, %struct.request** %11, align 8
  %39 = icmp ne %struct.request* %38, null
  br i1 %39, label %40, label %54

40:                                               ; preds = %30
  %41 = load %struct.request*, %struct.request** %11, align 8
  %42 = call i64 @blk_mq_request_started(%struct.request* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = load %struct.bt_tags_iter_data*, %struct.bt_tags_iter_data** %8, align 8
  %46 = getelementptr inbounds %struct.bt_tags_iter_data, %struct.bt_tags_iter_data* %45, i32 0, i32 1
  %47 = load i32 (%struct.request*, i32, i32)*, i32 (%struct.request*, i32, i32)** %46, align 8
  %48 = load %struct.request*, %struct.request** %11, align 8
  %49 = load %struct.bt_tags_iter_data*, %struct.bt_tags_iter_data** %8, align 8
  %50 = getelementptr inbounds %struct.bt_tags_iter_data, %struct.bt_tags_iter_data* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 %47(%struct.request* %48, i32 %51, i32 %52)
  store i32 %53, i32* %4, align 4
  br label %55

54:                                               ; preds = %40, %30
  store i32 1, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %44
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i64 @blk_mq_request_started(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
