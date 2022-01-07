; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_gmap_shadow_pgt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_gmap_shadow_pgt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gmap = type { i32, i32, i32 }
%struct.page = type { i64, i32 }

@_SEGMENT_ENTRY_LARGE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@_SEGMENT_ENTRY_ORIGIN = common dso_local global i64 0, align 8
@GMAP_SHADOW_FAKE_TABLE = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@_SEGMENT_ENTRY_INVALID = common dso_local global i64 0, align 8
@_SEGMENT_ENTRY = common dso_local global i64 0, align 8
@_SEGMENT_ENTRY_PROTECT = common dso_local global i64 0, align 8
@_SEGMENT_MASK = common dso_local global i64 0, align 8
@_SHADOW_RMAP_SEGMENT = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gmap_shadow_pgt(%struct.gmap* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gmap*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca i32, align 4
  store %struct.gmap* %0, %struct.gmap** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.gmap*, %struct.gmap** %6, align 8
  %17 = call i32 @gmap_is_shadow(%struct.gmap* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @_SEGMENT_ENTRY_LARGE, align 8
  %22 = and i64 %20, %21
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %19, %4
  %25 = phi i1 [ true, %4 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.gmap*, %struct.gmap** %6, align 8
  %29 = getelementptr inbounds %struct.gmap, %struct.gmap* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.page* @page_table_alloc_pgste(i32 %30)
  store %struct.page* %31, %struct.page** %14, align 8
  %32 = load %struct.page*, %struct.page** %14, align 8
  %33 = icmp ne %struct.page* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %24
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %175

37:                                               ; preds = %24
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @_SEGMENT_ENTRY_ORIGIN, align 8
  %40 = and i64 %38, %39
  %41 = load %struct.page*, %struct.page** %14, align 8
  %42 = getelementptr inbounds %struct.page, %struct.page* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load i64, i64* @GMAP_SHADOW_FAKE_TABLE, align 8
  %47 = load %struct.page*, %struct.page** %14, align 8
  %48 = getelementptr inbounds %struct.page, %struct.page* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = or i64 %49, %46
  store i64 %50, i64* %48, align 8
  br label %51

51:                                               ; preds = %45, %37
  %52 = load %struct.page*, %struct.page** %14, align 8
  %53 = call i64 @page_to_phys(%struct.page* %52)
  %54 = inttoptr i64 %53 to i64*
  store i64* %54, i64** %12, align 8
  %55 = load %struct.gmap*, %struct.gmap** %6, align 8
  %56 = getelementptr inbounds %struct.gmap, %struct.gmap* %55, i32 0, i32 0
  %57 = call i32 @spin_lock(i32* %56)
  %58 = load %struct.gmap*, %struct.gmap** %6, align 8
  %59 = load i64, i64* %7, align 8
  %60 = call i64* @gmap_table_walk(%struct.gmap* %58, i64 %59, i32 1)
  store i64* %60, i64** %13, align 8
  %61 = load i64*, i64** %13, align 8
  %62 = icmp ne i64* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %51
  %64 = load i32, i32* @EAGAIN, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %15, align 4
  br label %168

66:                                               ; preds = %51
  %67 = load i64*, i64** %13, align 8
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @_SEGMENT_ENTRY_INVALID, align 8
  %70 = and i64 %68, %69
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %66
  store i32 0, i32* %15, align 4
  br label %168

73:                                               ; preds = %66
  %74 = load i64*, i64** %13, align 8
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @_SEGMENT_ENTRY_ORIGIN, align 8
  %77 = and i64 %75, %76
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i32, i32* @EAGAIN, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %15, align 4
  br label %168

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %82
  %84 = load i64*, i64** %12, align 8
  %85 = ptrtoint i64* %84 to i64
  %86 = load i64, i64* @_SEGMENT_ENTRY, align 8
  %87 = or i64 %85, %86
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* @_SEGMENT_ENTRY_PROTECT, align 8
  %90 = and i64 %88, %89
  %91 = or i64 %87, %90
  %92 = load i64, i64* @_SEGMENT_ENTRY_INVALID, align 8
  %93 = or i64 %91, %92
  %94 = load i64*, i64** %13, align 8
  store i64 %93, i64* %94, align 8
  %95 = load %struct.page*, %struct.page** %14, align 8
  %96 = getelementptr inbounds %struct.page, %struct.page* %95, i32 0, i32 1
  %97 = load %struct.gmap*, %struct.gmap** %6, align 8
  %98 = getelementptr inbounds %struct.gmap, %struct.gmap* %97, i32 0, i32 1
  %99 = call i32 @list_add(i32* %96, i32* %98)
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %83
  %103 = load i64, i64* @_SEGMENT_ENTRY_INVALID, align 8
  %104 = xor i64 %103, -1
  %105 = load i64*, i64** %13, align 8
  %106 = load i64, i64* %105, align 8
  %107 = and i64 %106, %104
  store i64 %107, i64* %105, align 8
  %108 = load %struct.gmap*, %struct.gmap** %6, align 8
  %109 = getelementptr inbounds %struct.gmap, %struct.gmap* %108, i32 0, i32 0
  %110 = call i32 @spin_unlock(i32* %109)
  store i32 0, i32* %5, align 4
  br label %175

111:                                              ; preds = %83
  %112 = load %struct.gmap*, %struct.gmap** %6, align 8
  %113 = getelementptr inbounds %struct.gmap, %struct.gmap* %112, i32 0, i32 0
  %114 = call i32 @spin_unlock(i32* %113)
  %115 = load i64, i64* %7, align 8
  %116 = load i64, i64* @_SEGMENT_MASK, align 8
  %117 = and i64 %115, %116
  %118 = load i64, i64* @_SHADOW_RMAP_SEGMENT, align 8
  %119 = or i64 %117, %118
  store i64 %119, i64* %10, align 8
  %120 = load i64, i64* %8, align 8
  %121 = load i64, i64* @_SEGMENT_ENTRY_ORIGIN, align 8
  %122 = and i64 %120, %121
  %123 = load i64, i64* @PAGE_MASK, align 8
  %124 = and i64 %122, %123
  store i64 %124, i64* %11, align 8
  %125 = load %struct.gmap*, %struct.gmap** %6, align 8
  %126 = load i64, i64* %10, align 8
  %127 = load i64, i64* %11, align 8
  %128 = load i32, i32* @PAGE_SIZE, align 4
  %129 = call i32 @gmap_protect_rmap(%struct.gmap* %125, i64 %126, i64 %127, i32 %128)
  store i32 %129, i32* %15, align 4
  %130 = load %struct.gmap*, %struct.gmap** %6, align 8
  %131 = getelementptr inbounds %struct.gmap, %struct.gmap* %130, i32 0, i32 0
  %132 = call i32 @spin_lock(i32* %131)
  %133 = load i32, i32* %15, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %159, label %135

135:                                              ; preds = %111
  %136 = load %struct.gmap*, %struct.gmap** %6, align 8
  %137 = load i64, i64* %7, align 8
  %138 = call i64* @gmap_table_walk(%struct.gmap* %136, i64 %137, i32 1)
  store i64* %138, i64** %13, align 8
  %139 = load i64*, i64** %13, align 8
  %140 = icmp ne i64* %139, null
  br i1 %140, label %141, label %149

141:                                              ; preds = %135
  %142 = load i64*, i64** %13, align 8
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @_SEGMENT_ENTRY_ORIGIN, align 8
  %145 = and i64 %143, %144
  %146 = load i64*, i64** %12, align 8
  %147 = ptrtoint i64* %146 to i64
  %148 = icmp ne i64 %145, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %141, %135
  %150 = load i32, i32* @EAGAIN, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %15, align 4
  br label %158

152:                                              ; preds = %141
  %153 = load i64, i64* @_SEGMENT_ENTRY_INVALID, align 8
  %154 = xor i64 %153, -1
  %155 = load i64*, i64** %13, align 8
  %156 = load i64, i64* %155, align 8
  %157 = and i64 %156, %154
  store i64 %157, i64* %155, align 8
  br label %158

158:                                              ; preds = %152, %149
  br label %163

159:                                              ; preds = %111
  %160 = load %struct.gmap*, %struct.gmap** %6, align 8
  %161 = load i64, i64* %10, align 8
  %162 = call i32 @gmap_unshadow_pgt(%struct.gmap* %160, i64 %161)
  br label %163

163:                                              ; preds = %159, %158
  %164 = load %struct.gmap*, %struct.gmap** %6, align 8
  %165 = getelementptr inbounds %struct.gmap, %struct.gmap* %164, i32 0, i32 0
  %166 = call i32 @spin_unlock(i32* %165)
  %167 = load i32, i32* %15, align 4
  store i32 %167, i32* %5, align 4
  br label %175

168:                                              ; preds = %79, %72, %63
  %169 = load %struct.gmap*, %struct.gmap** %6, align 8
  %170 = getelementptr inbounds %struct.gmap, %struct.gmap* %169, i32 0, i32 0
  %171 = call i32 @spin_unlock(i32* %170)
  %172 = load %struct.page*, %struct.page** %14, align 8
  %173 = call i32 @page_table_free_pgste(%struct.page* %172)
  %174 = load i32, i32* %15, align 4
  store i32 %174, i32* %5, align 4
  br label %175

175:                                              ; preds = %168, %163, %102, %34
  %176 = load i32, i32* %5, align 4
  ret i32 %176
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @gmap_is_shadow(%struct.gmap*) #1

declare dso_local %struct.page* @page_table_alloc_pgste(i32) #1

declare dso_local i64 @page_to_phys(%struct.page*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64* @gmap_table_walk(%struct.gmap*, i64, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @gmap_protect_rmap(%struct.gmap*, i64, i64, i32) #1

declare dso_local i32 @gmap_unshadow_pgt(%struct.gmap*, i64) #1

declare dso_local i32 @page_table_free_pgste(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
