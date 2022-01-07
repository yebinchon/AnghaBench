; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/zram/extr_zram_drv.c___zram_bvec_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/zram/extr_zram_drv.c___zram_bvec_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zram = type { i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.bio_vec = type { %struct.page* }
%struct.page = type { i32 }
%struct.bio = type { i32 }
%struct.zcomp_strm = type { i8* }

@ZRAM_SAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Compression failed! err=%d\0A\00", align 1
@huge_class_size = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@__GFP_KSWAPD_RECLAIM = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@__GFP_MOVABLE = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ZS_MM_WO = common dso_local global i32 0, align 4
@ZRAM_HUGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zram*, %struct.bio_vec*, i32, %struct.bio*)* @__zram_bvec_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__zram_bvec_write(%struct.zram* %0, %struct.bio_vec* %1, i32 %2, %struct.bio* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.zram*, align 8
  %7 = alloca %struct.bio_vec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bio*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.zcomp_strm*, align 8
  %18 = alloca %struct.page*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.zram* %0, %struct.zram** %6, align 8
  store %struct.bio_vec* %1, %struct.bio_vec** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.bio* %3, %struct.bio** %9, align 8
  store i32 0, i32* %10, align 4
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %21 = load %struct.bio_vec*, %struct.bio_vec** %7, align 8
  %22 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %21, i32 0, i32 0
  %23 = load %struct.page*, %struct.page** %22, align 8
  store %struct.page* %23, %struct.page** %18, align 8
  store i64 0, i64* %19, align 8
  store i32 0, i32* %20, align 4
  %24 = load %struct.page*, %struct.page** %18, align 8
  %25 = call i8* @kmap_atomic(%struct.page* %24)
  store i8* %25, i8** %16, align 8
  %26 = load i8*, i8** %16, align 8
  %27 = call i64 @page_same_filled(i8* %26, i64* %19)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %4
  %30 = load i8*, i8** %16, align 8
  %31 = call i32 @kunmap_atomic(i8* %30)
  %32 = load i32, i32* @ZRAM_SAME, align 4
  store i32 %32, i32* %20, align 4
  %33 = load %struct.zram*, %struct.zram** %6, align 8
  %34 = getelementptr inbounds %struct.zram, %struct.zram* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 4
  %36 = call i32 @atomic64_inc(i32* %35)
  br label %190

37:                                               ; preds = %4
  %38 = load i8*, i8** %16, align 8
  %39 = call i32 @kunmap_atomic(i8* %38)
  br label %40

40:                                               ; preds = %114, %37
  %41 = load %struct.zram*, %struct.zram** %6, align 8
  %42 = getelementptr inbounds %struct.zram, %struct.zram* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.zcomp_strm* @zcomp_stream_get(i32 %43)
  store %struct.zcomp_strm* %44, %struct.zcomp_strm** %17, align 8
  %45 = load %struct.page*, %struct.page** %18, align 8
  %46 = call i8* @kmap_atomic(%struct.page* %45)
  store i8* %46, i8** %14, align 8
  %47 = load %struct.zcomp_strm*, %struct.zcomp_strm** %17, align 8
  %48 = load i8*, i8** %14, align 8
  %49 = call i32 @zcomp_compress(%struct.zcomp_strm* %47, i8* %48, i32* %13)
  store i32 %49, i32* %10, align 4
  %50 = load i8*, i8** %14, align 8
  %51 = call i32 @kunmap_atomic(i8* %50)
  %52 = load i32, i32* %10, align 4
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %40
  %56 = load %struct.zram*, %struct.zram** %6, align 8
  %57 = getelementptr inbounds %struct.zram, %struct.zram* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @zcomp_stream_put(i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load %struct.zram*, %struct.zram** %6, align 8
  %63 = getelementptr inbounds %struct.zram, %struct.zram* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* %12, align 8
  %66 = call i32 @zs_free(i32 %64, i64 %65)
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %5, align 4
  br label %239

68:                                               ; preds = %40
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @huge_class_size, align 4
  %71 = icmp uge i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %73, i32* %13, align 4
  br label %74

74:                                               ; preds = %72, %68
  %75 = load i64, i64* %12, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %90, label %77

77:                                               ; preds = %74
  %78 = load %struct.zram*, %struct.zram** %6, align 8
  %79 = getelementptr inbounds %struct.zram, %struct.zram* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* @__GFP_KSWAPD_RECLAIM, align 4
  %83 = load i32, i32* @__GFP_NOWARN, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @__GFP_HIGHMEM, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @__GFP_MOVABLE, align 4
  %88 = or i32 %86, %87
  %89 = call i64 @zs_malloc(i32 %80, i32 %81, i32 %88)
  store i64 %89, i64* %12, align 8
  br label %90

90:                                               ; preds = %77, %74
  %91 = load i64, i64* %12, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %118, label %93

93:                                               ; preds = %90
  %94 = load %struct.zram*, %struct.zram** %6, align 8
  %95 = getelementptr inbounds %struct.zram, %struct.zram* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @zcomp_stream_put(i32 %96)
  %98 = load %struct.zram*, %struct.zram** %6, align 8
  %99 = getelementptr inbounds %struct.zram, %struct.zram* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 3
  %101 = call i32 @atomic64_inc(i32* %100)
  %102 = load %struct.zram*, %struct.zram** %6, align 8
  %103 = getelementptr inbounds %struct.zram, %struct.zram* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* @GFP_NOIO, align 4
  %107 = load i32, i32* @__GFP_HIGHMEM, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @__GFP_MOVABLE, align 4
  %110 = or i32 %108, %109
  %111 = call i64 @zs_malloc(i32 %104, i32 %105, i32 %110)
  store i64 %111, i64* %12, align 8
  %112 = load i64, i64* %12, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %93
  br label %40

115:                                              ; preds = %93
  %116 = load i32, i32* @ENOMEM, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %5, align 4
  br label %239

118:                                              ; preds = %90
  %119 = load %struct.zram*, %struct.zram** %6, align 8
  %120 = getelementptr inbounds %struct.zram, %struct.zram* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @zs_get_total_pages(i32 %121)
  store i64 %122, i64* %11, align 8
  %123 = load %struct.zram*, %struct.zram** %6, align 8
  %124 = load i64, i64* %11, align 8
  %125 = call i32 @update_used_max(%struct.zram* %123, i64 %124)
  %126 = load %struct.zram*, %struct.zram** %6, align 8
  %127 = getelementptr inbounds %struct.zram, %struct.zram* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %148

130:                                              ; preds = %118
  %131 = load i64, i64* %11, align 8
  %132 = load %struct.zram*, %struct.zram** %6, align 8
  %133 = getelementptr inbounds %struct.zram, %struct.zram* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ugt i64 %131, %134
  br i1 %135, label %136, label %148

136:                                              ; preds = %130
  %137 = load %struct.zram*, %struct.zram** %6, align 8
  %138 = getelementptr inbounds %struct.zram, %struct.zram* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @zcomp_stream_put(i32 %139)
  %141 = load %struct.zram*, %struct.zram** %6, align 8
  %142 = getelementptr inbounds %struct.zram, %struct.zram* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load i64, i64* %12, align 8
  %145 = call i32 @zs_free(i32 %143, i64 %144)
  %146 = load i32, i32* @ENOMEM, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %5, align 4
  br label %239

148:                                              ; preds = %130, %118
  %149 = load %struct.zram*, %struct.zram** %6, align 8
  %150 = getelementptr inbounds %struct.zram, %struct.zram* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load i64, i64* %12, align 8
  %153 = load i32, i32* @ZS_MM_WO, align 4
  %154 = call i8* @zs_map_object(i32 %151, i64 %152, i32 %153)
  store i8* %154, i8** %15, align 8
  %155 = load %struct.zcomp_strm*, %struct.zcomp_strm** %17, align 8
  %156 = getelementptr inbounds %struct.zcomp_strm, %struct.zcomp_strm* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  store i8* %157, i8** %14, align 8
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* @PAGE_SIZE, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %148
  %162 = load %struct.page*, %struct.page** %18, align 8
  %163 = call i8* @kmap_atomic(%struct.page* %162)
  store i8* %163, i8** %14, align 8
  br label %164

164:                                              ; preds = %161, %148
  %165 = load i8*, i8** %15, align 8
  %166 = load i8*, i8** %14, align 8
  %167 = load i32, i32* %13, align 4
  %168 = call i32 @memcpy(i8* %165, i8* %166, i32 %167)
  %169 = load i32, i32* %13, align 4
  %170 = load i32, i32* @PAGE_SIZE, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %164
  %173 = load i8*, i8** %14, align 8
  %174 = call i32 @kunmap_atomic(i8* %173)
  br label %175

175:                                              ; preds = %172, %164
  %176 = load %struct.zram*, %struct.zram** %6, align 8
  %177 = getelementptr inbounds %struct.zram, %struct.zram* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @zcomp_stream_put(i32 %178)
  %180 = load %struct.zram*, %struct.zram** %6, align 8
  %181 = getelementptr inbounds %struct.zram, %struct.zram* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = load i64, i64* %12, align 8
  %184 = call i32 @zs_unmap_object(i32 %182, i64 %183)
  %185 = load i32, i32* %13, align 4
  %186 = load %struct.zram*, %struct.zram** %6, align 8
  %187 = getelementptr inbounds %struct.zram, %struct.zram* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 2
  %189 = call i32 @atomic64_add(i32 %185, i32* %188)
  br label %190

190:                                              ; preds = %175, %29
  %191 = load %struct.zram*, %struct.zram** %6, align 8
  %192 = load i32, i32* %8, align 4
  %193 = call i32 @zram_slot_lock(%struct.zram* %191, i32 %192)
  %194 = load %struct.zram*, %struct.zram** %6, align 8
  %195 = load i32, i32* %8, align 4
  %196 = call i32 @zram_free_page(%struct.zram* %194, i32 %195)
  %197 = load i32, i32* %13, align 4
  %198 = load i32, i32* @PAGE_SIZE, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %209

200:                                              ; preds = %190
  %201 = load %struct.zram*, %struct.zram** %6, align 8
  %202 = load i32, i32* %8, align 4
  %203 = load i32, i32* @ZRAM_HUGE, align 4
  %204 = call i32 @zram_set_flag(%struct.zram* %201, i32 %202, i32 %203)
  %205 = load %struct.zram*, %struct.zram** %6, align 8
  %206 = getelementptr inbounds %struct.zram, %struct.zram* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 1
  %208 = call i32 @atomic64_inc(i32* %207)
  br label %209

209:                                              ; preds = %200, %190
  %210 = load i32, i32* %20, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %221

212:                                              ; preds = %209
  %213 = load %struct.zram*, %struct.zram** %6, align 8
  %214 = load i32, i32* %8, align 4
  %215 = load i32, i32* %20, align 4
  %216 = call i32 @zram_set_flag(%struct.zram* %213, i32 %214, i32 %215)
  %217 = load %struct.zram*, %struct.zram** %6, align 8
  %218 = load i32, i32* %8, align 4
  %219 = load i64, i64* %19, align 8
  %220 = call i32 @zram_set_element(%struct.zram* %217, i32 %218, i64 %219)
  br label %230

221:                                              ; preds = %209
  %222 = load %struct.zram*, %struct.zram** %6, align 8
  %223 = load i32, i32* %8, align 4
  %224 = load i64, i64* %12, align 8
  %225 = call i32 @zram_set_handle(%struct.zram* %222, i32 %223, i64 %224)
  %226 = load %struct.zram*, %struct.zram** %6, align 8
  %227 = load i32, i32* %8, align 4
  %228 = load i32, i32* %13, align 4
  %229 = call i32 @zram_set_obj_size(%struct.zram* %226, i32 %227, i32 %228)
  br label %230

230:                                              ; preds = %221, %212
  %231 = load %struct.zram*, %struct.zram** %6, align 8
  %232 = load i32, i32* %8, align 4
  %233 = call i32 @zram_slot_unlock(%struct.zram* %231, i32 %232)
  %234 = load %struct.zram*, %struct.zram** %6, align 8
  %235 = getelementptr inbounds %struct.zram, %struct.zram* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 0
  %237 = call i32 @atomic64_inc(i32* %236)
  %238 = load i32, i32* %10, align 4
  store i32 %238, i32* %5, align 4
  br label %239

239:                                              ; preds = %230, %136, %115, %55
  %240 = load i32, i32* %5, align 4
  ret i32 %240
}

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i64 @page_same_filled(i8*, i64*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @atomic64_inc(i32*) #1

declare dso_local %struct.zcomp_strm* @zcomp_stream_get(i32) #1

declare dso_local i32 @zcomp_compress(%struct.zcomp_strm*, i8*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @zcomp_stream_put(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @zs_free(i32, i64) #1

declare dso_local i64 @zs_malloc(i32, i32, i32) #1

declare dso_local i64 @zs_get_total_pages(i32) #1

declare dso_local i32 @update_used_max(%struct.zram*, i64) #1

declare dso_local i8* @zs_map_object(i32, i64, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @zs_unmap_object(i32, i64) #1

declare dso_local i32 @atomic64_add(i32, i32*) #1

declare dso_local i32 @zram_slot_lock(%struct.zram*, i32) #1

declare dso_local i32 @zram_free_page(%struct.zram*, i32) #1

declare dso_local i32 @zram_set_flag(%struct.zram*, i32, i32) #1

declare dso_local i32 @zram_set_element(%struct.zram*, i32, i64) #1

declare dso_local i32 @zram_set_handle(%struct.zram*, i32, i64) #1

declare dso_local i32 @zram_set_obj_size(%struct.zram*, i32, i32) #1

declare dso_local i32 @zram_slot_unlock(%struct.zram*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
