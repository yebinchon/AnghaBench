; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_gmap_shadow_sgt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_gmap_shadow_sgt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gmap = type { i32, i32, i32 }
%struct.page = type { i64, i32 }

@_REGION3_ENTRY_LARGE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@CRST_ALLOC_ORDER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@_REGION_ENTRY_ORIGIN = common dso_local global i64 0, align 8
@GMAP_SHADOW_FAKE_TABLE = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@_REGION_ENTRY_INVALID = common dso_local global i64 0, align 8
@_SEGMENT_ENTRY_EMPTY = common dso_local global i32 0, align 4
@_REGION_ENTRY_LENGTH = common dso_local global i64 0, align 8
@_REGION_ENTRY_TYPE_R3 = common dso_local global i64 0, align 8
@_REGION_ENTRY_PROTECT = common dso_local global i64 0, align 8
@_REGION3_MASK = common dso_local global i64 0, align 8
@_SHADOW_RMAP_REGION3 = common dso_local global i64 0, align 8
@_REGION_ENTRY_OFFSET = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gmap_shadow_sgt(%struct.gmap* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gmap*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca %struct.page*, align 8
  %17 = alloca i32, align 4
  store %struct.gmap* %0, %struct.gmap** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.gmap*, %struct.gmap** %6, align 8
  %19 = call i32 @gmap_is_shadow(%struct.gmap* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @_REGION3_ENTRY_LARGE, align 8
  %24 = and i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %21, %4
  %27 = phi i1 [ true, %4 ], [ %25, %21 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = load i32, i32* @CRST_ALLOC_ORDER, align 4
  %32 = call %struct.page* @alloc_pages(i32 %30, i32 %31)
  store %struct.page* %32, %struct.page** %16, align 8
  %33 = load %struct.page*, %struct.page** %16, align 8
  %34 = icmp ne %struct.page* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %204

38:                                               ; preds = %26
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @_REGION_ENTRY_ORIGIN, align 8
  %41 = and i64 %39, %40
  %42 = load %struct.page*, %struct.page** %16, align 8
  %43 = getelementptr inbounds %struct.page, %struct.page* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %38
  %47 = load i64, i64* @GMAP_SHADOW_FAKE_TABLE, align 8
  %48 = load %struct.page*, %struct.page** %16, align 8
  %49 = getelementptr inbounds %struct.page, %struct.page* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = or i64 %50, %47
  store i64 %51, i64* %49, align 8
  br label %52

52:                                               ; preds = %46, %38
  %53 = load %struct.page*, %struct.page** %16, align 8
  %54 = call i64 @page_to_phys(%struct.page* %53)
  %55 = inttoptr i64 %54 to i64*
  store i64* %55, i64** %14, align 8
  %56 = load %struct.gmap*, %struct.gmap** %6, align 8
  %57 = getelementptr inbounds %struct.gmap, %struct.gmap* %56, i32 0, i32 1
  %58 = call i32 @spin_lock(i32* %57)
  %59 = load %struct.gmap*, %struct.gmap** %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i64* @gmap_table_walk(%struct.gmap* %59, i64 %60, i32 2)
  store i64* %61, i64** %15, align 8
  %62 = load i64*, i64** %15, align 8
  %63 = icmp ne i64* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %52
  %65 = load i32, i32* @EAGAIN, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %17, align 4
  br label %196

67:                                               ; preds = %52
  %68 = load i64*, i64** %15, align 8
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @_REGION_ENTRY_INVALID, align 8
  %71 = and i64 %69, %70
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %67
  store i32 0, i32* %17, align 4
  br label %196

74:                                               ; preds = %67
  %75 = load i64*, i64** %15, align 8
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @_REGION_ENTRY_ORIGIN, align 8
  %78 = and i64 %76, %77
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i32, i32* @EAGAIN, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %17, align 4
  br label %196

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83
  %85 = load i64*, i64** %14, align 8
  %86 = load i32, i32* @_SEGMENT_ENTRY_EMPTY, align 4
  %87 = call i32 @crst_table_init(i64* %85, i32 %86)
  %88 = load i64*, i64** %14, align 8
  %89 = ptrtoint i64* %88 to i64
  %90 = load i64, i64* @_REGION_ENTRY_LENGTH, align 8
  %91 = or i64 %89, %90
  %92 = load i64, i64* @_REGION_ENTRY_TYPE_R3, align 8
  %93 = or i64 %91, %92
  %94 = load i64, i64* @_REGION_ENTRY_INVALID, align 8
  %95 = or i64 %93, %94
  %96 = load i64*, i64** %15, align 8
  store i64 %95, i64* %96, align 8
  %97 = load %struct.gmap*, %struct.gmap** %6, align 8
  %98 = getelementptr inbounds %struct.gmap, %struct.gmap* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp sge i32 %99, 1
  br i1 %100, label %101, label %108

101:                                              ; preds = %84
  %102 = load i64, i64* %8, align 8
  %103 = load i64, i64* @_REGION_ENTRY_PROTECT, align 8
  %104 = and i64 %102, %103
  %105 = load i64*, i64** %15, align 8
  %106 = load i64, i64* %105, align 8
  %107 = or i64 %106, %104
  store i64 %107, i64* %105, align 8
  br label %108

108:                                              ; preds = %101, %84
  %109 = load %struct.page*, %struct.page** %16, align 8
  %110 = getelementptr inbounds %struct.page, %struct.page* %109, i32 0, i32 1
  %111 = load %struct.gmap*, %struct.gmap** %6, align 8
  %112 = getelementptr inbounds %struct.gmap, %struct.gmap* %111, i32 0, i32 2
  %113 = call i32 @list_add(i32* %110, i32* %112)
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %108
  %117 = load i64, i64* @_REGION_ENTRY_INVALID, align 8
  %118 = xor i64 %117, -1
  %119 = load i64*, i64** %15, align 8
  %120 = load i64, i64* %119, align 8
  %121 = and i64 %120, %118
  store i64 %121, i64* %119, align 8
  %122 = load %struct.gmap*, %struct.gmap** %6, align 8
  %123 = getelementptr inbounds %struct.gmap, %struct.gmap* %122, i32 0, i32 1
  %124 = call i32 @spin_unlock(i32* %123)
  store i32 0, i32* %5, align 4
  br label %204

125:                                              ; preds = %108
  %126 = load %struct.gmap*, %struct.gmap** %6, align 8
  %127 = getelementptr inbounds %struct.gmap, %struct.gmap* %126, i32 0, i32 1
  %128 = call i32 @spin_unlock(i32* %127)
  %129 = load i64, i64* %7, align 8
  %130 = load i64, i64* @_REGION3_MASK, align 8
  %131 = and i64 %129, %130
  %132 = load i64, i64* @_SHADOW_RMAP_REGION3, align 8
  %133 = or i64 %131, %132
  store i64 %133, i64* %10, align 8
  %134 = load i64, i64* %8, align 8
  %135 = load i64, i64* @_REGION_ENTRY_ORIGIN, align 8
  %136 = and i64 %134, %135
  store i64 %136, i64* %11, align 8
  %137 = load i64, i64* %8, align 8
  %138 = load i64, i64* @_REGION_ENTRY_OFFSET, align 8
  %139 = and i64 %137, %138
  %140 = lshr i64 %139, 6
  %141 = load i64, i64* @PAGE_SIZE, align 8
  %142 = mul i64 %140, %141
  store i64 %142, i64* %12, align 8
  %143 = load i64, i64* %8, align 8
  %144 = load i64, i64* @_REGION_ENTRY_LENGTH, align 8
  %145 = and i64 %143, %144
  %146 = add i64 %145, 1
  %147 = load i64, i64* @PAGE_SIZE, align 8
  %148 = mul i64 %146, %147
  %149 = load i64, i64* %12, align 8
  %150 = sub i64 %148, %149
  store i64 %150, i64* %13, align 8
  %151 = load %struct.gmap*, %struct.gmap** %6, align 8
  %152 = load i64, i64* %10, align 8
  %153 = load i64, i64* %11, align 8
  %154 = load i64, i64* %12, align 8
  %155 = add i64 %153, %154
  %156 = load i64, i64* %13, align 8
  %157 = call i32 @gmap_protect_rmap(%struct.gmap* %151, i64 %152, i64 %155, i64 %156)
  store i32 %157, i32* %17, align 4
  %158 = load %struct.gmap*, %struct.gmap** %6, align 8
  %159 = getelementptr inbounds %struct.gmap, %struct.gmap* %158, i32 0, i32 1
  %160 = call i32 @spin_lock(i32* %159)
  %161 = load i32, i32* %17, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %187, label %163

163:                                              ; preds = %125
  %164 = load %struct.gmap*, %struct.gmap** %6, align 8
  %165 = load i64, i64* %7, align 8
  %166 = call i64* @gmap_table_walk(%struct.gmap* %164, i64 %165, i32 2)
  store i64* %166, i64** %15, align 8
  %167 = load i64*, i64** %15, align 8
  %168 = icmp ne i64* %167, null
  br i1 %168, label %169, label %177

169:                                              ; preds = %163
  %170 = load i64*, i64** %15, align 8
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @_REGION_ENTRY_ORIGIN, align 8
  %173 = and i64 %171, %172
  %174 = load i64*, i64** %14, align 8
  %175 = ptrtoint i64* %174 to i64
  %176 = icmp ne i64 %173, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %169, %163
  %178 = load i32, i32* @EAGAIN, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %17, align 4
  br label %186

180:                                              ; preds = %169
  %181 = load i64, i64* @_REGION_ENTRY_INVALID, align 8
  %182 = xor i64 %181, -1
  %183 = load i64*, i64** %15, align 8
  %184 = load i64, i64* %183, align 8
  %185 = and i64 %184, %182
  store i64 %185, i64* %183, align 8
  br label %186

186:                                              ; preds = %180, %177
  br label %191

187:                                              ; preds = %125
  %188 = load %struct.gmap*, %struct.gmap** %6, align 8
  %189 = load i64, i64* %10, align 8
  %190 = call i32 @gmap_unshadow_sgt(%struct.gmap* %188, i64 %189)
  br label %191

191:                                              ; preds = %187, %186
  %192 = load %struct.gmap*, %struct.gmap** %6, align 8
  %193 = getelementptr inbounds %struct.gmap, %struct.gmap* %192, i32 0, i32 1
  %194 = call i32 @spin_unlock(i32* %193)
  %195 = load i32, i32* %17, align 4
  store i32 %195, i32* %5, align 4
  br label %204

196:                                              ; preds = %80, %73, %64
  %197 = load %struct.gmap*, %struct.gmap** %6, align 8
  %198 = getelementptr inbounds %struct.gmap, %struct.gmap* %197, i32 0, i32 1
  %199 = call i32 @spin_unlock(i32* %198)
  %200 = load %struct.page*, %struct.page** %16, align 8
  %201 = load i32, i32* @CRST_ALLOC_ORDER, align 4
  %202 = call i32 @__free_pages(%struct.page* %200, i32 %201)
  %203 = load i32, i32* %17, align 4
  store i32 %203, i32* %5, align 4
  br label %204

204:                                              ; preds = %196, %191, %116, %35
  %205 = load i32, i32* %5, align 4
  ret i32 %205
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @gmap_is_shadow(%struct.gmap*) #1

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i64 @page_to_phys(%struct.page*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64* @gmap_table_walk(%struct.gmap*, i64, i32) #1

declare dso_local i32 @crst_table_init(i64*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @gmap_protect_rmap(%struct.gmap*, i64, i64, i64) #1

declare dso_local i32 @gmap_unshadow_sgt(%struct.gmap*, i64) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
