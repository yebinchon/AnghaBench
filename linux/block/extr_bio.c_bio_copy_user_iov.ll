; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bio.c_bio_copy_user_iov.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bio.c_bio_copy_user_iov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.bio_map_data*, %struct.TYPE_2__ }
%struct.bio_map_data = type { i32 }
%struct.TYPE_2__ = type { i64 }
%struct.request_queue = type { i32 }
%struct.rq_map_data = type { i32, i32, i32, i64, i64, %struct.page** }
%struct.page = type { i32 }
%struct.iov_iter = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@BIO_MAX_PAGES = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@BIO_NULL_MAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bio* @bio_copy_user_iov(%struct.request_queue* %0, %struct.rq_map_data* %1, %struct.iov_iter* %2, i32 %3) #0 {
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca %struct.rq_map_data*, align 8
  %8 = alloca %struct.iov_iter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bio_map_data*, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca %struct.bio*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %6, align 8
  store %struct.rq_map_data* %1, %struct.rq_map_data** %7, align 8
  store %struct.iov_iter* %2, %struct.iov_iter** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %19 = load %struct.iov_iter*, %struct.iov_iter** %8, align 8
  %20 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %16, align 4
  %22 = load %struct.rq_map_data*, %struct.rq_map_data** %7, align 8
  %23 = icmp ne %struct.rq_map_data* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %4
  %25 = load %struct.rq_map_data*, %struct.rq_map_data** %7, align 8
  %26 = getelementptr inbounds %struct.rq_map_data, %struct.rq_map_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @offset_in_page(i32 %27)
  br label %30

29:                                               ; preds = %4
  br label %30

30:                                               ; preds = %29, %24
  %31 = phi i32 [ %28, %24 ], [ 0, %29 ]
  store i32 %31, i32* %17, align 4
  %32 = load %struct.iov_iter*, %struct.iov_iter** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call %struct.bio_map_data* @bio_alloc_map_data(%struct.iov_iter* %32, i32 %33)
  store %struct.bio_map_data* %34, %struct.bio_map_data** %10, align 8
  %35 = load %struct.bio_map_data*, %struct.bio_map_data** %10, align 8
  %36 = icmp ne %struct.bio_map_data* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  %40 = call %struct.bio* @ERR_PTR(i32 %39)
  store %struct.bio* %40, %struct.bio** %5, align 8
  br label %252

41:                                               ; preds = %30
  %42 = load %struct.rq_map_data*, %struct.rq_map_data** %7, align 8
  %43 = icmp ne %struct.rq_map_data* %42, null
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 0, i32 1
  %46 = load %struct.bio_map_data*, %struct.bio_map_data** %10, align 8
  %47 = getelementptr inbounds %struct.bio_map_data, %struct.bio_map_data* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* %16, align 4
  %50 = add i32 %48, %49
  %51 = load i32, i32* @PAGE_SIZE, align 4
  %52 = call i32 @DIV_ROUND_UP(i32 %50, i32 %51)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* @BIO_MAX_PAGES, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %41
  %57 = load i32, i32* @BIO_MAX_PAGES, align 4
  store i32 %57, i32* %15, align 4
  br label %58

58:                                               ; preds = %56, %41
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %15, align 4
  %63 = call %struct.bio* @bio_kmalloc(i32 %61, i32 %62)
  store %struct.bio* %63, %struct.bio** %12, align 8
  %64 = load %struct.bio*, %struct.bio** %12, align 8
  %65 = icmp ne %struct.bio* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %58
  br label %247

67:                                               ; preds = %58
  store i32 0, i32* %14, align 4
  %68 = load %struct.rq_map_data*, %struct.rq_map_data** %7, align 8
  %69 = icmp ne %struct.rq_map_data* %68, null
  br i1 %69, label %70, label %80

70:                                               ; preds = %67
  %71 = load %struct.rq_map_data*, %struct.rq_map_data** %7, align 8
  %72 = getelementptr inbounds %struct.rq_map_data, %struct.rq_map_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 1, %73
  store i32 %74, i32* %15, align 4
  %75 = load %struct.rq_map_data*, %struct.rq_map_data** %7, align 8
  %76 = getelementptr inbounds %struct.rq_map_data, %struct.rq_map_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @PAGE_SIZE, align 4
  %79 = sdiv i32 %77, %78
  store i32 %79, i32* %13, align 4
  br label %80

80:                                               ; preds = %70, %67
  br label %81

81:                                               ; preds = %155, %80
  %82 = load i32, i32* %16, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %159

84:                                               ; preds = %81
  %85 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %85, i32* %18, align 4
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* %18, align 4
  %88 = sub i32 %87, %86
  store i32 %88, i32* %18, align 4
  %89 = load i32, i32* %18, align 4
  %90 = load i32, i32* %16, align 4
  %91 = icmp ugt i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %84
  %93 = load i32, i32* %16, align 4
  store i32 %93, i32* %18, align 4
  br label %94

94:                                               ; preds = %92, %84
  %95 = load %struct.rq_map_data*, %struct.rq_map_data** %7, align 8
  %96 = icmp ne %struct.rq_map_data* %95, null
  br i1 %96, label %97, label %126

97:                                               ; preds = %94
  %98 = load i32, i32* %13, align 4
  %99 = load %struct.rq_map_data*, %struct.rq_map_data** %7, align 8
  %100 = getelementptr inbounds %struct.rq_map_data, %struct.rq_map_data* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %15, align 4
  %103 = mul nsw i32 %101, %102
  %104 = icmp eq i32 %98, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %97
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %14, align 4
  br label %159

108:                                              ; preds = %97
  %109 = load %struct.rq_map_data*, %struct.rq_map_data** %7, align 8
  %110 = getelementptr inbounds %struct.rq_map_data, %struct.rq_map_data* %109, i32 0, i32 5
  %111 = load %struct.page**, %struct.page*** %110, align 8
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %15, align 4
  %114 = sdiv i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.page*, %struct.page** %111, i64 %115
  %117 = load %struct.page*, %struct.page** %116, align 8
  store %struct.page* %117, %struct.page** %11, align 8
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %15, align 4
  %120 = srem i32 %118, %119
  %121 = load %struct.page*, %struct.page** %11, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds %struct.page, %struct.page* %121, i64 %122
  store %struct.page* %123, %struct.page** %11, align 8
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %13, align 4
  br label %139

126:                                              ; preds = %94
  %127 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %128 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %9, align 4
  %131 = or i32 %129, %130
  %132 = call %struct.page* @alloc_page(i32 %131)
  store %struct.page* %132, %struct.page** %11, align 8
  %133 = load %struct.page*, %struct.page** %11, align 8
  %134 = icmp ne %struct.page* %133, null
  br i1 %134, label %138, label %135

135:                                              ; preds = %126
  %136 = load i32, i32* @ENOMEM, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %14, align 4
  br label %159

138:                                              ; preds = %126
  br label %139

139:                                              ; preds = %138, %108
  %140 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %141 = load %struct.bio*, %struct.bio** %12, align 8
  %142 = load %struct.page*, %struct.page** %11, align 8
  %143 = load i32, i32* %18, align 4
  %144 = load i32, i32* %17, align 4
  %145 = call i32 @bio_add_pc_page(%struct.request_queue* %140, %struct.bio* %141, %struct.page* %142, i32 %143, i32 %144)
  %146 = load i32, i32* %18, align 4
  %147 = icmp ult i32 %145, %146
  br i1 %147, label %148, label %155

148:                                              ; preds = %139
  %149 = load %struct.rq_map_data*, %struct.rq_map_data** %7, align 8
  %150 = icmp ne %struct.rq_map_data* %149, null
  br i1 %150, label %154, label %151

151:                                              ; preds = %148
  %152 = load %struct.page*, %struct.page** %11, align 8
  %153 = call i32 @__free_page(%struct.page* %152)
  br label %154

154:                                              ; preds = %151, %148
  br label %159

155:                                              ; preds = %139
  %156 = load i32, i32* %18, align 4
  %157 = load i32, i32* %16, align 4
  %158 = sub i32 %157, %156
  store i32 %158, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %81

159:                                              ; preds = %154, %135, %105, %81
  %160 = load i32, i32* %14, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %159
  br label %238

163:                                              ; preds = %159
  %164 = load %struct.rq_map_data*, %struct.rq_map_data** %7, align 8
  %165 = icmp ne %struct.rq_map_data* %164, null
  br i1 %165, label %166, label %177

166:                                              ; preds = %163
  %167 = load %struct.bio*, %struct.bio** %12, align 8
  %168 = getelementptr inbounds %struct.bio, %struct.bio* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.rq_map_data*, %struct.rq_map_data** %7, align 8
  %172 = getelementptr inbounds %struct.rq_map_data, %struct.rq_map_data* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = add nsw i64 %174, %170
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %172, align 8
  br label %177

177:                                              ; preds = %166, %163
  %178 = load %struct.iov_iter*, %struct.iov_iter** %8, align 8
  %179 = call i64 @iov_iter_rw(%struct.iov_iter* %178)
  %180 = load i64, i64* @WRITE, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %190

182:                                              ; preds = %177
  %183 = load %struct.rq_map_data*, %struct.rq_map_data** %7, align 8
  %184 = icmp ne %struct.rq_map_data* %183, null
  br i1 %184, label %185, label %198

185:                                              ; preds = %182
  %186 = load %struct.rq_map_data*, %struct.rq_map_data** %7, align 8
  %187 = getelementptr inbounds %struct.rq_map_data, %struct.rq_map_data* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %198

190:                                              ; preds = %185, %177
  %191 = load %struct.rq_map_data*, %struct.rq_map_data** %7, align 8
  %192 = icmp ne %struct.rq_map_data* %191, null
  br i1 %192, label %193, label %206

193:                                              ; preds = %190
  %194 = load %struct.rq_map_data*, %struct.rq_map_data** %7, align 8
  %195 = getelementptr inbounds %struct.rq_map_data, %struct.rq_map_data* %194, i32 0, i32 4
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %206

198:                                              ; preds = %193, %185, %182
  %199 = load %struct.bio*, %struct.bio** %12, align 8
  %200 = load %struct.iov_iter*, %struct.iov_iter** %8, align 8
  %201 = call i32 @bio_copy_from_iter(%struct.bio* %199, %struct.iov_iter* %200)
  store i32 %201, i32* %14, align 4
  %202 = load i32, i32* %14, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %198
  br label %238

205:                                              ; preds = %198
  br label %221

206:                                              ; preds = %193, %190
  %207 = load %struct.bio_map_data*, %struct.bio_map_data** %10, align 8
  %208 = getelementptr inbounds %struct.bio_map_data, %struct.bio_map_data* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %206
  %212 = load %struct.bio*, %struct.bio** %12, align 8
  %213 = call i32 @zero_fill_bio(%struct.bio* %212)
  br label %214

214:                                              ; preds = %211, %206
  %215 = load %struct.iov_iter*, %struct.iov_iter** %8, align 8
  %216 = load %struct.bio*, %struct.bio** %12, align 8
  %217 = getelementptr inbounds %struct.bio, %struct.bio* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = call i32 @iov_iter_advance(%struct.iov_iter* %215, i64 %219)
  br label %221

221:                                              ; preds = %214, %205
  %222 = load %struct.bio_map_data*, %struct.bio_map_data** %10, align 8
  %223 = load %struct.bio*, %struct.bio** %12, align 8
  %224 = getelementptr inbounds %struct.bio, %struct.bio* %223, i32 0, i32 0
  store %struct.bio_map_data* %222, %struct.bio_map_data** %224, align 8
  %225 = load %struct.rq_map_data*, %struct.rq_map_data** %7, align 8
  %226 = icmp ne %struct.rq_map_data* %225, null
  br i1 %226, label %227, label %236

227:                                              ; preds = %221
  %228 = load %struct.rq_map_data*, %struct.rq_map_data** %7, align 8
  %229 = getelementptr inbounds %struct.rq_map_data, %struct.rq_map_data* %228, i32 0, i32 3
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %227
  %233 = load %struct.bio*, %struct.bio** %12, align 8
  %234 = load i32, i32* @BIO_NULL_MAPPED, align 4
  %235 = call i32 @bio_set_flag(%struct.bio* %233, i32 %234)
  br label %236

236:                                              ; preds = %232, %227, %221
  %237 = load %struct.bio*, %struct.bio** %12, align 8
  store %struct.bio* %237, %struct.bio** %5, align 8
  br label %252

238:                                              ; preds = %204, %162
  %239 = load %struct.rq_map_data*, %struct.rq_map_data** %7, align 8
  %240 = icmp ne %struct.rq_map_data* %239, null
  br i1 %240, label %244, label %241

241:                                              ; preds = %238
  %242 = load %struct.bio*, %struct.bio** %12, align 8
  %243 = call i32 @bio_free_pages(%struct.bio* %242)
  br label %244

244:                                              ; preds = %241, %238
  %245 = load %struct.bio*, %struct.bio** %12, align 8
  %246 = call i32 @bio_put(%struct.bio* %245)
  br label %247

247:                                              ; preds = %244, %66
  %248 = load %struct.bio_map_data*, %struct.bio_map_data** %10, align 8
  %249 = call i32 @kfree(%struct.bio_map_data* %248)
  %250 = load i32, i32* %14, align 4
  %251 = call %struct.bio* @ERR_PTR(i32 %250)
  store %struct.bio* %251, %struct.bio** %5, align 8
  br label %252

252:                                              ; preds = %247, %236, %37
  %253 = load %struct.bio*, %struct.bio** %5, align 8
  ret %struct.bio* %253
}

declare dso_local i32 @offset_in_page(i32) #1

declare dso_local %struct.bio_map_data* @bio_alloc_map_data(%struct.iov_iter*, i32) #1

declare dso_local %struct.bio* @ERR_PTR(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local %struct.bio* @bio_kmalloc(i32, i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @bio_add_pc_page(%struct.request_queue*, %struct.bio*, %struct.page*, i32, i32) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i64 @iov_iter_rw(%struct.iov_iter*) #1

declare dso_local i32 @bio_copy_from_iter(%struct.bio*, %struct.iov_iter*) #1

declare dso_local i32 @zero_fill_bio(%struct.bio*) #1

declare dso_local i32 @iov_iter_advance(%struct.iov_iter*, i64) #1

declare dso_local i32 @bio_set_flag(%struct.bio*, i32) #1

declare dso_local i32 @bio_free_pages(%struct.bio*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @kfree(%struct.bio_map_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
