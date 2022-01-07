; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_get_driver_tag.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_get_driver_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { %struct.request** }
%struct.blk_mq_alloc_data = type { %struct.TYPE_4__*, i32, i32, i32 }

@BLK_MQ_REQ_NOWAIT = common dso_local global i32 0, align 4
@BLK_MQ_REQ_RESERVED = common dso_local global i32 0, align 4
@RQF_MQ_INFLIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_mq_get_driver_tag(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca %struct.blk_mq_alloc_data, align 8
  %4 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %2, align 8
  %5 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %3, i32 0, i32 0
  %6 = load %struct.request*, %struct.request** %2, align 8
  %7 = getelementptr inbounds %struct.request, %struct.request* %6, i32 0, i32 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %5, align 8
  %9 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %3, i32 0, i32 1
  %10 = load i32, i32* @BLK_MQ_REQ_NOWAIT, align 4
  store i32 %10, i32* %9, align 8
  %11 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %3, i32 0, i32 2
  %12 = load %struct.request*, %struct.request** %2, align 8
  %13 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  %15 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %3, i32 0, i32 3
  %16 = load %struct.request*, %struct.request** %2, align 8
  %17 = getelementptr inbounds %struct.request, %struct.request* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %15, align 8
  %19 = load %struct.request*, %struct.request** %2, align 8
  %20 = getelementptr inbounds %struct.request, %struct.request* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %77

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %3, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.request*, %struct.request** %2, align 8
  %30 = getelementptr inbounds %struct.request, %struct.request* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @blk_mq_tag_is_reserved(i32 %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load i32, i32* @BLK_MQ_REQ_RESERVED, align 4
  %36 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %3, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %34, %24
  %40 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %3, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = call i32 @blk_mq_tag_busy(%struct.TYPE_4__* %41)
  store i32 %42, i32* %4, align 4
  %43 = call i32 @blk_mq_get_tag(%struct.blk_mq_alloc_data* %3)
  %44 = load %struct.request*, %struct.request** %2, align 8
  %45 = getelementptr inbounds %struct.request, %struct.request* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.request*, %struct.request** %2, align 8
  %47 = getelementptr inbounds %struct.request, %struct.request* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %76

50:                                               ; preds = %39
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %50
  %54 = load i32, i32* @RQF_MQ_INFLIGHT, align 4
  %55 = load %struct.request*, %struct.request** %2, align 8
  %56 = getelementptr inbounds %struct.request, %struct.request* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %3, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = call i32 @atomic_inc(i32* %61)
  br label %63

63:                                               ; preds = %53, %50
  %64 = load %struct.request*, %struct.request** %2, align 8
  %65 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %3, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load %struct.request**, %struct.request*** %69, align 8
  %71 = load %struct.request*, %struct.request** %2, align 8
  %72 = getelementptr inbounds %struct.request, %struct.request* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.request*, %struct.request** %70, i64 %74
  store %struct.request* %64, %struct.request** %75, align 8
  br label %76

76:                                               ; preds = %63, %39
  br label %77

77:                                               ; preds = %76, %23
  %78 = load %struct.request*, %struct.request** %2, align 8
  %79 = getelementptr inbounds %struct.request, %struct.request* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, -1
  %82 = zext i1 %81 to i32
  ret i32 %82
}

declare dso_local i64 @blk_mq_tag_is_reserved(i32, i32) #1

declare dso_local i32 @blk_mq_tag_busy(%struct.TYPE_4__*) #1

declare dso_local i32 @blk_mq_get_tag(%struct.blk_mq_alloc_data*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
