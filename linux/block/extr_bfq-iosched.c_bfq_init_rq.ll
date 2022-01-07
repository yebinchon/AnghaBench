; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_init_rq.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_init_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_queue = type { i32, %struct.bfq_queue*, i32, i32 }
%struct.request = type { %struct.TYPE_4__, %struct.bio*, %struct.request_queue* }
%struct.TYPE_4__ = type { %struct.bfq_queue**, i32 }
%struct.bio = type { i32 }
%struct.request_queue = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.bfq_data* }
%struct.bfq_data = type { i64, %struct.bfq_queue }
%struct.bfq_io_cq = type { i32, %struct.bfq_io_cq*, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"breaking apart bfqq\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"get_request %p: bfqq %p, %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bfq_queue* (%struct.request*)* @bfq_init_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bfq_queue* @bfq_init_rq(%struct.request* %0) #0 {
  %2 = alloca %struct.bfq_queue*, align 8
  %3 = alloca %struct.request*, align 8
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.bfq_data*, align 8
  %7 = alloca %struct.bfq_io_cq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bfq_queue*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %3, align 8
  %13 = load %struct.request*, %struct.request** %3, align 8
  %14 = getelementptr inbounds %struct.request, %struct.request* %13, i32 0, i32 2
  %15 = load %struct.request_queue*, %struct.request_queue** %14, align 8
  store %struct.request_queue* %15, %struct.request_queue** %4, align 8
  %16 = load %struct.request*, %struct.request** %3, align 8
  %17 = getelementptr inbounds %struct.request, %struct.request* %16, i32 0, i32 1
  %18 = load %struct.bio*, %struct.bio** %17, align 8
  store %struct.bio* %18, %struct.bio** %5, align 8
  %19 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %20 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.bfq_data*, %struct.bfq_data** %22, align 8
  store %struct.bfq_data* %23, %struct.bfq_data** %6, align 8
  %24 = load %struct.request*, %struct.request** %3, align 8
  %25 = call i32 @rq_is_sync(%struct.request* %24)
  store i32 %25, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %26 = load %struct.request*, %struct.request** %3, align 8
  %27 = getelementptr inbounds %struct.request, %struct.request* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %1
  store %struct.bfq_queue* null, %struct.bfq_queue** %2, align 8
  br label %195

36:                                               ; preds = %1
  %37 = load %struct.request*, %struct.request** %3, align 8
  %38 = getelementptr inbounds %struct.request, %struct.request* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.bfq_queue**, %struct.bfq_queue*** %39, align 8
  %41 = getelementptr inbounds %struct.bfq_queue*, %struct.bfq_queue** %40, i64 1
  %42 = load %struct.bfq_queue*, %struct.bfq_queue** %41, align 8
  %43 = icmp ne %struct.bfq_queue* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %36
  %45 = load %struct.request*, %struct.request** %3, align 8
  %46 = getelementptr inbounds %struct.request, %struct.request* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.bfq_queue**, %struct.bfq_queue*** %47, align 8
  %49 = getelementptr inbounds %struct.bfq_queue*, %struct.bfq_queue** %48, i64 1
  %50 = load %struct.bfq_queue*, %struct.bfq_queue** %49, align 8
  store %struct.bfq_queue* %50, %struct.bfq_queue** %2, align 8
  br label %195

51:                                               ; preds = %36
  %52 = load %struct.request*, %struct.request** %3, align 8
  %53 = getelementptr inbounds %struct.request, %struct.request* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call %struct.bfq_queue* @icq_to_bic(i32 %55)
  %57 = bitcast %struct.bfq_queue* %56 to %struct.bfq_io_cq*
  store %struct.bfq_io_cq* %57, %struct.bfq_io_cq** %7, align 8
  %58 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %7, align 8
  %59 = bitcast %struct.bfq_io_cq* %58 to %struct.bfq_queue*
  %60 = load %struct.bio*, %struct.bio** %5, align 8
  %61 = call i32 @bfq_check_ioprio_change(%struct.bfq_queue* %59, %struct.bio* %60)
  %62 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %7, align 8
  %63 = bitcast %struct.bfq_io_cq* %62 to %struct.bfq_queue*
  %64 = load %struct.bio*, %struct.bio** %5, align 8
  %65 = call i32 @bfq_bic_update_cgroup(%struct.bfq_queue* %63, %struct.bio* %64)
  %66 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %67 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %7, align 8
  %68 = bitcast %struct.bfq_io_cq* %67 to %struct.bfq_queue*
  %69 = load %struct.bio*, %struct.bio** %5, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call %struct.bfq_queue* @bfq_get_bfqq_handle_split(%struct.bfq_data* %66, %struct.bfq_queue* %68, %struct.bio* %69, i32 0, i32 %70, i32* %10)
  store %struct.bfq_queue* %71, %struct.bfq_queue** %9, align 8
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i64 @likely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %113

78:                                               ; preds = %51
  %79 = load %struct.bfq_queue*, %struct.bfq_queue** %9, align 8
  %80 = call i64 @bfq_bfqq_coop(%struct.bfq_queue* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %112

82:                                               ; preds = %78
  %83 = load %struct.bfq_queue*, %struct.bfq_queue** %9, align 8
  %84 = call i64 @bfq_bfqq_split_coop(%struct.bfq_queue* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %112

86:                                               ; preds = %82
  %87 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %88 = load %struct.bfq_queue*, %struct.bfq_queue** %9, align 8
  %89 = call i32 (%struct.bfq_data*, %struct.bfq_queue*, i8*, ...) @bfq_log_bfqq(%struct.bfq_data* %87, %struct.bfq_queue* %88, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %90 = load %struct.bfq_queue*, %struct.bfq_queue** %9, align 8
  %91 = call i64 @bfq_bfqq_in_large_burst(%struct.bfq_queue* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %7, align 8
  %95 = getelementptr inbounds %struct.bfq_io_cq, %struct.bfq_io_cq* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  br label %96

96:                                               ; preds = %93, %86
  %97 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %7, align 8
  %98 = bitcast %struct.bfq_io_cq* %97 to %struct.bfq_queue*
  %99 = load %struct.bfq_queue*, %struct.bfq_queue** %9, align 8
  %100 = call %struct.bfq_queue* @bfq_split_bfqq(%struct.bfq_queue* %98, %struct.bfq_queue* %99)
  store %struct.bfq_queue* %100, %struct.bfq_queue** %9, align 8
  store i32 1, i32* %12, align 4
  %101 = load %struct.bfq_queue*, %struct.bfq_queue** %9, align 8
  %102 = icmp ne %struct.bfq_queue* %101, null
  br i1 %102, label %110, label %103

103:                                              ; preds = %96
  %104 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %105 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %7, align 8
  %106 = bitcast %struct.bfq_io_cq* %105 to %struct.bfq_queue*
  %107 = load %struct.bio*, %struct.bio** %5, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call %struct.bfq_queue* @bfq_get_bfqq_handle_split(%struct.bfq_data* %104, %struct.bfq_queue* %106, %struct.bio* %107, i32 1, i32 %108, i32* null)
  store %struct.bfq_queue* %109, %struct.bfq_queue** %9, align 8
  br label %111

110:                                              ; preds = %96
  store i32 1, i32* %11, align 4
  br label %111

111:                                              ; preds = %110, %103
  br label %112

112:                                              ; preds = %111, %82, %78
  br label %113

113:                                              ; preds = %112, %51
  %114 = load %struct.bfq_queue*, %struct.bfq_queue** %9, align 8
  %115 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  %118 = load %struct.bfq_queue*, %struct.bfq_queue** %9, align 8
  %119 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 8
  %122 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %123 = load %struct.bfq_queue*, %struct.bfq_queue** %9, align 8
  %124 = load %struct.request*, %struct.request** %3, align 8
  %125 = load %struct.bfq_queue*, %struct.bfq_queue** %9, align 8
  %126 = load %struct.bfq_queue*, %struct.bfq_queue** %9, align 8
  %127 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 (%struct.bfq_data*, %struct.bfq_queue*, i8*, ...) @bfq_log_bfqq(%struct.bfq_data* %122, %struct.bfq_queue* %123, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), %struct.request* %124, %struct.bfq_queue* %125, i32 %128)
  %130 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %7, align 8
  %131 = bitcast %struct.bfq_io_cq* %130 to %struct.bfq_queue*
  %132 = load %struct.request*, %struct.request** %3, align 8
  %133 = getelementptr inbounds %struct.request, %struct.request* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load %struct.bfq_queue**, %struct.bfq_queue*** %134, align 8
  %136 = getelementptr inbounds %struct.bfq_queue*, %struct.bfq_queue** %135, i64 0
  store %struct.bfq_queue* %131, %struct.bfq_queue** %136, align 8
  %137 = load %struct.bfq_queue*, %struct.bfq_queue** %9, align 8
  %138 = load %struct.request*, %struct.request** %3, align 8
  %139 = getelementptr inbounds %struct.request, %struct.request* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load %struct.bfq_queue**, %struct.bfq_queue*** %140, align 8
  %142 = getelementptr inbounds %struct.bfq_queue*, %struct.bfq_queue** %141, i64 1
  store %struct.bfq_queue* %137, %struct.bfq_queue** %142, align 8
  %143 = load %struct.bfq_queue*, %struct.bfq_queue** %9, align 8
  %144 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %145 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %144, i32 0, i32 1
  %146 = icmp ne %struct.bfq_queue* %143, %145
  %147 = zext i1 %146 to i32
  %148 = call i64 @likely(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %169

150:                                              ; preds = %113
  %151 = load %struct.bfq_queue*, %struct.bfq_queue** %9, align 8
  %152 = call i32 @bfqq_process_refs(%struct.bfq_queue* %151)
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %169

154:                                              ; preds = %150
  %155 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %7, align 8
  %156 = bitcast %struct.bfq_io_cq* %155 to %struct.bfq_queue*
  %157 = load %struct.bfq_queue*, %struct.bfq_queue** %9, align 8
  %158 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %157, i32 0, i32 1
  store %struct.bfq_queue* %156, %struct.bfq_queue** %158, align 8
  %159 = load i32, i32* %12, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %154
  %162 = load %struct.bfq_queue*, %struct.bfq_queue** %9, align 8
  %163 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %164 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %7, align 8
  %165 = bitcast %struct.bfq_io_cq* %164 to %struct.bfq_queue*
  %166 = load i32, i32* %11, align 4
  %167 = call i32 @bfq_bfqq_resume_state(%struct.bfq_queue* %162, %struct.bfq_data* %163, %struct.bfq_queue* %165, i32 %166)
  br label %168

168:                                              ; preds = %161, %154
  br label %169

169:                                              ; preds = %168, %150, %113
  %170 = load %struct.bfq_queue*, %struct.bfq_queue** %9, align 8
  %171 = call i64 @bfq_bfqq_just_created(%struct.bfq_queue* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %184

173:                                              ; preds = %169
  %174 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %175 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp sgt i64 %176, 0
  br i1 %177, label %182, label %178

178:                                              ; preds = %173
  %179 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %180 = call i64 @bfq_tot_busy_queues(%struct.bfq_data* %179)
  %181 = icmp eq i64 %180, 0
  br label %182

182:                                              ; preds = %178, %173
  %183 = phi i1 [ true, %173 ], [ %181, %178 ]
  br label %184

184:                                              ; preds = %182, %169
  %185 = phi i1 [ false, %169 ], [ %183, %182 ]
  %186 = zext i1 %185 to i32
  %187 = call i64 @unlikely(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %184
  %190 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %191 = load %struct.bfq_queue*, %struct.bfq_queue** %9, align 8
  %192 = call i32 @bfq_handle_burst(%struct.bfq_data* %190, %struct.bfq_queue* %191)
  br label %193

193:                                              ; preds = %189, %184
  %194 = load %struct.bfq_queue*, %struct.bfq_queue** %9, align 8
  store %struct.bfq_queue* %194, %struct.bfq_queue** %2, align 8
  br label %195

195:                                              ; preds = %193, %44, %35
  %196 = load %struct.bfq_queue*, %struct.bfq_queue** %2, align 8
  ret %struct.bfq_queue* %196
}

declare dso_local i32 @rq_is_sync(%struct.request*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.bfq_queue* @icq_to_bic(i32) #1

declare dso_local i32 @bfq_check_ioprio_change(%struct.bfq_queue*, %struct.bio*) #1

declare dso_local i32 @bfq_bic_update_cgroup(%struct.bfq_queue*, %struct.bio*) #1

declare dso_local %struct.bfq_queue* @bfq_get_bfqq_handle_split(%struct.bfq_data*, %struct.bfq_queue*, %struct.bio*, i32, i32, i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @bfq_bfqq_coop(%struct.bfq_queue*) #1

declare dso_local i64 @bfq_bfqq_split_coop(%struct.bfq_queue*) #1

declare dso_local i32 @bfq_log_bfqq(%struct.bfq_data*, %struct.bfq_queue*, i8*, ...) #1

declare dso_local i64 @bfq_bfqq_in_large_burst(%struct.bfq_queue*) #1

declare dso_local %struct.bfq_queue* @bfq_split_bfqq(%struct.bfq_queue*, %struct.bfq_queue*) #1

declare dso_local i32 @bfqq_process_refs(%struct.bfq_queue*) #1

declare dso_local i32 @bfq_bfqq_resume_state(%struct.bfq_queue*, %struct.bfq_data*, %struct.bfq_queue*, i32) #1

declare dso_local i64 @bfq_bfqq_just_created(%struct.bfq_queue*) #1

declare dso_local i64 @bfq_tot_busy_queues(%struct.bfq_data*) #1

declare dso_local i32 @bfq_handle_burst(%struct.bfq_data*, %struct.bfq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
