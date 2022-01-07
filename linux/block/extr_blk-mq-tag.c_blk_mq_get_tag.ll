; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq-tag.c_blk_mq_get_tag.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq-tag.c_blk_mq_get_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_alloc_data = type { i32, i32, i32, i32, i32 }
%struct.blk_mq_tags = type { i32, %struct.sbitmap_queue, %struct.sbitmap_queue }
%struct.sbitmap_queue = type { i32 }
%struct.sbq_wait_state = type { i32 }

@wait = common dso_local global i32 0, align 4
@BLK_MQ_REQ_RESERVED = common dso_local global i32 0, align 4
@BLK_MQ_TAG_FAIL = common dso_local global i32 0, align 4
@BLK_MQ_REQ_NOWAIT = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_mq_get_tag(%struct.blk_mq_alloc_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.blk_mq_alloc_data*, align 8
  %4 = alloca %struct.blk_mq_tags*, align 8
  %5 = alloca %struct.sbitmap_queue*, align 8
  %6 = alloca %struct.sbq_wait_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sbitmap_queue*, align 8
  store %struct.blk_mq_alloc_data* %0, %struct.blk_mq_alloc_data** %3, align 8
  %10 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %3, align 8
  %11 = call %struct.blk_mq_tags* @blk_mq_tags_from_data(%struct.blk_mq_alloc_data* %10)
  store %struct.blk_mq_tags* %11, %struct.blk_mq_tags** %4, align 8
  %12 = load i32, i32* @wait, align 4
  %13 = call i32 @DEFINE_SBQ_WAIT(i32 %12)
  %14 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %3, align 8
  %15 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @BLK_MQ_REQ_RESERVED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %1
  %21 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %4, align 8
  %22 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = call i32 @WARN_ON_ONCE(i32 1)
  %31 = load i32, i32* @BLK_MQ_TAG_FAIL, align 4
  store i32 %31, i32* %2, align 4
  br label %145

32:                                               ; preds = %20
  %33 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %4, align 8
  %34 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %33, i32 0, i32 2
  store %struct.sbitmap_queue* %34, %struct.sbitmap_queue** %5, align 8
  store i32 0, i32* %7, align 4
  br label %41

35:                                               ; preds = %1
  %36 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %4, align 8
  %37 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %36, i32 0, i32 1
  store %struct.sbitmap_queue* %37, %struct.sbitmap_queue** %5, align 8
  %38 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %4, align 8
  %39 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %35, %32
  %42 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %3, align 8
  %43 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %5, align 8
  %44 = call i32 @__blk_mq_get_tag(%struct.blk_mq_alloc_data* %42, %struct.sbitmap_queue* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %141

48:                                               ; preds = %41
  %49 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %3, align 8
  %50 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @BLK_MQ_REQ_NOWAIT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* @BLK_MQ_TAG_FAIL, align 4
  store i32 %56, i32* %2, align 4
  br label %145

57:                                               ; preds = %48
  %58 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %5, align 8
  %59 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %3, align 8
  %60 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.sbq_wait_state* @bt_wait_ptr(%struct.sbitmap_queue* %58, i32 %61)
  store %struct.sbq_wait_state* %62, %struct.sbq_wait_state** %6, align 8
  br label %63

63:                                               ; preds = %136, %57
  %64 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %3, align 8
  %65 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @blk_mq_run_hw_queue(i32 %66, i32 0)
  %68 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %3, align 8
  %69 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %5, align 8
  %70 = call i32 @__blk_mq_get_tag(%struct.blk_mq_alloc_data* %68, %struct.sbitmap_queue* %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, -1
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  br label %137

74:                                               ; preds = %63
  %75 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %5, align 8
  %76 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %6, align 8
  %77 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %78 = call i32 @sbitmap_prepare_to_wait(%struct.sbitmap_queue* %75, %struct.sbq_wait_state* %76, i32* @wait, i32 %77)
  %79 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %3, align 8
  %80 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %5, align 8
  %81 = call i32 @__blk_mq_get_tag(%struct.blk_mq_alloc_data* %79, %struct.sbitmap_queue* %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, -1
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  br label %137

85:                                               ; preds = %74
  %86 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %5, align 8
  store %struct.sbitmap_queue* %86, %struct.sbitmap_queue** %9, align 8
  %87 = call i32 (...) @io_schedule()
  %88 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %5, align 8
  %89 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %6, align 8
  %90 = call i32 @sbitmap_finish_wait(%struct.sbitmap_queue* %88, %struct.sbq_wait_state* %89, i32* @wait)
  %91 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %3, align 8
  %92 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @blk_mq_get_ctx(i32 %93)
  %95 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %3, align 8
  %96 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 4
  %97 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %3, align 8
  %98 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %3, align 8
  %101 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %3, align 8
  %104 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @blk_mq_map_queue(i32 %99, i32 %102, i32 %105)
  %107 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %3, align 8
  %108 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %3, align 8
  %110 = call %struct.blk_mq_tags* @blk_mq_tags_from_data(%struct.blk_mq_alloc_data* %109)
  store %struct.blk_mq_tags* %110, %struct.blk_mq_tags** %4, align 8
  %111 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %3, align 8
  %112 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @BLK_MQ_REQ_RESERVED, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %85
  %118 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %4, align 8
  %119 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %118, i32 0, i32 2
  store %struct.sbitmap_queue* %119, %struct.sbitmap_queue** %5, align 8
  br label %123

120:                                              ; preds = %85
  %121 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %4, align 8
  %122 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %121, i32 0, i32 1
  store %struct.sbitmap_queue* %122, %struct.sbitmap_queue** %5, align 8
  br label %123

123:                                              ; preds = %120, %117
  %124 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %5, align 8
  %125 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %9, align 8
  %126 = icmp ne %struct.sbitmap_queue* %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %9, align 8
  %129 = call i32 @sbitmap_queue_wake_up(%struct.sbitmap_queue* %128)
  br label %130

130:                                              ; preds = %127, %123
  %131 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %5, align 8
  %132 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %3, align 8
  %133 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call %struct.sbq_wait_state* @bt_wait_ptr(%struct.sbitmap_queue* %131, i32 %134)
  store %struct.sbq_wait_state* %135, %struct.sbq_wait_state** %6, align 8
  br label %136

136:                                              ; preds = %130
  br i1 true, label %63, label %137

137:                                              ; preds = %136, %84, %73
  %138 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %5, align 8
  %139 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %6, align 8
  %140 = call i32 @sbitmap_finish_wait(%struct.sbitmap_queue* %138, %struct.sbq_wait_state* %139, i32* @wait)
  br label %141

141:                                              ; preds = %137, %47
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %7, align 4
  %144 = add i32 %142, %143
  store i32 %144, i32* %2, align 4
  br label %145

145:                                              ; preds = %141, %55, %29
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local %struct.blk_mq_tags* @blk_mq_tags_from_data(%struct.blk_mq_alloc_data*) #1

declare dso_local i32 @DEFINE_SBQ_WAIT(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @__blk_mq_get_tag(%struct.blk_mq_alloc_data*, %struct.sbitmap_queue*) #1

declare dso_local %struct.sbq_wait_state* @bt_wait_ptr(%struct.sbitmap_queue*, i32) #1

declare dso_local i32 @blk_mq_run_hw_queue(i32, i32) #1

declare dso_local i32 @sbitmap_prepare_to_wait(%struct.sbitmap_queue*, %struct.sbq_wait_state*, i32*, i32) #1

declare dso_local i32 @io_schedule(...) #1

declare dso_local i32 @sbitmap_finish_wait(%struct.sbitmap_queue*, %struct.sbq_wait_state*, i32*) #1

declare dso_local i32 @blk_mq_get_ctx(i32) #1

declare dso_local i32 @blk_mq_map_queue(i32, i32, i32) #1

declare dso_local i32 @sbitmap_queue_wake_up(%struct.sbitmap_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
