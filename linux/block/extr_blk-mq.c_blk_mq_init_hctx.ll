; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_init_hctx.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_init_hctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.blk_mq_tag_set = type { %struct.TYPE_4__*, i32, i32* }
%struct.TYPE_4__ = type { i32 (%struct.blk_mq_hw_ctx*, i32)*, i64 (%struct.blk_mq_hw_ctx*, i32, i32)* }
%struct.blk_mq_hw_ctx = type { i32, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@CPUHP_BLK_MQ_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.blk_mq_tag_set*, %struct.blk_mq_hw_ctx*, i32)* @blk_mq_init_hctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blk_mq_init_hctx(%struct.request_queue* %0, %struct.blk_mq_tag_set* %1, %struct.blk_mq_hw_ctx* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca %struct.blk_mq_tag_set*, align 8
  %8 = alloca %struct.blk_mq_hw_ctx*, align 8
  %9 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %6, align 8
  store %struct.blk_mq_tag_set* %1, %struct.blk_mq_tag_set** %7, align 8
  store %struct.blk_mq_hw_ctx* %2, %struct.blk_mq_hw_ctx** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %12 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @CPUHP_BLK_MQ_DEAD, align 4
  %14 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %15 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %14, i32 0, i32 4
  %16 = call i32 @cpuhp_state_add_instance_nocalls(i32 %13, i32* %15)
  %17 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %18 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %25 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %27 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64 (%struct.blk_mq_hw_ctx*, i32, i32)*, i64 (%struct.blk_mq_hw_ctx*, i32, i32)** %29, align 8
  %31 = icmp ne i64 (%struct.blk_mq_hw_ctx*, i32, i32)* %30, null
  br i1 %31, label %32, label %46

32:                                               ; preds = %4
  %33 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %34 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64 (%struct.blk_mq_hw_ctx*, i32, i32)*, i64 (%struct.blk_mq_hw_ctx*, i32, i32)** %36, align 8
  %38 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %39 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %40 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i64 %37(%struct.blk_mq_hw_ctx* %38, i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  br label %78

46:                                               ; preds = %32, %4
  %47 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %48 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %49 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %48, i32 0, i32 2
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %55 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @blk_mq_init_request(%struct.blk_mq_tag_set* %47, i32 %52, i32 %53, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  br label %61

60:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %81

61:                                               ; preds = %59
  %62 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %63 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32 (%struct.blk_mq_hw_ctx*, i32)*, i32 (%struct.blk_mq_hw_ctx*, i32)** %65, align 8
  %67 = icmp ne i32 (%struct.blk_mq_hw_ctx*, i32)* %66, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %61
  %69 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %70 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32 (%struct.blk_mq_hw_ctx*, i32)*, i32 (%struct.blk_mq_hw_ctx*, i32)** %72, align 8
  %74 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 %73(%struct.blk_mq_hw_ctx* %74, i32 %75)
  br label %77

77:                                               ; preds = %68, %61
  br label %78

78:                                               ; preds = %77, %45
  %79 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %80 = call i32 @blk_mq_remove_cpuhp(%struct.blk_mq_hw_ctx* %79)
  store i32 -1, i32* %5, align 4
  br label %81

81:                                               ; preds = %78, %60
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @cpuhp_state_add_instance_nocalls(i32, i32*) #1

declare dso_local i64 @blk_mq_init_request(%struct.blk_mq_tag_set*, i32, i32, i32) #1

declare dso_local i32 @blk_mq_remove_cpuhp(%struct.blk_mq_hw_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
