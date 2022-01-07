; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_blk_throtl_bio.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_blk_throtl_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32, i32 }
%struct.blkcg_gq = type { i32 }
%struct.bio = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.throtl_qnode = type { i32 }
%struct.throtl_grp = type { i64*, i32, %struct.throtl_service_queue, i32*, i32*, %struct.throtl_qnode*, i32*, %struct.throtl_data* }
%struct.throtl_service_queue = type { %struct.throtl_service_queue*, i64* }
%struct.throtl_data = type { i32, i32* }

@BIO_THROTTLED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [67 x i8] c"[%c] bio. bdisp=%llu sz=%u bps=%llu iodisp=%u iops=%u queued=%d/%d\00", align 1
@READ = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@THROTL_TG_WAS_EMPTY = common dso_local global i32 0, align 4
@BIO_ISSUE_THROTL_SKIP_LATENCY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_throtl_bio(%struct.request_queue* %0, %struct.blkcg_gq* %1, %struct.bio* %2) #0 {
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.blkcg_gq*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %struct.throtl_qnode*, align 8
  %8 = alloca %struct.throtl_grp*, align 8
  %9 = alloca %struct.throtl_service_queue*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.throtl_data*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.blkcg_gq* %1, %struct.blkcg_gq** %5, align 8
  store %struct.bio* %2, %struct.bio** %6, align 8
  store %struct.throtl_qnode* null, %struct.throtl_qnode** %7, align 8
  %13 = load %struct.blkcg_gq*, %struct.blkcg_gq** %5, align 8
  %14 = icmp ne %struct.blkcg_gq* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %22

16:                                               ; preds = %3
  %17 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %18 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to %struct.blkcg_gq*
  br label %22

22:                                               ; preds = %16, %15
  %23 = phi %struct.blkcg_gq* [ %13, %15 ], [ %21, %16 ]
  %24 = ptrtoint %struct.blkcg_gq* %23 to i32
  %25 = call %struct.throtl_grp* @blkg_to_tg(i32 %24)
  store %struct.throtl_grp* %25, %struct.throtl_grp** %8, align 8
  %26 = load %struct.bio*, %struct.bio** %6, align 8
  %27 = call i32 @bio_data_dir(%struct.bio* %26)
  store i32 %27, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %28 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %29 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %28, i32 0, i32 7
  %30 = load %struct.throtl_data*, %struct.throtl_data** %29, align 8
  store %struct.throtl_data* %30, %struct.throtl_data** %12, align 8
  %31 = call i32 (...) @rcu_read_lock_held()
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @WARN_ON_ONCE(i32 %34)
  %36 = load %struct.bio*, %struct.bio** %6, align 8
  %37 = load i32, i32* @BIO_THROTTLED, align 4
  %38 = call i64 @bio_flagged(%struct.bio* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %22
  %41 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %42 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %41, i32 0, i32 6
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %40, %22
  br label %222

50:                                               ; preds = %40
  %51 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %52 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %51, i32 0, i32 0
  %53 = call i32 @spin_lock_irq(i32* %52)
  %54 = load %struct.throtl_data*, %struct.throtl_data** %12, align 8
  %55 = call i32 @throtl_update_latency_buckets(%struct.throtl_data* %54)
  %56 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %57 = call i32 @blk_throtl_update_idletime(%struct.throtl_grp* %56)
  %58 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %59 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %58, i32 0, i32 2
  store %struct.throtl_service_queue* %59, %struct.throtl_service_queue** %9, align 8
  br label %60

60:                                               ; preds = %111, %50
  br label %61

61:                                               ; preds = %60, %136
  %62 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %63 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %61
  %71 = load i8*, i8** @jiffies, align 8
  %72 = ptrtoint i8* %71 to i64
  %73 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %74 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  store i64 %72, i64* %78, align 8
  br label %79

79:                                               ; preds = %70, %61
  %80 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %81 = call i32 @throtl_downgrade_check(%struct.throtl_grp* %80)
  %82 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %83 = call i32 @throtl_upgrade_check(%struct.throtl_grp* %82)
  %84 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %9, align 8
  %85 = getelementptr inbounds %struct.throtl_service_queue, %struct.throtl_service_queue* %84, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %79
  br label %137

93:                                               ; preds = %79
  %94 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %95 = load %struct.bio*, %struct.bio** %6, align 8
  %96 = call i32 @tg_may_dispatch(%struct.throtl_grp* %94, %struct.bio* %95, i32* null)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %115, label %98

98:                                               ; preds = %93
  %99 = load i8*, i8** @jiffies, align 8
  %100 = ptrtoint i8* %99 to i64
  %101 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %102 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  store i64 %100, i64* %106, align 8
  %107 = load %struct.throtl_data*, %struct.throtl_data** %12, align 8
  %108 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %109 = call i64 @throtl_can_upgrade(%struct.throtl_data* %107, %struct.throtl_grp* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %98
  %112 = load %struct.throtl_data*, %struct.throtl_data** %12, align 8
  %113 = call i32 @throtl_upgrade_state(%struct.throtl_data* %112)
  br label %60

114:                                              ; preds = %98
  br label %137

115:                                              ; preds = %93
  %116 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %117 = load %struct.bio*, %struct.bio** %6, align 8
  %118 = call i32 @throtl_charge_bio(%struct.throtl_grp* %116, %struct.bio* %117)
  %119 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @throtl_trim_slice(%struct.throtl_grp* %119, i32 %120)
  %122 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %123 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %122, i32 0, i32 5
  %124 = load %struct.throtl_qnode*, %struct.throtl_qnode** %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.throtl_qnode, %struct.throtl_qnode* %124, i64 %126
  store %struct.throtl_qnode* %127, %struct.throtl_qnode** %7, align 8
  %128 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %9, align 8
  %129 = getelementptr inbounds %struct.throtl_service_queue, %struct.throtl_service_queue* %128, i32 0, i32 0
  %130 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %129, align 8
  store %struct.throtl_service_queue* %130, %struct.throtl_service_queue** %9, align 8
  %131 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %9, align 8
  %132 = call %struct.throtl_grp* @sq_to_tg(%struct.throtl_service_queue* %131)
  store %struct.throtl_grp* %132, %struct.throtl_grp** %8, align 8
  %133 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %134 = icmp ne %struct.throtl_grp* %133, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %115
  br label %218

136:                                              ; preds = %115
  br label %61

137:                                              ; preds = %114, %92
  %138 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %9, align 8
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* @READ, align 4
  %141 = icmp eq i32 %139, %140
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i32 82, i32 87
  %144 = trunc i32 %143 to i8
  %145 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %146 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %145, i32 0, i32 4
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.bio*, %struct.bio** %6, align 8
  %153 = getelementptr inbounds %struct.bio, %struct.bio* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %157 = load i32, i32* %10, align 4
  %158 = call i32 @tg_bps_limit(%struct.throtl_grp* %156, i32 %157)
  %159 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %160 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %159, i32 0, i32 3
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %167 = load i32, i32* %10, align 4
  %168 = call i32 @tg_iops_limit(%struct.throtl_grp* %166, i32 %167)
  %169 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %9, align 8
  %170 = getelementptr inbounds %struct.throtl_service_queue, %struct.throtl_service_queue* %169, i32 0, i32 1
  %171 = load i64*, i64** %170, align 8
  %172 = load i32, i32* @READ, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i64, i64* %171, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %9, align 8
  %177 = getelementptr inbounds %struct.throtl_service_queue, %struct.throtl_service_queue* %176, i32 0, i32 1
  %178 = load i64*, i64** %177, align 8
  %179 = load i64, i64* @WRITE, align 8
  %180 = getelementptr inbounds i64, i64* %178, i64 %179
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @throtl_log(%struct.throtl_service_queue* %138, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i8 signext %144, i32 %151, i32 %155, i32 %158, i32 %165, i32 %168, i64 %175, i64 %181)
  %183 = load i8*, i8** @jiffies, align 8
  %184 = ptrtoint i8* %183 to i64
  %185 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %186 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %185, i32 0, i32 0
  %187 = load i64*, i64** %186, align 8
  %188 = load i32, i32* %10, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i64, i64* %187, i64 %189
  store i64 %184, i64* %190, align 8
  %191 = load %struct.throtl_data*, %struct.throtl_data** %12, align 8
  %192 = getelementptr inbounds %struct.throtl_data, %struct.throtl_data* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %10, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %196, align 4
  %199 = load %struct.bio*, %struct.bio** %6, align 8
  %200 = load %struct.throtl_qnode*, %struct.throtl_qnode** %7, align 8
  %201 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %202 = call i32 @throtl_add_bio_tg(%struct.bio* %199, %struct.throtl_qnode* %200, %struct.throtl_grp* %201)
  store i32 1, i32* %11, align 4
  %203 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %204 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @THROTL_TG_WAS_EMPTY, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %217

209:                                              ; preds = %137
  %210 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %211 = call i32 @tg_update_disptime(%struct.throtl_grp* %210)
  %212 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %213 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.throtl_service_queue, %struct.throtl_service_queue* %213, i32 0, i32 0
  %215 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %214, align 8
  %216 = call i32 @throtl_schedule_next_dispatch(%struct.throtl_service_queue* %215, i32 1)
  br label %217

217:                                              ; preds = %209, %137
  br label %218

218:                                              ; preds = %217, %135
  %219 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %220 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %219, i32 0, i32 0
  %221 = call i32 @spin_unlock_irq(i32* %220)
  br label %222

222:                                              ; preds = %218, %49
  %223 = load %struct.bio*, %struct.bio** %6, align 8
  %224 = load i32, i32* @BIO_THROTTLED, align 4
  %225 = call i32 @bio_set_flag(%struct.bio* %223, i32 %224)
  %226 = load i32, i32* %11, align 4
  ret i32 %226
}

declare dso_local %struct.throtl_grp* @blkg_to_tg(i32) #1

declare dso_local i32 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rcu_read_lock_held(...) #1

declare dso_local i64 @bio_flagged(%struct.bio*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @throtl_update_latency_buckets(%struct.throtl_data*) #1

declare dso_local i32 @blk_throtl_update_idletime(%struct.throtl_grp*) #1

declare dso_local i32 @throtl_downgrade_check(%struct.throtl_grp*) #1

declare dso_local i32 @throtl_upgrade_check(%struct.throtl_grp*) #1

declare dso_local i32 @tg_may_dispatch(%struct.throtl_grp*, %struct.bio*, i32*) #1

declare dso_local i64 @throtl_can_upgrade(%struct.throtl_data*, %struct.throtl_grp*) #1

declare dso_local i32 @throtl_upgrade_state(%struct.throtl_data*) #1

declare dso_local i32 @throtl_charge_bio(%struct.throtl_grp*, %struct.bio*) #1

declare dso_local i32 @throtl_trim_slice(%struct.throtl_grp*, i32) #1

declare dso_local %struct.throtl_grp* @sq_to_tg(%struct.throtl_service_queue*) #1

declare dso_local i32 @throtl_log(%struct.throtl_service_queue*, i8*, i8 signext, i32, i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @tg_bps_limit(%struct.throtl_grp*, i32) #1

declare dso_local i32 @tg_iops_limit(%struct.throtl_grp*, i32) #1

declare dso_local i32 @throtl_add_bio_tg(%struct.bio*, %struct.throtl_qnode*, %struct.throtl_grp*) #1

declare dso_local i32 @tg_update_disptime(%struct.throtl_grp*) #1

declare dso_local i32 @throtl_schedule_next_dispatch(%struct.throtl_service_queue*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @bio_set_flag(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
