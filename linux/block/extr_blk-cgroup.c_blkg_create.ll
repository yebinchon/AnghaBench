; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-cgroup.c_blkg_create.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-cgroup.c_blkg_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcg_policy = type { i32 (i32)*, i32 (i32)* }
%struct.blkcg = type { %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.request_queue = type { i32, i32, i32, i32 }
%struct.blkcg_gq = type { i32, i32*, i32, i32, i32, %struct.bdi_writeback_congested* }
%struct.bdi_writeback_congested = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BLKCG_MAX_POLS = common dso_local global i32 0, align 4
@blkcg_policy = common dso_local global %struct.blkcg_policy** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.blkcg_gq* (%struct.blkcg*, %struct.request_queue*, %struct.blkcg_gq*)* @blkg_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.blkcg_gq* @blkg_create(%struct.blkcg* %0, %struct.request_queue* %1, %struct.blkcg_gq* %2) #0 {
  %4 = alloca %struct.blkcg_gq*, align 8
  %5 = alloca %struct.blkcg*, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca %struct.blkcg_gq*, align 8
  %8 = alloca %struct.blkcg_gq*, align 8
  %9 = alloca %struct.bdi_writeback_congested*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.blkcg_policy*, align 8
  %13 = alloca %struct.blkcg_policy*, align 8
  store %struct.blkcg* %0, %struct.blkcg** %5, align 8
  store %struct.request_queue* %1, %struct.request_queue** %6, align 8
  store %struct.blkcg_gq* %2, %struct.blkcg_gq** %7, align 8
  %14 = call i32 (...) @rcu_read_lock_held()
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON_ONCE(i32 %17)
  %19 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %20 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %19, i32 0, i32 3
  %21 = call i32 @lockdep_assert_held(i32* %20)
  %22 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %23 = call i64 @blk_queue_dying(%struct.request_queue* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %11, align 4
  br label %234

28:                                               ; preds = %3
  %29 = load %struct.blkcg*, %struct.blkcg** %5, align 8
  %30 = getelementptr inbounds %struct.blkcg, %struct.blkcg* %29, i32 0, i32 0
  %31 = call i32 @css_tryget_online(%struct.TYPE_3__* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %11, align 4
  br label %234

36:                                               ; preds = %28
  %37 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %38 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.blkcg*, %struct.blkcg** %5, align 8
  %41 = getelementptr inbounds %struct.blkcg, %struct.blkcg* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @GFP_NOWAIT, align 4
  %45 = load i32, i32* @__GFP_NOWARN, align 4
  %46 = or i32 %44, %45
  %47 = call %struct.bdi_writeback_congested* @wb_congested_get_create(i32 %39, i32 %43, i32 %46)
  store %struct.bdi_writeback_congested* %47, %struct.bdi_writeback_congested** %9, align 8
  %48 = load %struct.bdi_writeback_congested*, %struct.bdi_writeback_congested** %9, align 8
  %49 = icmp ne %struct.bdi_writeback_congested* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %36
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %11, align 4
  br label %230

53:                                               ; preds = %36
  %54 = load %struct.blkcg_gq*, %struct.blkcg_gq** %7, align 8
  %55 = icmp ne %struct.blkcg_gq* %54, null
  br i1 %55, label %73, label %56

56:                                               ; preds = %53
  %57 = load %struct.blkcg*, %struct.blkcg** %5, align 8
  %58 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %59 = load i32, i32* @GFP_NOWAIT, align 4
  %60 = load i32, i32* @__GFP_NOWARN, align 4
  %61 = or i32 %59, %60
  %62 = call %struct.blkcg_gq* @blkg_alloc(%struct.blkcg* %57, %struct.request_queue* %58, i32 %61)
  store %struct.blkcg_gq* %62, %struct.blkcg_gq** %7, align 8
  %63 = load %struct.blkcg_gq*, %struct.blkcg_gq** %7, align 8
  %64 = icmp ne %struct.blkcg_gq* %63, null
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %56
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %11, align 4
  br label %227

72:                                               ; preds = %56
  br label %73

73:                                               ; preds = %72, %53
  %74 = load %struct.blkcg_gq*, %struct.blkcg_gq** %7, align 8
  store %struct.blkcg_gq* %74, %struct.blkcg_gq** %8, align 8
  %75 = load %struct.bdi_writeback_congested*, %struct.bdi_writeback_congested** %9, align 8
  %76 = load %struct.blkcg_gq*, %struct.blkcg_gq** %8, align 8
  %77 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %76, i32 0, i32 5
  store %struct.bdi_writeback_congested* %75, %struct.bdi_writeback_congested** %77, align 8
  %78 = load %struct.blkcg*, %struct.blkcg** %5, align 8
  %79 = call i64 @blkcg_parent(%struct.blkcg* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %104

81:                                               ; preds = %73
  %82 = load %struct.blkcg*, %struct.blkcg** %5, align 8
  %83 = call i64 @blkcg_parent(%struct.blkcg* %82)
  %84 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %85 = call i32 @__blkg_lookup(i64 %83, %struct.request_queue* %84, i32 0)
  %86 = load %struct.blkcg_gq*, %struct.blkcg_gq** %8, align 8
  %87 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 8
  %88 = load %struct.blkcg_gq*, %struct.blkcg_gq** %8, align 8
  %89 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = call i64 @WARN_ON_ONCE(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %81
  %97 = load i32, i32* @ENODEV, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %11, align 4
  br label %227

99:                                               ; preds = %81
  %100 = load %struct.blkcg_gq*, %struct.blkcg_gq** %8, align 8
  %101 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @blkg_get(i32 %102)
  br label %104

104:                                              ; preds = %99, %73
  store i32 0, i32* %10, align 4
  br label %105

105:                                              ; preds = %141, %104
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* @BLKCG_MAX_POLS, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %144

109:                                              ; preds = %105
  %110 = load %struct.blkcg_policy**, %struct.blkcg_policy*** @blkcg_policy, align 8
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.blkcg_policy*, %struct.blkcg_policy** %110, i64 %112
  %114 = load %struct.blkcg_policy*, %struct.blkcg_policy** %113, align 8
  store %struct.blkcg_policy* %114, %struct.blkcg_policy** %12, align 8
  %115 = load %struct.blkcg_gq*, %struct.blkcg_gq** %8, align 8
  %116 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %140

123:                                              ; preds = %109
  %124 = load %struct.blkcg_policy*, %struct.blkcg_policy** %12, align 8
  %125 = getelementptr inbounds %struct.blkcg_policy, %struct.blkcg_policy* %124, i32 0, i32 1
  %126 = load i32 (i32)*, i32 (i32)** %125, align 8
  %127 = icmp ne i32 (i32)* %126, null
  br i1 %127, label %128, label %140

128:                                              ; preds = %123
  %129 = load %struct.blkcg_policy*, %struct.blkcg_policy** %12, align 8
  %130 = getelementptr inbounds %struct.blkcg_policy, %struct.blkcg_policy* %129, i32 0, i32 1
  %131 = load i32 (i32)*, i32 (i32)** %130, align 8
  %132 = load %struct.blkcg_gq*, %struct.blkcg_gq** %8, align 8
  %133 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i32 %131(i32 %138)
  br label %140

140:                                              ; preds = %128, %123, %109
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %10, align 4
  br label %105

144:                                              ; preds = %105
  %145 = load %struct.blkcg*, %struct.blkcg** %5, align 8
  %146 = getelementptr inbounds %struct.blkcg, %struct.blkcg* %145, i32 0, i32 1
  %147 = call i32 @spin_lock(i32* %146)
  %148 = load %struct.blkcg*, %struct.blkcg** %5, align 8
  %149 = getelementptr inbounds %struct.blkcg, %struct.blkcg* %148, i32 0, i32 3
  %150 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %151 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.blkcg_gq*, %struct.blkcg_gq** %8, align 8
  %154 = call i32 @radix_tree_insert(i32* %149, i32 %152, %struct.blkcg_gq* %153)
  store i32 %154, i32* %11, align 4
  %155 = load i32, i32* %11, align 4
  %156 = icmp ne i32 %155, 0
  %157 = xor i1 %156, true
  %158 = zext i1 %157 to i32
  %159 = call i64 @likely(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %212

161:                                              ; preds = %144
  %162 = load %struct.blkcg_gq*, %struct.blkcg_gq** %8, align 8
  %163 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %162, i32 0, i32 3
  %164 = load %struct.blkcg*, %struct.blkcg** %5, align 8
  %165 = getelementptr inbounds %struct.blkcg, %struct.blkcg* %164, i32 0, i32 2
  %166 = call i32 @hlist_add_head_rcu(i32* %163, i32* %165)
  %167 = load %struct.blkcg_gq*, %struct.blkcg_gq** %8, align 8
  %168 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %167, i32 0, i32 2
  %169 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %170 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %169, i32 0, i32 0
  %171 = call i32 @list_add(i32* %168, i32* %170)
  store i32 0, i32* %10, align 4
  br label %172

172:                                              ; preds = %208, %161
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* @BLKCG_MAX_POLS, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %211

176:                                              ; preds = %172
  %177 = load %struct.blkcg_policy**, %struct.blkcg_policy*** @blkcg_policy, align 8
  %178 = load i32, i32* %10, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.blkcg_policy*, %struct.blkcg_policy** %177, i64 %179
  %181 = load %struct.blkcg_policy*, %struct.blkcg_policy** %180, align 8
  store %struct.blkcg_policy* %181, %struct.blkcg_policy** %13, align 8
  %182 = load %struct.blkcg_gq*, %struct.blkcg_gq** %8, align 8
  %183 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %10, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %207

190:                                              ; preds = %176
  %191 = load %struct.blkcg_policy*, %struct.blkcg_policy** %13, align 8
  %192 = getelementptr inbounds %struct.blkcg_policy, %struct.blkcg_policy* %191, i32 0, i32 0
  %193 = load i32 (i32)*, i32 (i32)** %192, align 8
  %194 = icmp ne i32 (i32)* %193, null
  br i1 %194, label %195, label %207

195:                                              ; preds = %190
  %196 = load %struct.blkcg_policy*, %struct.blkcg_policy** %13, align 8
  %197 = getelementptr inbounds %struct.blkcg_policy, %struct.blkcg_policy* %196, i32 0, i32 0
  %198 = load i32 (i32)*, i32 (i32)** %197, align 8
  %199 = load %struct.blkcg_gq*, %struct.blkcg_gq** %8, align 8
  %200 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %10, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = call i32 %198(i32 %205)
  br label %207

207:                                              ; preds = %195, %190, %176
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %10, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %10, align 4
  br label %172

211:                                              ; preds = %172
  br label %212

212:                                              ; preds = %211, %144
  %213 = load %struct.blkcg_gq*, %struct.blkcg_gq** %8, align 8
  %214 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %213, i32 0, i32 0
  store i32 1, i32* %214, align 8
  %215 = load %struct.blkcg*, %struct.blkcg** %5, align 8
  %216 = getelementptr inbounds %struct.blkcg, %struct.blkcg* %215, i32 0, i32 1
  %217 = call i32 @spin_unlock(i32* %216)
  %218 = load i32, i32* %11, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %222, label %220

220:                                              ; preds = %212
  %221 = load %struct.blkcg_gq*, %struct.blkcg_gq** %8, align 8
  store %struct.blkcg_gq* %221, %struct.blkcg_gq** %4, align 8
  br label %239

222:                                              ; preds = %212
  %223 = load %struct.blkcg_gq*, %struct.blkcg_gq** %8, align 8
  %224 = call i32 @blkg_put(%struct.blkcg_gq* %223)
  %225 = load i32, i32* %11, align 4
  %226 = call %struct.blkcg_gq* @ERR_PTR(i32 %225)
  store %struct.blkcg_gq* %226, %struct.blkcg_gq** %4, align 8
  br label %239

227:                                              ; preds = %96, %69
  %228 = load %struct.bdi_writeback_congested*, %struct.bdi_writeback_congested** %9, align 8
  %229 = call i32 @wb_congested_put(%struct.bdi_writeback_congested* %228)
  br label %230

230:                                              ; preds = %227, %50
  %231 = load %struct.blkcg*, %struct.blkcg** %5, align 8
  %232 = getelementptr inbounds %struct.blkcg, %struct.blkcg* %231, i32 0, i32 0
  %233 = call i32 @css_put(%struct.TYPE_3__* %232)
  br label %234

234:                                              ; preds = %230, %33, %25
  %235 = load %struct.blkcg_gq*, %struct.blkcg_gq** %7, align 8
  %236 = call i32 @blkg_free(%struct.blkcg_gq* %235)
  %237 = load i32, i32* %11, align 4
  %238 = call %struct.blkcg_gq* @ERR_PTR(i32 %237)
  store %struct.blkcg_gq* %238, %struct.blkcg_gq** %4, align 8
  br label %239

239:                                              ; preds = %234, %222, %220
  %240 = load %struct.blkcg_gq*, %struct.blkcg_gq** %4, align 8
  ret %struct.blkcg_gq* %240
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rcu_read_lock_held(...) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @blk_queue_dying(%struct.request_queue*) #1

declare dso_local i32 @css_tryget_online(%struct.TYPE_3__*) #1

declare dso_local %struct.bdi_writeback_congested* @wb_congested_get_create(i32, i32, i32) #1

declare dso_local %struct.blkcg_gq* @blkg_alloc(%struct.blkcg*, %struct.request_queue*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @blkcg_parent(%struct.blkcg*) #1

declare dso_local i32 @__blkg_lookup(i64, %struct.request_queue*, i32) #1

declare dso_local i32 @blkg_get(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @radix_tree_insert(i32*, i32, %struct.blkcg_gq*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @blkg_put(%struct.blkcg_gq*) #1

declare dso_local %struct.blkcg_gq* @ERR_PTR(i32) #1

declare dso_local i32 @wb_congested_put(%struct.bdi_writeback_congested*) #1

declare dso_local i32 @css_put(%struct.TYPE_3__*) #1

declare dso_local i32 @blkg_free(%struct.blkcg_gq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
