; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_get_request.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_get_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.request_queue = type { %struct.elevator_queue* }
%struct.elevator_queue = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32 (%struct.request*, %struct.bio*)*, i32 (i32, %struct.blk_mq_alloc_data*)* }
%struct.bio = type { i32 }
%struct.blk_mq_alloc_data = type { i32, i32, %struct.TYPE_9__*, i32*, %struct.request_queue* }
%struct.TYPE_9__ = type { i32 }

@REQ_NOWAIT = common dso_local global i32 0, align 4
@BLK_MQ_REQ_NOWAIT = common dso_local global i32 0, align 4
@BLK_MQ_REQ_INTERNAL = common dso_local global i32 0, align 4
@BLK_MQ_REQ_RESERVED = common dso_local global i32 0, align 4
@BLK_MQ_TAG_FAIL = common dso_local global i32 0, align 4
@RQF_ELVPRIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.request* (%struct.request_queue*, %struct.bio*, %struct.blk_mq_alloc_data*)* @blk_mq_get_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.request* @blk_mq_get_request(%struct.request_queue* %0, %struct.bio* %1, %struct.blk_mq_alloc_data* %2) #0 {
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %struct.blk_mq_alloc_data*, align 8
  %8 = alloca %struct.elevator_queue*, align 8
  %9 = alloca %struct.request*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store %struct.blk_mq_alloc_data* %2, %struct.blk_mq_alloc_data** %7, align 8
  %13 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %14 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %13, i32 0, i32 0
  %15 = load %struct.elevator_queue*, %struct.elevator_queue** %14, align 8
  store %struct.elevator_queue* %15, %struct.elevator_queue** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %17 = call i32 @blk_queue_enter_live(%struct.request_queue* %16)
  %18 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %19 = call i64 @blk_queue_rq_alloc_time(%struct.request_queue* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = call i32 (...) @ktime_get_ns()
  store i32 %22, i32* %12, align 4
  br label %23

23:                                               ; preds = %21, %3
  %24 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %25 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %7, align 8
  %26 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %25, i32 0, i32 4
  store %struct.request_queue* %24, %struct.request_queue** %26, align 8
  %27 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %7, align 8
  %28 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @likely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %23
  %36 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %37 = call i32* @blk_mq_get_ctx(%struct.request_queue* %36)
  %38 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %7, align 8
  %39 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %38, i32 0, i32 3
  store i32* %37, i32** %39, align 8
  store i32 1, i32* %11, align 4
  br label %40

40:                                               ; preds = %35, %23
  %41 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %7, align 8
  %42 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %41, i32 0, i32 2
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = icmp ne %struct.TYPE_9__* %43, null
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i64 @likely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %40
  %50 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %51 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %7, align 8
  %52 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %7, align 8
  %55 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = call %struct.TYPE_9__* @blk_mq_map_queue(%struct.request_queue* %50, i32 %53, i32* %56)
  %58 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %7, align 8
  %59 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %58, i32 0, i32 2
  store %struct.TYPE_9__* %57, %struct.TYPE_9__** %59, align 8
  br label %60

60:                                               ; preds = %49, %40
  %61 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %7, align 8
  %62 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @REQ_NOWAIT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load i32, i32* @BLK_MQ_REQ_NOWAIT, align 4
  %69 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %7, align 8
  %70 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %67, %60
  %74 = load %struct.elevator_queue*, %struct.elevator_queue** %8, align 8
  %75 = icmp ne %struct.elevator_queue* %74, null
  br i1 %75, label %76, label %115

76:                                               ; preds = %73
  %77 = load i32, i32* @BLK_MQ_REQ_INTERNAL, align 4
  %78 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %7, align 8
  %79 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %7, align 8
  %83 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @op_is_flush(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %114, label %87

87:                                               ; preds = %76
  %88 = load %struct.elevator_queue*, %struct.elevator_queue** %8, align 8
  %89 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %88, i32 0, i32 0
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32 (i32, %struct.blk_mq_alloc_data*)*, i32 (i32, %struct.blk_mq_alloc_data*)** %92, align 8
  %94 = icmp ne i32 (i32, %struct.blk_mq_alloc_data*)* %93, null
  br i1 %94, label %95, label %114

95:                                               ; preds = %87
  %96 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %7, align 8
  %97 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @BLK_MQ_REQ_RESERVED, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %114, label %102

102:                                              ; preds = %95
  %103 = load %struct.elevator_queue*, %struct.elevator_queue** %8, align 8
  %104 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %103, i32 0, i32 0
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = load i32 (i32, %struct.blk_mq_alloc_data*)*, i32 (i32, %struct.blk_mq_alloc_data*)** %107, align 8
  %109 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %7, align 8
  %110 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %7, align 8
  %113 = call i32 %108(i32 %111, %struct.blk_mq_alloc_data* %112)
  br label %114

114:                                              ; preds = %102, %95, %87, %76
  br label %120

115:                                              ; preds = %73
  %116 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %7, align 8
  %117 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %116, i32 0, i32 2
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  %119 = call i32 @blk_mq_tag_busy(%struct.TYPE_9__* %118)
  br label %120

120:                                              ; preds = %115, %114
  %121 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %7, align 8
  %122 = call i32 @blk_mq_get_tag(%struct.blk_mq_alloc_data* %121)
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* @BLK_MQ_TAG_FAIL, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %120
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %7, align 8
  %131 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %130, i32 0, i32 3
  store i32* null, i32** %131, align 8
  br label %132

132:                                              ; preds = %129, %126
  %133 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %134 = call i32 @blk_queue_exit(%struct.request_queue* %133)
  store %struct.request* null, %struct.request** %4, align 8
  br label %196

135:                                              ; preds = %120
  %136 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %7, align 8
  %137 = load i32, i32* %10, align 4
  %138 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %7, align 8
  %139 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %12, align 4
  %142 = call %struct.request* @blk_mq_rq_ctx_init(%struct.blk_mq_alloc_data* %136, i32 %137, i32 %140, i32 %141)
  store %struct.request* %142, %struct.request** %9, align 8
  %143 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %7, align 8
  %144 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @op_is_flush(i32 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %188, label %148

148:                                              ; preds = %135
  %149 = load %struct.request*, %struct.request** %9, align 8
  %150 = getelementptr inbounds %struct.request, %struct.request* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  store i32* null, i32** %151, align 8
  %152 = load %struct.elevator_queue*, %struct.elevator_queue** %8, align 8
  %153 = icmp ne %struct.elevator_queue* %152, null
  br i1 %153, label %154, label %187

154:                                              ; preds = %148
  %155 = load %struct.elevator_queue*, %struct.elevator_queue** %8, align 8
  %156 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %155, i32 0, i32 0
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = load i32 (%struct.request*, %struct.bio*)*, i32 (%struct.request*, %struct.bio*)** %159, align 8
  %161 = icmp ne i32 (%struct.request*, %struct.bio*)* %160, null
  br i1 %161, label %162, label %187

162:                                              ; preds = %154
  %163 = load %struct.elevator_queue*, %struct.elevator_queue** %8, align 8
  %164 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %163, i32 0, i32 0
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %162
  %170 = load %struct.request*, %struct.request** %9, align 8
  %171 = call i32 @blk_mq_sched_assign_ioc(%struct.request* %170)
  br label %172

172:                                              ; preds = %169, %162
  %173 = load %struct.elevator_queue*, %struct.elevator_queue** %8, align 8
  %174 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %173, i32 0, i32 0
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load i32 (%struct.request*, %struct.bio*)*, i32 (%struct.request*, %struct.bio*)** %177, align 8
  %179 = load %struct.request*, %struct.request** %9, align 8
  %180 = load %struct.bio*, %struct.bio** %6, align 8
  %181 = call i32 %178(%struct.request* %179, %struct.bio* %180)
  %182 = load i32, i32* @RQF_ELVPRIV, align 4
  %183 = load %struct.request*, %struct.request** %9, align 8
  %184 = getelementptr inbounds %struct.request, %struct.request* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 8
  br label %187

187:                                              ; preds = %172, %154, %148
  br label %188

188:                                              ; preds = %187, %135
  %189 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %7, align 8
  %190 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %189, i32 0, i32 2
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %192, align 4
  %195 = load %struct.request*, %struct.request** %9, align 8
  store %struct.request* %195, %struct.request** %4, align 8
  br label %196

196:                                              ; preds = %188, %132
  %197 = load %struct.request*, %struct.request** %4, align 8
  ret %struct.request* %197
}

declare dso_local i32 @blk_queue_enter_live(%struct.request_queue*) #1

declare dso_local i64 @blk_queue_rq_alloc_time(%struct.request_queue*) #1

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32* @blk_mq_get_ctx(%struct.request_queue*) #1

declare dso_local %struct.TYPE_9__* @blk_mq_map_queue(%struct.request_queue*, i32, i32*) #1

declare dso_local i32 @op_is_flush(i32) #1

declare dso_local i32 @blk_mq_tag_busy(%struct.TYPE_9__*) #1

declare dso_local i32 @blk_mq_get_tag(%struct.blk_mq_alloc_data*) #1

declare dso_local i32 @blk_queue_exit(%struct.request_queue*) #1

declare dso_local %struct.request* @blk_mq_rq_ctx_init(%struct.blk_mq_alloc_data*, i32, i32, i32) #1

declare dso_local i32 @blk_mq_sched_assign_ioc(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
