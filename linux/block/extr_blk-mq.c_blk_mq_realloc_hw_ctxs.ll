; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_realloc_hw_ctxs.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_realloc_hw_ctxs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_tag_set = type { i32, i32* }
%struct.request_queue = type { i32, i32, %struct.blk_mq_hw_ctx** }
%struct.blk_mq_hw_ctx = type { i32, i64 }

@HCTX_TYPE_DEFAULT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [78 x i8] c"Allocate new hctx on node %d fails,\09\09\09\09\09\09fallback to previous one on node %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blk_mq_tag_set*, %struct.request_queue*)* @blk_mq_realloc_hw_ctxs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blk_mq_realloc_hw_ctxs(%struct.blk_mq_tag_set* %0, %struct.request_queue* %1) #0 {
  %3 = alloca %struct.blk_mq_tag_set*, align 8
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.blk_mq_hw_ctx**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.blk_mq_hw_ctx*, align 8
  %11 = alloca %struct.blk_mq_hw_ctx*, align 8
  store %struct.blk_mq_tag_set* %0, %struct.blk_mq_tag_set** %3, align 8
  store %struct.request_queue* %1, %struct.request_queue** %4, align 8
  %12 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %13 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %12, i32 0, i32 2
  %14 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %13, align 8
  store %struct.blk_mq_hw_ctx** %14, %struct.blk_mq_hw_ctx*** %8, align 8
  %15 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %16 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %100, %2
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %21 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %103

24:                                               ; preds = %18
  %25 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %26 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @HCTX_TYPE_DEFAULT, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @blk_mq_hw_queue_to_node(i32* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %8, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %32, i64 %34
  %36 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %35, align 8
  %37 = icmp ne %struct.blk_mq_hw_ctx* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %24
  %39 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %8, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %39, i64 %41
  %43 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %42, align 8
  %44 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %100

49:                                               ; preds = %38, %24
  %50 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %51 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call %struct.blk_mq_hw_ctx* @blk_mq_alloc_and_init_hctx(%struct.blk_mq_tag_set* %50, %struct.request_queue* %51, i32 %52, i32 %53)
  store %struct.blk_mq_hw_ctx* %54, %struct.blk_mq_hw_ctx** %10, align 8
  %55 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %10, align 8
  %56 = icmp ne %struct.blk_mq_hw_ctx* %55, null
  br i1 %56, label %57, label %80

57:                                               ; preds = %49
  %58 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %8, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %58, i64 %60
  %62 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %61, align 8
  %63 = icmp ne %struct.blk_mq_hw_ctx* %62, null
  br i1 %63, label %64, label %74

64:                                               ; preds = %57
  %65 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %66 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %67 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %8, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %67, i64 %69
  %71 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @blk_mq_exit_hctx(%struct.request_queue* %65, %struct.blk_mq_tag_set* %66, %struct.blk_mq_hw_ctx* %71, i32 %72)
  br label %74

74:                                               ; preds = %64, %57
  %75 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %10, align 8
  %76 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %8, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %76, i64 %78
  store %struct.blk_mq_hw_ctx* %75, %struct.blk_mq_hw_ctx** %79, align 8
  br label %99

80:                                               ; preds = %49
  %81 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %8, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %81, i64 %83
  %85 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %84, align 8
  %86 = icmp ne %struct.blk_mq_hw_ctx* %85, null
  br i1 %86, label %87, label %97

87:                                               ; preds = %80
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %8, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %89, i64 %91
  %93 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %92, align 8
  %94 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @pr_warn(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %88, i32 %95)
  br label %98

97:                                               ; preds = %80
  br label %103

98:                                               ; preds = %87
  br label %99

99:                                               ; preds = %98, %74
  br label %100

100:                                              ; preds = %99, %48
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %5, align 4
  br label %18

103:                                              ; preds = %97, %18
  %104 = load i32, i32* %5, align 4
  %105 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %106 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %104, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %103
  %110 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %111 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %5, align 4
  store i32 %113, i32* %7, align 4
  br label %124

114:                                              ; preds = %103
  %115 = load i32, i32* %5, align 4
  store i32 %115, i32* %6, align 4
  %116 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %117 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  store i32 %118, i32* %7, align 4
  %119 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %120 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %123 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  br label %124

124:                                              ; preds = %114, %109
  br label %125

125:                                              ; preds = %157, %124
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %160

129:                                              ; preds = %125
  %130 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %8, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %130, i64 %132
  %134 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %133, align 8
  store %struct.blk_mq_hw_ctx* %134, %struct.blk_mq_hw_ctx** %11, align 8
  %135 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %11, align 8
  %136 = icmp ne %struct.blk_mq_hw_ctx* %135, null
  br i1 %136, label %137, label %156

137:                                              ; preds = %129
  %138 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %11, align 8
  %139 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %144 = load i32, i32* %6, align 4
  %145 = call i32 @blk_mq_free_map_and_requests(%struct.blk_mq_tag_set* %143, i32 %144)
  br label %146

146:                                              ; preds = %142, %137
  %147 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %148 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %149 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %11, align 8
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @blk_mq_exit_hctx(%struct.request_queue* %147, %struct.blk_mq_tag_set* %148, %struct.blk_mq_hw_ctx* %149, i32 %150)
  %152 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %8, align 8
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %152, i64 %154
  store %struct.blk_mq_hw_ctx* null, %struct.blk_mq_hw_ctx** %155, align 8
  br label %156

156:                                              ; preds = %146, %129
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %6, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %6, align 4
  br label %125

160:                                              ; preds = %125
  %161 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %162 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %161, i32 0, i32 1
  %163 = call i32 @mutex_unlock(i32* %162)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @blk_mq_hw_queue_to_node(i32*, i32) #1

declare dso_local %struct.blk_mq_hw_ctx* @blk_mq_alloc_and_init_hctx(%struct.blk_mq_tag_set*, %struct.request_queue*, i32, i32) #1

declare dso_local i32 @blk_mq_exit_hctx(%struct.request_queue*, %struct.blk_mq_tag_set*, %struct.blk_mq_hw_ctx*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @blk_mq_free_map_and_requests(%struct.blk_mq_tag_set*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
