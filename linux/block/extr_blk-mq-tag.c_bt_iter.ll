; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq-tag.c_bt_iter.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq-tag.c_bt_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbitmap = type { i32 }
%struct.bt_iter_data = type { i32, i32 (%struct.blk_mq_hw_ctx*, %struct.request*, i32, i32)*, i32, %struct.blk_mq_hw_ctx.0* }
%struct.blk_mq_hw_ctx = type opaque
%struct.request = type { i64 }
%struct.blk_mq_hw_ctx.0 = type { i64, %struct.blk_mq_tags* }
%struct.blk_mq_tags = type { %struct.request**, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbitmap*, i32, i8*)* @bt_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt_iter(%struct.sbitmap* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sbitmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.bt_iter_data*, align 8
  %9 = alloca %struct.blk_mq_hw_ctx.0*, align 8
  %10 = alloca %struct.blk_mq_tags*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.request*, align 8
  store %struct.sbitmap* %0, %struct.sbitmap** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.bt_iter_data*
  store %struct.bt_iter_data* %14, %struct.bt_iter_data** %8, align 8
  %15 = load %struct.bt_iter_data*, %struct.bt_iter_data** %8, align 8
  %16 = getelementptr inbounds %struct.bt_iter_data, %struct.bt_iter_data* %15, i32 0, i32 3
  %17 = load %struct.blk_mq_hw_ctx.0*, %struct.blk_mq_hw_ctx.0** %16, align 8
  store %struct.blk_mq_hw_ctx.0* %17, %struct.blk_mq_hw_ctx.0** %9, align 8
  %18 = load %struct.blk_mq_hw_ctx.0*, %struct.blk_mq_hw_ctx.0** %9, align 8
  %19 = getelementptr inbounds %struct.blk_mq_hw_ctx.0, %struct.blk_mq_hw_ctx.0* %18, i32 0, i32 1
  %20 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %19, align 8
  store %struct.blk_mq_tags* %20, %struct.blk_mq_tags** %10, align 8
  %21 = load %struct.bt_iter_data*, %struct.bt_iter_data** %8, align 8
  %22 = getelementptr inbounds %struct.bt_iter_data, %struct.bt_iter_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %3
  %27 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %10, align 8
  %28 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %26, %3
  %35 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %10, align 8
  %36 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %35, i32 0, i32 0
  %37 = load %struct.request**, %struct.request*** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.request*, %struct.request** %37, i64 %39
  %41 = load %struct.request*, %struct.request** %40, align 8
  store %struct.request* %41, %struct.request** %12, align 8
  %42 = load %struct.request*, %struct.request** %12, align 8
  %43 = icmp ne %struct.request* %42, null
  br i1 %43, label %44, label %64

44:                                               ; preds = %34
  %45 = load %struct.request*, %struct.request** %12, align 8
  %46 = getelementptr inbounds %struct.request, %struct.request* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.blk_mq_hw_ctx.0*, %struct.blk_mq_hw_ctx.0** %9, align 8
  %49 = getelementptr inbounds %struct.blk_mq_hw_ctx.0, %struct.blk_mq_hw_ctx.0* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %44
  %53 = load %struct.bt_iter_data*, %struct.bt_iter_data** %8, align 8
  %54 = getelementptr inbounds %struct.bt_iter_data, %struct.bt_iter_data* %53, i32 0, i32 1
  %55 = load i32 (%struct.blk_mq_hw_ctx*, %struct.request*, i32, i32)*, i32 (%struct.blk_mq_hw_ctx*, %struct.request*, i32, i32)** %54, align 8
  %56 = load %struct.blk_mq_hw_ctx.0*, %struct.blk_mq_hw_ctx.0** %9, align 8
  %57 = bitcast %struct.blk_mq_hw_ctx.0* %56 to %struct.blk_mq_hw_ctx*
  %58 = load %struct.request*, %struct.request** %12, align 8
  %59 = load %struct.bt_iter_data*, %struct.bt_iter_data** %8, align 8
  %60 = getelementptr inbounds %struct.bt_iter_data, %struct.bt_iter_data* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 %55(%struct.blk_mq_hw_ctx* %57, %struct.request* %58, i32 %61, i32 %62)
  store i32 %63, i32* %4, align 4
  br label %65

64:                                               ; preds = %44, %34
  store i32 1, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %52
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
