; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_hv-24x7.c_create_events_from_catalog.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_hv-24x7.c_create_events_from_catalog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_root = type { i32 }
%struct.attribute = type { i32 }
%struct.hv_24x7_catalog_page_0 = type { i32, i32, i32, i32, i32 }
%struct.hv_24x7_event_data = type { i64, i32, i32 }

@hv_page_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global %struct.rb_root zeroinitializer, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MAX_4K = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"invalid page count: %zu\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"cv %llu cl %zu eec %zu edo %zu edl %zu\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"invalid event data offs %zu and/or len %zu\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"event data %zu-%zu does not fit inside catalog 0-%zu\0A\00", align 1
@SIZE_MAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"event_entry_count %zu is invalid\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"could not allocate event data\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [46 x i8] c"Failed to get event data in page %zu: rc=%ld\0A\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"invalid event %zu (%.*s): group_record_len == 0, skipping\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"event %zu (%.*s) has invalid domain %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [90 x i8] c"event buffer ended before listed # of events were parsed (got %zu, wanted %zu, junk %zu)\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"event %zu (%.*s) creation failure, skipping\0A\00", align 1
@.str.11 = private unnamed_addr constant [77 x i8] c"read %zu catalog entries, created %zu event attrs (%zu failures), %zu descs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.attribute***, %struct.attribute***, %struct.attribute***)* @create_events_from_catalog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_events_from_catalog(%struct.attribute*** %0, %struct.attribute*** %1, %struct.attribute*** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.attribute***, align 8
  %6 = alloca %struct.attribute***, align 8
  %7 = alloca %struct.attribute***, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.attribute**, align 8
  %27 = alloca %struct.attribute**, align 8
  %28 = alloca %struct.attribute**, align 8
  %29 = alloca %struct.hv_24x7_catalog_page_0*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca %struct.hv_24x7_event_data*, align 8
  %34 = alloca %struct.rb_root, align 4
  %35 = alloca i32, align 4
  %36 = alloca i64, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i32, align 4
  %39 = alloca i8*, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  store %struct.attribute*** %0, %struct.attribute**** %5, align 8
  store %struct.attribute*** %1, %struct.attribute**** %6, align 8
  store %struct.attribute*** %2, %struct.attribute**** %7, align 8
  %42 = load i32, i32* @hv_page_cache, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.hv_24x7_catalog_page_0* @kmem_cache_alloc(i32 %42, i32 %43)
  store %struct.hv_24x7_catalog_page_0* %44, %struct.hv_24x7_catalog_page_0** %29, align 8
  %45 = load %struct.hv_24x7_catalog_page_0*, %struct.hv_24x7_catalog_page_0** %29, align 8
  %46 = bitcast %struct.hv_24x7_catalog_page_0* %45 to i8*
  store i8* %46, i8** %30, align 8
  %47 = bitcast %struct.rb_root* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 bitcast (%struct.rb_root* @RB_ROOT to i8*), i64 4, i1 false)
  store i32 0, i32* %35, align 4
  %48 = load i8*, i8** %30, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %3
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %35, align 4
  br label %427

53:                                               ; preds = %3
  %54 = load i8*, i8** %30, align 8
  %55 = call i64 @h_get_24x7_catalog_page(i8* %54, i32 0, i32 0)
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* %8, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %35, align 4
  br label %423

61:                                               ; preds = %53
  %62 = load %struct.hv_24x7_catalog_page_0*, %struct.hv_24x7_catalog_page_0** %29, align 8
  %63 = getelementptr inbounds %struct.hv_24x7_catalog_page_0, %struct.hv_24x7_catalog_page_0* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @be64_to_cpu(i32 %64)
  store i32 %65, i32* %25, align 4
  %66 = load %struct.hv_24x7_catalog_page_0*, %struct.hv_24x7_catalog_page_0** %29, align 8
  %67 = getelementptr inbounds %struct.hv_24x7_catalog_page_0, %struct.hv_24x7_catalog_page_0* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @be32_to_cpu(i32 %68)
  store i64 %69, i64* %10, align 8
  %70 = load i64, i64* @MAX_4K, align 8
  %71 = load i64, i64* %10, align 8
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %61
  %74 = load i64, i64* %10, align 8
  %75 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %74)
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %35, align 4
  br label %423

78:                                               ; preds = %61
  %79 = load i64, i64* %10, align 8
  %80 = mul i64 %79, 4096
  store i64 %80, i64* %9, align 8
  %81 = load %struct.hv_24x7_catalog_page_0*, %struct.hv_24x7_catalog_page_0** %29, align 8
  %82 = getelementptr inbounds %struct.hv_24x7_catalog_page_0, %struct.hv_24x7_catalog_page_0* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @be16_to_cpu(i32 %83)
  store i64 %84, i64* %11, align 8
  %85 = load %struct.hv_24x7_catalog_page_0*, %struct.hv_24x7_catalog_page_0** %29, align 8
  %86 = getelementptr inbounds %struct.hv_24x7_catalog_page_0, %struct.hv_24x7_catalog_page_0* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @be16_to_cpu(i32 %87)
  store i64 %88, i64* %13, align 8
  %89 = load %struct.hv_24x7_catalog_page_0*, %struct.hv_24x7_catalog_page_0** %29, align 8
  %90 = getelementptr inbounds %struct.hv_24x7_catalog_page_0, %struct.hv_24x7_catalog_page_0* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @be16_to_cpu(i32 %91)
  store i64 %92, i64* %12, align 8
  %93 = load i32, i32* %25, align 4
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* %9, align 8
  %96 = trunc i64 %95 to i32
  %97 = load i64, i64* %11, align 8
  %98 = load i64, i64* %13, align 8
  %99 = load i64, i64* %12, align 8
  %100 = call i32 (i8*, i64, i32, ...) @pr_devel(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %94, i32 %96, i64 %97, i64 %98, i64 %99)
  %101 = load i64, i64* @MAX_4K, align 8
  %102 = load i64, i64* %12, align 8
  %103 = icmp ult i64 %101, %102
  br i1 %103, label %114, label %104

104:                                              ; preds = %78
  %105 = load i64, i64* @MAX_4K, align 8
  %106 = load i64, i64* %13, align 8
  %107 = icmp ult i64 %105, %106
  br i1 %107, label %114, label %108

108:                                              ; preds = %104
  %109 = load i64, i64* @MAX_4K, align 8
  %110 = load i64, i64* %13, align 8
  %111 = sub i64 %109, %110
  %112 = load i64, i64* %12, align 8
  %113 = icmp ult i64 %111, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %108, %104, %78
  %115 = load i64, i64* %13, align 8
  %116 = load i64, i64* %12, align 8
  %117 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i64 %115, i64 %116)
  %118 = load i32, i32* @EIO, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %35, align 4
  br label %423

120:                                              ; preds = %108
  %121 = load i64, i64* %13, align 8
  %122 = load i64, i64* %12, align 8
  %123 = add i64 %121, %122
  %124 = load i64, i64* %10, align 8
  %125 = icmp ugt i64 %123, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %120
  %127 = load i64, i64* %13, align 8
  %128 = load i64, i64* %13, align 8
  %129 = load i64, i64* %12, align 8
  %130 = add i64 %128, %129
  %131 = load i64, i64* %10, align 8
  %132 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i64 %127, i64 %130, i64 %131)
  %133 = load i32, i32* @EIO, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %35, align 4
  br label %423

135:                                              ; preds = %120
  %136 = load i32, i32* @SIZE_MAX, align 4
  %137 = sub nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = load i64, i64* %11, align 8
  %140 = icmp ult i64 %138, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %135
  %142 = load i64, i64* %11, align 8
  %143 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i64 %142)
  %144 = load i32, i32* @EIO, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %35, align 4
  br label %423

146:                                              ; preds = %135
  %147 = load i64, i64* %12, align 8
  %148 = mul i64 %147, 4096
  store i64 %148, i64* %14, align 8
  %149 = load i64, i64* %14, align 8
  %150 = call i8* @vmalloc(i64 %149)
  store i8* %150, i8** %31, align 8
  %151 = load i8*, i8** %31, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %157, label %153

153:                                              ; preds = %146
  %154 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %155 = load i32, i32* @ENOMEM, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %35, align 4
  br label %423

157:                                              ; preds = %146
  %158 = load i8*, i8** %31, align 8
  %159 = load i64, i64* %14, align 8
  %160 = getelementptr i8, i8* %158, i64 %159
  store i8* %160, i8** %32, align 8
  %161 = load i32, i32* @PAGE_SIZE, align 4
  %162 = srem i32 %161, 4096
  %163 = call i32 @BUILD_BUG_ON(i32 %162)
  store i64 0, i64* %18, align 8
  br label %164

164:                                              ; preds = %190, %157
  %165 = load i64, i64* %18, align 8
  %166 = load i64, i64* %12, align 8
  %167 = icmp ult i64 %165, %166
  br i1 %167, label %168, label %193

168:                                              ; preds = %164
  %169 = load i8*, i8** %31, align 8
  %170 = load i64, i64* %18, align 8
  %171 = mul i64 %170, 4096
  %172 = getelementptr i8, i8* %169, i64 %171
  %173 = call i32 @vmalloc_to_phys(i8* %172)
  %174 = load i32, i32* %25, align 4
  %175 = load i64, i64* %18, align 8
  %176 = load i64, i64* %13, align 8
  %177 = add i64 %175, %176
  %178 = call i64 @h_get_24x7_catalog_page_(i32 %173, i32 %174, i64 %177)
  store i64 %178, i64* %8, align 8
  %179 = load i64, i64* %8, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %168
  %182 = load i64, i64* %18, align 8
  %183 = load i64, i64* %13, align 8
  %184 = add i64 %182, %183
  %185 = load i64, i64* %8, align 8
  %186 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i64 %184, i64 %185)
  %187 = load i32, i32* @EIO, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %35, align 4
  br label %420

189:                                              ; preds = %168
  br label %190

190:                                              ; preds = %189
  %191 = load i64, i64* %18, align 8
  %192 = add i64 %191, 1
  store i64 %192, i64* %18, align 8
  br label %164

193:                                              ; preds = %164
  store i64 0, i64* %15, align 8
  %194 = load i8*, i8** %31, align 8
  %195 = bitcast i8* %194 to %struct.hv_24x7_event_data*
  store %struct.hv_24x7_event_data* %195, %struct.hv_24x7_event_data** %33, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %19, align 8
  br label %196

196:                                              ; preds = %247, %193
  %197 = load %struct.hv_24x7_event_data*, %struct.hv_24x7_event_data** %33, align 8
  %198 = bitcast %struct.hv_24x7_event_data* %197 to i8*
  %199 = load i8*, i8** %31, align 8
  %200 = ptrtoint i8* %198 to i64
  %201 = ptrtoint i8* %199 to i64
  %202 = sub i64 %200, %201
  store i64 %202, i64* %36, align 8
  %203 = load %struct.hv_24x7_event_data*, %struct.hv_24x7_event_data** %33, align 8
  %204 = load i64, i64* %16, align 8
  %205 = load i64, i64* %14, align 8
  %206 = load i64, i64* %11, align 8
  %207 = load i64, i64* %36, align 8
  %208 = load i8*, i8** %32, align 8
  %209 = call i64 @catalog_event_len_validate(%struct.hv_24x7_event_data* %203, i64 %204, i64 %205, i64 %206, i64 %207, i8* %208)
  store i64 %209, i64* %24, align 8
  %210 = load i64, i64* %24, align 8
  %211 = icmp ult i64 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %196
  br label %255

213:                                              ; preds = %196
  %214 = load %struct.hv_24x7_event_data*, %struct.hv_24x7_event_data** %33, align 8
  %215 = call i8* @event_name(%struct.hv_24x7_event_data* %214, i32* %38)
  store i8* %215, i8** %37, align 8
  %216 = load %struct.hv_24x7_event_data*, %struct.hv_24x7_event_data** %33, align 8
  %217 = getelementptr inbounds %struct.hv_24x7_event_data, %struct.hv_24x7_event_data* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %220, label %227

220:                                              ; preds = %213
  %221 = load i64, i64* %16, align 8
  %222 = load i32, i32* %38, align 4
  %223 = load i8*, i8** %37, align 8
  %224 = call i32 (i8*, i64, i32, ...) @pr_devel(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0), i64 %221, i32 %222, i8* %223)
  %225 = load i64, i64* %15, align 8
  %226 = add i64 %225, 1
  store i64 %226, i64* %15, align 8
  br label %247

227:                                              ; preds = %213
  %228 = load %struct.hv_24x7_event_data*, %struct.hv_24x7_event_data** %33, align 8
  %229 = getelementptr inbounds %struct.hv_24x7_event_data, %struct.hv_24x7_event_data* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @catalog_entry_domain_is_valid(i32 %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %244, label %233

233:                                              ; preds = %227
  %234 = load i64, i64* %16, align 8
  %235 = load i32, i32* %38, align 4
  %236 = sext i32 %235 to i64
  %237 = load i8*, i8** %37, align 8
  %238 = load %struct.hv_24x7_event_data*, %struct.hv_24x7_event_data** %33, align 8
  %239 = getelementptr inbounds %struct.hv_24x7_event_data, %struct.hv_24x7_event_data* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = call i32 (i8*, i64, i64, ...) @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i64 %234, i64 %236, i8* %237, i32 %240)
  %242 = load i64, i64* %15, align 8
  %243 = add i64 %242, 1
  store i64 %243, i64* %15, align 8
  br label %247

244:                                              ; preds = %227
  %245 = load i64, i64* %19, align 8
  %246 = add i64 %245, 1
  store i64 %246, i64* %19, align 8
  br label %247

247:                                              ; preds = %244, %233, %220
  %248 = load i64, i64* %16, align 8
  %249 = add i64 %248, 1
  store i64 %249, i64* %16, align 8
  %250 = load %struct.hv_24x7_event_data*, %struct.hv_24x7_event_data** %33, align 8
  %251 = bitcast %struct.hv_24x7_event_data* %250 to i8*
  %252 = load i64, i64* %24, align 8
  %253 = getelementptr i8, i8* %251, i64 %252
  %254 = bitcast i8* %253 to %struct.hv_24x7_event_data*
  store %struct.hv_24x7_event_data* %254, %struct.hv_24x7_event_data** %33, align 8
  br label %196

255:                                              ; preds = %212
  %256 = load i64, i64* %16, align 8
  store i64 %256, i64* %20, align 8
  %257 = load i64, i64* %20, align 8
  %258 = load i64, i64* %11, align 8
  %259 = icmp ne i64 %257, %258
  br i1 %259, label %260, label %266

260:                                              ; preds = %255
  %261 = load i64, i64* %20, align 8
  %262 = load i64, i64* %11, align 8
  %263 = trunc i64 %262 to i32
  %264 = load i64, i64* %15, align 8
  %265 = call i32 (i8*, i64, i32, ...) @pr_warn(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.9, i64 0, i64 0), i64 %261, i32 %263, i64 %264)
  br label %266

266:                                              ; preds = %260, %255
  %267 = load i64, i64* %19, align 8
  %268 = add i64 %267, 1
  %269 = load i32, i32* @GFP_KERNEL, align 4
  %270 = call %struct.attribute** @kmalloc_array(i64 %268, i32 8, i32 %269)
  store %struct.attribute** %270, %struct.attribute*** %26, align 8
  %271 = load %struct.attribute**, %struct.attribute*** %26, align 8
  %272 = icmp ne %struct.attribute** %271, null
  br i1 %272, label %276, label %273

273:                                              ; preds = %266
  %274 = load i32, i32* @ENOMEM, align 4
  %275 = sub nsw i32 0, %274
  store i32 %275, i32* %35, align 4
  br label %420

276:                                              ; preds = %266
  %277 = load i64, i64* %16, align 8
  %278 = add i64 %277, 1
  %279 = load i32, i32* @GFP_KERNEL, align 4
  %280 = call %struct.attribute** @kmalloc_array(i64 %278, i32 8, i32 %279)
  store %struct.attribute** %280, %struct.attribute*** %27, align 8
  %281 = load %struct.attribute**, %struct.attribute*** %27, align 8
  %282 = icmp ne %struct.attribute** %281, null
  br i1 %282, label %286, label %283

283:                                              ; preds = %276
  %284 = load i32, i32* @ENOMEM, align 4
  %285 = sub nsw i32 0, %284
  store i32 %285, i32* %35, align 4
  br label %417

286:                                              ; preds = %276
  %287 = load i64, i64* %16, align 8
  %288 = add i64 %287, 1
  %289 = load i32, i32* @GFP_KERNEL, align 4
  %290 = call %struct.attribute** @kmalloc_array(i64 %288, i32 8, i32 %289)
  store %struct.attribute** %290, %struct.attribute*** %28, align 8
  %291 = load %struct.attribute**, %struct.attribute*** %28, align 8
  %292 = icmp ne %struct.attribute** %291, null
  br i1 %292, label %296, label %293

293:                                              ; preds = %286
  %294 = load i32, i32* @ENOMEM, align 4
  %295 = sub nsw i32 0, %294
  store i32 %295, i32* %35, align 4
  br label %414

296:                                              ; preds = %286
  store i64 0, i64* %15, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %21, align 8
  store i64 0, i64* %22, align 8
  %297 = load i8*, i8** %31, align 8
  %298 = bitcast i8* %297 to %struct.hv_24x7_event_data*
  store %struct.hv_24x7_event_data* %298, %struct.hv_24x7_event_data** %33, align 8
  store i64 0, i64* %16, align 8
  br label %299

299:                                              ; preds = %375, %296
  %300 = load i64, i64* %16, align 8
  %301 = load i64, i64* %20, align 8
  %302 = icmp ult i64 %300, %301
  br i1 %302, label %303, label %387

303:                                              ; preds = %299
  %304 = load %struct.hv_24x7_event_data*, %struct.hv_24x7_event_data** %33, align 8
  %305 = getelementptr inbounds %struct.hv_24x7_event_data, %struct.hv_24x7_event_data* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = icmp eq i64 %306, 0
  br i1 %307, label %308, label %309

308:                                              ; preds = %303
  br label %375

309:                                              ; preds = %303
  %310 = load %struct.hv_24x7_event_data*, %struct.hv_24x7_event_data** %33, align 8
  %311 = getelementptr inbounds %struct.hv_24x7_event_data, %struct.hv_24x7_event_data* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 8
  %313 = call i32 @catalog_entry_domain_is_valid(i32 %312)
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %316, label %315

315:                                              ; preds = %309
  br label %375

316:                                              ; preds = %309
  %317 = load %struct.hv_24x7_event_data*, %struct.hv_24x7_event_data** %33, align 8
  %318 = call i8* @event_name(%struct.hv_24x7_event_data* %317, i32* %40)
  store i8* %318, i8** %39, align 8
  %319 = load i8*, i8** %39, align 8
  %320 = load i32, i32* %40, align 4
  %321 = load %struct.hv_24x7_event_data*, %struct.hv_24x7_event_data** %33, align 8
  %322 = getelementptr inbounds %struct.hv_24x7_event_data, %struct.hv_24x7_event_data* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 8
  %324 = call i32 @event_uniq_add(%struct.rb_root* %34, i8* %319, i32 %320, i32 %323)
  store i32 %324, i32* %41, align 4
  %325 = load i64, i64* %16, align 8
  %326 = load %struct.attribute**, %struct.attribute*** %26, align 8
  %327 = load i64, i64* %17, align 8
  %328 = getelementptr inbounds %struct.attribute*, %struct.attribute** %326, i64 %327
  %329 = load %struct.hv_24x7_event_data*, %struct.hv_24x7_event_data** %33, align 8
  %330 = load i32, i32* %41, align 4
  %331 = call i64 @event_data_to_attrs(i64 %325, %struct.attribute** %328, %struct.hv_24x7_event_data* %329, i32 %330)
  store i64 %331, i64* %23, align 8
  %332 = load i64, i64* %23, align 8
  %333 = icmp ult i64 %332, 0
  br i1 %333, label %334, label %341

334:                                              ; preds = %316
  %335 = load i64, i64* %16, align 8
  %336 = load i32, i32* %40, align 4
  %337 = load i8*, i8** %39, align 8
  %338 = call i32 (i8*, i64, i32, ...) @pr_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i64 %335, i32 %336, i8* %337)
  %339 = load i64, i64* %15, align 8
  %340 = add i64 %339, 1
  store i64 %340, i64* %15, align 8
  br label %374

341:                                              ; preds = %316
  %342 = load i64, i64* %17, align 8
  %343 = add i64 %342, 1
  store i64 %343, i64* %17, align 8
  %344 = load %struct.hv_24x7_event_data*, %struct.hv_24x7_event_data** %33, align 8
  %345 = load i32, i32* %41, align 4
  %346 = call %struct.attribute* @event_to_desc_attr(%struct.hv_24x7_event_data* %344, i32 %345)
  %347 = load %struct.attribute**, %struct.attribute*** %27, align 8
  %348 = load i64, i64* %21, align 8
  %349 = getelementptr inbounds %struct.attribute*, %struct.attribute** %347, i64 %348
  store %struct.attribute* %346, %struct.attribute** %349, align 8
  %350 = load %struct.attribute**, %struct.attribute*** %27, align 8
  %351 = load i64, i64* %21, align 8
  %352 = getelementptr inbounds %struct.attribute*, %struct.attribute** %350, i64 %351
  %353 = load %struct.attribute*, %struct.attribute** %352, align 8
  %354 = icmp ne %struct.attribute* %353, null
  br i1 %354, label %355, label %358

355:                                              ; preds = %341
  %356 = load i64, i64* %21, align 8
  %357 = add i64 %356, 1
  store i64 %357, i64* %21, align 8
  br label %358

358:                                              ; preds = %355, %341
  %359 = load %struct.hv_24x7_event_data*, %struct.hv_24x7_event_data** %33, align 8
  %360 = load i32, i32* %41, align 4
  %361 = call %struct.attribute* @event_to_long_desc_attr(%struct.hv_24x7_event_data* %359, i32 %360)
  %362 = load %struct.attribute**, %struct.attribute*** %28, align 8
  %363 = load i64, i64* %22, align 8
  %364 = getelementptr inbounds %struct.attribute*, %struct.attribute** %362, i64 %363
  store %struct.attribute* %361, %struct.attribute** %364, align 8
  %365 = load %struct.attribute**, %struct.attribute*** %28, align 8
  %366 = load i64, i64* %22, align 8
  %367 = getelementptr inbounds %struct.attribute*, %struct.attribute** %365, i64 %366
  %368 = load %struct.attribute*, %struct.attribute** %367, align 8
  %369 = icmp ne %struct.attribute* %368, null
  br i1 %369, label %370, label %373

370:                                              ; preds = %358
  %371 = load i64, i64* %22, align 8
  %372 = add i64 %371, 1
  store i64 %372, i64* %22, align 8
  br label %373

373:                                              ; preds = %370, %358
  br label %374

374:                                              ; preds = %373, %334
  br label %375

375:                                              ; preds = %374, %315, %308
  %376 = load i64, i64* %16, align 8
  %377 = add i64 %376, 1
  store i64 %377, i64* %16, align 8
  %378 = load %struct.hv_24x7_event_data*, %struct.hv_24x7_event_data** %33, align 8
  %379 = getelementptr inbounds %struct.hv_24x7_event_data, %struct.hv_24x7_event_data* %378, i32 0, i32 2
  %380 = load i32, i32* %379, align 4
  %381 = call i64 @be16_to_cpu(i32 %380)
  store i64 %381, i64* %24, align 8
  %382 = load %struct.hv_24x7_event_data*, %struct.hv_24x7_event_data** %33, align 8
  %383 = bitcast %struct.hv_24x7_event_data* %382 to i8*
  %384 = load i64, i64* %24, align 8
  %385 = getelementptr i8, i8* %383, i64 %384
  %386 = bitcast i8* %385 to %struct.hv_24x7_event_data*
  store %struct.hv_24x7_event_data* %386, %struct.hv_24x7_event_data** %33, align 8
  br label %299

387:                                              ; preds = %299
  %388 = load i64, i64* %16, align 8
  %389 = load i64, i64* %17, align 8
  %390 = load i64, i64* %15, align 8
  %391 = load i64, i64* %21, align 8
  %392 = call i32 (i8*, i64, i64, ...) @pr_info(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.11, i64 0, i64 0), i64 %388, i64 %389, i64 %390, i64 %391)
  %393 = load %struct.attribute**, %struct.attribute*** %26, align 8
  %394 = load i64, i64* %17, align 8
  %395 = getelementptr inbounds %struct.attribute*, %struct.attribute** %393, i64 %394
  store %struct.attribute* null, %struct.attribute** %395, align 8
  %396 = load %struct.attribute**, %struct.attribute*** %27, align 8
  %397 = load i64, i64* %21, align 8
  %398 = getelementptr inbounds %struct.attribute*, %struct.attribute** %396, i64 %397
  store %struct.attribute* null, %struct.attribute** %398, align 8
  %399 = load %struct.attribute**, %struct.attribute*** %28, align 8
  %400 = load i64, i64* %22, align 8
  %401 = getelementptr inbounds %struct.attribute*, %struct.attribute** %399, i64 %400
  store %struct.attribute* null, %struct.attribute** %401, align 8
  %402 = call i32 @event_uniq_destroy(%struct.rb_root* %34)
  %403 = load i8*, i8** %31, align 8
  %404 = call i32 @vfree(i8* %403)
  %405 = load i32, i32* @hv_page_cache, align 4
  %406 = load i8*, i8** %30, align 8
  %407 = call i32 @kmem_cache_free(i32 %405, i8* %406)
  %408 = load %struct.attribute**, %struct.attribute*** %26, align 8
  %409 = load %struct.attribute***, %struct.attribute**** %5, align 8
  store %struct.attribute** %408, %struct.attribute*** %409, align 8
  %410 = load %struct.attribute**, %struct.attribute*** %27, align 8
  %411 = load %struct.attribute***, %struct.attribute**** %6, align 8
  store %struct.attribute** %410, %struct.attribute*** %411, align 8
  %412 = load %struct.attribute**, %struct.attribute*** %28, align 8
  %413 = load %struct.attribute***, %struct.attribute**** %7, align 8
  store %struct.attribute** %412, %struct.attribute*** %413, align 8
  store i32 0, i32* %4, align 4
  br label %432

414:                                              ; preds = %293
  %415 = load %struct.attribute**, %struct.attribute*** %27, align 8
  %416 = call i32 @kfree(%struct.attribute** %415)
  br label %417

417:                                              ; preds = %414, %283
  %418 = load %struct.attribute**, %struct.attribute*** %26, align 8
  %419 = call i32 @kfree(%struct.attribute** %418)
  br label %420

420:                                              ; preds = %417, %273, %181
  %421 = load i8*, i8** %31, align 8
  %422 = call i32 @vfree(i8* %421)
  br label %423

423:                                              ; preds = %420, %153, %141, %126, %114, %73, %58
  %424 = load i32, i32* @hv_page_cache, align 4
  %425 = load i8*, i8** %30, align 8
  %426 = call i32 @kmem_cache_free(i32 %424, i8* %425)
  br label %427

427:                                              ; preds = %423, %50
  %428 = load %struct.attribute***, %struct.attribute**** %5, align 8
  store %struct.attribute** null, %struct.attribute*** %428, align 8
  %429 = load %struct.attribute***, %struct.attribute**** %6, align 8
  store %struct.attribute** null, %struct.attribute*** %429, align 8
  %430 = load %struct.attribute***, %struct.attribute**** %7, align 8
  store %struct.attribute** null, %struct.attribute*** %430, align 8
  %431 = load i32, i32* %35, align 4
  store i32 %431, i32* %4, align 4
  br label %432

432:                                              ; preds = %427, %387
  %433 = load i32, i32* %4, align 4
  ret i32 %433
}

declare dso_local %struct.hv_24x7_catalog_page_0* @kmem_cache_alloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @h_get_24x7_catalog_page(i8*, i32, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @pr_devel(i8*, i64, i32, ...) #1

declare dso_local i8* @vmalloc(i64) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @h_get_24x7_catalog_page_(i32, i32, i64) #1

declare dso_local i32 @vmalloc_to_phys(i8*) #1

declare dso_local i64 @catalog_event_len_validate(%struct.hv_24x7_event_data*, i64, i64, i64, i64, i8*) #1

declare dso_local i8* @event_name(%struct.hv_24x7_event_data*, i32*) #1

declare dso_local i32 @catalog_entry_domain_is_valid(i32) #1

declare dso_local i32 @pr_info(i8*, i64, i64, ...) #1

declare dso_local i32 @pr_warn(i8*, i64, i32, ...) #1

declare dso_local %struct.attribute** @kmalloc_array(i64, i32, i32) #1

declare dso_local i32 @event_uniq_add(%struct.rb_root*, i8*, i32, i32) #1

declare dso_local i64 @event_data_to_attrs(i64, %struct.attribute**, %struct.hv_24x7_event_data*, i32) #1

declare dso_local %struct.attribute* @event_to_desc_attr(%struct.hv_24x7_event_data*, i32) #1

declare dso_local %struct.attribute* @event_to_long_desc_attr(%struct.hv_24x7_event_data*, i32) #1

declare dso_local i32 @event_uniq_destroy(%struct.rb_root*) #1

declare dso_local i32 @vfree(i8*) #1

declare dso_local i32 @kmem_cache_free(i32, i8*) #1

declare dso_local i32 @kfree(%struct.attribute**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
