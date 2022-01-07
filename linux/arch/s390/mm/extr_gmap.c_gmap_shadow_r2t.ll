; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_gmap_shadow_r2t.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_gmap_shadow_r2t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gmap = type { i32, i32, i32 }
%struct.page = type { i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@CRST_ALLOC_ORDER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@_REGION_ENTRY_ORIGIN = common dso_local global i64 0, align 8
@GMAP_SHADOW_FAKE_TABLE = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@_REGION_ENTRY_INVALID = common dso_local global i64 0, align 8
@_REGION2_ENTRY_EMPTY = common dso_local global i32 0, align 4
@_REGION_ENTRY_LENGTH = common dso_local global i64 0, align 8
@_REGION_ENTRY_TYPE_R1 = common dso_local global i64 0, align 8
@_REGION_ENTRY_PROTECT = common dso_local global i64 0, align 8
@_REGION1_MASK = common dso_local global i64 0, align 8
@_SHADOW_RMAP_REGION1 = common dso_local global i64 0, align 8
@_REGION_ENTRY_OFFSET = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gmap_shadow_r2t(%struct.gmap* %0, i64 %1, i64 %2, i32 %3) #0 {
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
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = load i32, i32* @CRST_ALLOC_ORDER, align 4
  %26 = call %struct.page* @alloc_pages(i32 %24, i32 %25)
  store %struct.page* %26, %struct.page** %16, align 8
  %27 = load %struct.page*, %struct.page** %16, align 8
  %28 = icmp ne %struct.page* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %198

32:                                               ; preds = %4
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @_REGION_ENTRY_ORIGIN, align 8
  %35 = and i64 %33, %34
  %36 = load %struct.page*, %struct.page** %16, align 8
  %37 = getelementptr inbounds %struct.page, %struct.page* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load i64, i64* @GMAP_SHADOW_FAKE_TABLE, align 8
  %42 = load %struct.page*, %struct.page** %16, align 8
  %43 = getelementptr inbounds %struct.page, %struct.page* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = or i64 %44, %41
  store i64 %45, i64* %43, align 8
  br label %46

46:                                               ; preds = %40, %32
  %47 = load %struct.page*, %struct.page** %16, align 8
  %48 = call i64 @page_to_phys(%struct.page* %47)
  %49 = inttoptr i64 %48 to i64*
  store i64* %49, i64** %14, align 8
  %50 = load %struct.gmap*, %struct.gmap** %6, align 8
  %51 = getelementptr inbounds %struct.gmap, %struct.gmap* %50, i32 0, i32 1
  %52 = call i32 @spin_lock(i32* %51)
  %53 = load %struct.gmap*, %struct.gmap** %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i64* @gmap_table_walk(%struct.gmap* %53, i64 %54, i32 4)
  store i64* %55, i64** %15, align 8
  %56 = load i64*, i64** %15, align 8
  %57 = icmp ne i64* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %46
  %59 = load i32, i32* @EAGAIN, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %17, align 4
  br label %190

61:                                               ; preds = %46
  %62 = load i64*, i64** %15, align 8
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @_REGION_ENTRY_INVALID, align 8
  %65 = and i64 %63, %64
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %61
  store i32 0, i32* %17, align 4
  br label %190

68:                                               ; preds = %61
  %69 = load i64*, i64** %15, align 8
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @_REGION_ENTRY_ORIGIN, align 8
  %72 = and i64 %70, %71
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32, i32* @EAGAIN, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %17, align 4
  br label %190

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %77
  %79 = load i64*, i64** %14, align 8
  %80 = load i32, i32* @_REGION2_ENTRY_EMPTY, align 4
  %81 = call i32 @crst_table_init(i64* %79, i32 %80)
  %82 = load i64*, i64** %14, align 8
  %83 = ptrtoint i64* %82 to i64
  %84 = load i64, i64* @_REGION_ENTRY_LENGTH, align 8
  %85 = or i64 %83, %84
  %86 = load i64, i64* @_REGION_ENTRY_TYPE_R1, align 8
  %87 = or i64 %85, %86
  %88 = load i64, i64* @_REGION_ENTRY_INVALID, align 8
  %89 = or i64 %87, %88
  %90 = load i64*, i64** %15, align 8
  store i64 %89, i64* %90, align 8
  %91 = load %struct.gmap*, %struct.gmap** %6, align 8
  %92 = getelementptr inbounds %struct.gmap, %struct.gmap* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp sge i32 %93, 1
  br i1 %94, label %95, label %102

95:                                               ; preds = %78
  %96 = load i64, i64* %8, align 8
  %97 = load i64, i64* @_REGION_ENTRY_PROTECT, align 8
  %98 = and i64 %96, %97
  %99 = load i64*, i64** %15, align 8
  %100 = load i64, i64* %99, align 8
  %101 = or i64 %100, %98
  store i64 %101, i64* %99, align 8
  br label %102

102:                                              ; preds = %95, %78
  %103 = load %struct.page*, %struct.page** %16, align 8
  %104 = getelementptr inbounds %struct.page, %struct.page* %103, i32 0, i32 1
  %105 = load %struct.gmap*, %struct.gmap** %6, align 8
  %106 = getelementptr inbounds %struct.gmap, %struct.gmap* %105, i32 0, i32 2
  %107 = call i32 @list_add(i32* %104, i32* %106)
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %102
  %111 = load i64, i64* @_REGION_ENTRY_INVALID, align 8
  %112 = xor i64 %111, -1
  %113 = load i64*, i64** %15, align 8
  %114 = load i64, i64* %113, align 8
  %115 = and i64 %114, %112
  store i64 %115, i64* %113, align 8
  %116 = load %struct.gmap*, %struct.gmap** %6, align 8
  %117 = getelementptr inbounds %struct.gmap, %struct.gmap* %116, i32 0, i32 1
  %118 = call i32 @spin_unlock(i32* %117)
  store i32 0, i32* %5, align 4
  br label %198

119:                                              ; preds = %102
  %120 = load %struct.gmap*, %struct.gmap** %6, align 8
  %121 = getelementptr inbounds %struct.gmap, %struct.gmap* %120, i32 0, i32 1
  %122 = call i32 @spin_unlock(i32* %121)
  %123 = load i64, i64* %7, align 8
  %124 = load i64, i64* @_REGION1_MASK, align 8
  %125 = and i64 %123, %124
  %126 = load i64, i64* @_SHADOW_RMAP_REGION1, align 8
  %127 = or i64 %125, %126
  store i64 %127, i64* %10, align 8
  %128 = load i64, i64* %8, align 8
  %129 = load i64, i64* @_REGION_ENTRY_ORIGIN, align 8
  %130 = and i64 %128, %129
  store i64 %130, i64* %11, align 8
  %131 = load i64, i64* %8, align 8
  %132 = load i64, i64* @_REGION_ENTRY_OFFSET, align 8
  %133 = and i64 %131, %132
  %134 = lshr i64 %133, 6
  %135 = load i64, i64* @PAGE_SIZE, align 8
  %136 = mul i64 %134, %135
  store i64 %136, i64* %12, align 8
  %137 = load i64, i64* %8, align 8
  %138 = load i64, i64* @_REGION_ENTRY_LENGTH, align 8
  %139 = and i64 %137, %138
  %140 = add i64 %139, 1
  %141 = load i64, i64* @PAGE_SIZE, align 8
  %142 = mul i64 %140, %141
  %143 = load i64, i64* %12, align 8
  %144 = sub i64 %142, %143
  store i64 %144, i64* %13, align 8
  %145 = load %struct.gmap*, %struct.gmap** %6, align 8
  %146 = load i64, i64* %10, align 8
  %147 = load i64, i64* %11, align 8
  %148 = load i64, i64* %12, align 8
  %149 = add i64 %147, %148
  %150 = load i64, i64* %13, align 8
  %151 = call i32 @gmap_protect_rmap(%struct.gmap* %145, i64 %146, i64 %149, i64 %150)
  store i32 %151, i32* %17, align 4
  %152 = load %struct.gmap*, %struct.gmap** %6, align 8
  %153 = getelementptr inbounds %struct.gmap, %struct.gmap* %152, i32 0, i32 1
  %154 = call i32 @spin_lock(i32* %153)
  %155 = load i32, i32* %17, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %181, label %157

157:                                              ; preds = %119
  %158 = load %struct.gmap*, %struct.gmap** %6, align 8
  %159 = load i64, i64* %7, align 8
  %160 = call i64* @gmap_table_walk(%struct.gmap* %158, i64 %159, i32 4)
  store i64* %160, i64** %15, align 8
  %161 = load i64*, i64** %15, align 8
  %162 = icmp ne i64* %161, null
  br i1 %162, label %163, label %171

163:                                              ; preds = %157
  %164 = load i64*, i64** %15, align 8
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @_REGION_ENTRY_ORIGIN, align 8
  %167 = and i64 %165, %166
  %168 = load i64*, i64** %14, align 8
  %169 = ptrtoint i64* %168 to i64
  %170 = icmp ne i64 %167, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %163, %157
  %172 = load i32, i32* @EAGAIN, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %17, align 4
  br label %180

174:                                              ; preds = %163
  %175 = load i64, i64* @_REGION_ENTRY_INVALID, align 8
  %176 = xor i64 %175, -1
  %177 = load i64*, i64** %15, align 8
  %178 = load i64, i64* %177, align 8
  %179 = and i64 %178, %176
  store i64 %179, i64* %177, align 8
  br label %180

180:                                              ; preds = %174, %171
  br label %185

181:                                              ; preds = %119
  %182 = load %struct.gmap*, %struct.gmap** %6, align 8
  %183 = load i64, i64* %10, align 8
  %184 = call i32 @gmap_unshadow_r2t(%struct.gmap* %182, i64 %183)
  br label %185

185:                                              ; preds = %181, %180
  %186 = load %struct.gmap*, %struct.gmap** %6, align 8
  %187 = getelementptr inbounds %struct.gmap, %struct.gmap* %186, i32 0, i32 1
  %188 = call i32 @spin_unlock(i32* %187)
  %189 = load i32, i32* %17, align 4
  store i32 %189, i32* %5, align 4
  br label %198

190:                                              ; preds = %74, %67, %58
  %191 = load %struct.gmap*, %struct.gmap** %6, align 8
  %192 = getelementptr inbounds %struct.gmap, %struct.gmap* %191, i32 0, i32 1
  %193 = call i32 @spin_unlock(i32* %192)
  %194 = load %struct.page*, %struct.page** %16, align 8
  %195 = load i32, i32* @CRST_ALLOC_ORDER, align 4
  %196 = call i32 @__free_pages(%struct.page* %194, i32 %195)
  %197 = load i32, i32* %17, align 4
  store i32 %197, i32* %5, align 4
  br label %198

198:                                              ; preds = %190, %185, %110, %29
  %199 = load i32, i32* %5, align 4
  ret i32 %199
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

declare dso_local i32 @gmap_unshadow_r2t(%struct.gmap*, i64) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
