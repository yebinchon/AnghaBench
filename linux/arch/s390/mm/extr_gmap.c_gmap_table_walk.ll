; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_gmap_table_walk.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_gmap_table_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gmap = type { i32, i64*, i64 }

@_ASCE_TYPE_MASK = common dso_local global i32 0, align 4
@_REGION1_INDEX = common dso_local global i64 0, align 8
@_REGION1_SHIFT = common dso_local global i64 0, align 8
@_REGION_ENTRY_INVALID = common dso_local global i64 0, align 8
@_REGION_ENTRY_ORIGIN = common dso_local global i64 0, align 8
@_REGION2_INDEX = common dso_local global i64 0, align 8
@_REGION2_SHIFT = common dso_local global i64 0, align 8
@_REGION3_INDEX = common dso_local global i64 0, align 8
@_REGION3_SHIFT = common dso_local global i64 0, align 8
@_SEGMENT_INDEX = common dso_local global i64 0, align 8
@_SEGMENT_SHIFT = common dso_local global i64 0, align 8
@_SEGMENT_ENTRY_ORIGIN = common dso_local global i64 0, align 8
@_PAGE_INDEX = common dso_local global i64 0, align 8
@_PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (%struct.gmap*, i64, i32)* @gmap_table_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @gmap_table_walk(%struct.gmap* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca %struct.gmap*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  store %struct.gmap* %0, %struct.gmap** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.gmap*, %struct.gmap** %5, align 8
  %10 = getelementptr inbounds %struct.gmap, %struct.gmap* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @_ASCE_TYPE_MASK, align 4
  %13 = and i32 %11, %12
  %14 = add nsw i32 %13, 4
  %15 = load i32, i32* %7, align 4
  %16 = mul nsw i32 %15, 4
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i64* null, i64** %4, align 8
  br label %158

19:                                               ; preds = %3
  %20 = load %struct.gmap*, %struct.gmap** %5, align 8
  %21 = call i64 @gmap_is_shadow(%struct.gmap* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load %struct.gmap*, %struct.gmap** %5, align 8
  %25 = getelementptr inbounds %struct.gmap, %struct.gmap* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i64* null, i64** %4, align 8
  br label %158

29:                                               ; preds = %23, %19
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.gmap*, %struct.gmap** %5, align 8
  %32 = getelementptr inbounds %struct.gmap, %struct.gmap* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @_ASCE_TYPE_MASK, align 4
  %35 = and i32 %33, %34
  %36 = ashr i32 %35, 2
  %37 = mul nsw i32 %36, 11
  %38 = add nsw i32 31, %37
  %39 = zext i32 %38 to i64
  %40 = shl i64 -1, %39
  %41 = and i64 %30, %40
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  store i64* null, i64** %4, align 8
  br label %158

44:                                               ; preds = %29
  %45 = load %struct.gmap*, %struct.gmap** %5, align 8
  %46 = getelementptr inbounds %struct.gmap, %struct.gmap* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  store i64* %47, i64** %8, align 8
  %48 = load %struct.gmap*, %struct.gmap** %5, align 8
  %49 = getelementptr inbounds %struct.gmap, %struct.gmap* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @_ASCE_TYPE_MASK, align 4
  %52 = and i32 %50, %51
  switch i32 %52, label %156 [
    i32 131, label %53
    i32 130, label %77
    i32 129, label %101
    i32 128, label %125
  ]

53:                                               ; preds = %44
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @_REGION1_INDEX, align 8
  %56 = and i64 %54, %55
  %57 = load i64, i64* @_REGION1_SHIFT, align 8
  %58 = lshr i64 %56, %57
  %59 = load i64*, i64** %8, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 %58
  store i64* %60, i64** %8, align 8
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %61, 4
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %156

64:                                               ; preds = %53
  %65 = load i64*, i64** %8, align 8
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @_REGION_ENTRY_INVALID, align 8
  %68 = and i64 %66, %67
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store i64* null, i64** %4, align 8
  br label %158

71:                                               ; preds = %64
  %72 = load i64*, i64** %8, align 8
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @_REGION_ENTRY_ORIGIN, align 8
  %75 = and i64 %73, %74
  %76 = inttoptr i64 %75 to i64*
  store i64* %76, i64** %8, align 8
  br label %77

77:                                               ; preds = %44, %71
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* @_REGION2_INDEX, align 8
  %80 = and i64 %78, %79
  %81 = load i64, i64* @_REGION2_SHIFT, align 8
  %82 = lshr i64 %80, %81
  %83 = load i64*, i64** %8, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 %82
  store i64* %84, i64** %8, align 8
  %85 = load i32, i32* %7, align 4
  %86 = icmp eq i32 %85, 3
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  br label %156

88:                                               ; preds = %77
  %89 = load i64*, i64** %8, align 8
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @_REGION_ENTRY_INVALID, align 8
  %92 = and i64 %90, %91
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  store i64* null, i64** %4, align 8
  br label %158

95:                                               ; preds = %88
  %96 = load i64*, i64** %8, align 8
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @_REGION_ENTRY_ORIGIN, align 8
  %99 = and i64 %97, %98
  %100 = inttoptr i64 %99 to i64*
  store i64* %100, i64** %8, align 8
  br label %101

101:                                              ; preds = %44, %95
  %102 = load i64, i64* %6, align 8
  %103 = load i64, i64* @_REGION3_INDEX, align 8
  %104 = and i64 %102, %103
  %105 = load i64, i64* @_REGION3_SHIFT, align 8
  %106 = lshr i64 %104, %105
  %107 = load i64*, i64** %8, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 %106
  store i64* %108, i64** %8, align 8
  %109 = load i32, i32* %7, align 4
  %110 = icmp eq i32 %109, 2
  br i1 %110, label %111, label %112

111:                                              ; preds = %101
  br label %156

112:                                              ; preds = %101
  %113 = load i64*, i64** %8, align 8
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @_REGION_ENTRY_INVALID, align 8
  %116 = and i64 %114, %115
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  store i64* null, i64** %4, align 8
  br label %158

119:                                              ; preds = %112
  %120 = load i64*, i64** %8, align 8
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @_REGION_ENTRY_ORIGIN, align 8
  %123 = and i64 %121, %122
  %124 = inttoptr i64 %123 to i64*
  store i64* %124, i64** %8, align 8
  br label %125

125:                                              ; preds = %44, %119
  %126 = load i64, i64* %6, align 8
  %127 = load i64, i64* @_SEGMENT_INDEX, align 8
  %128 = and i64 %126, %127
  %129 = load i64, i64* @_SEGMENT_SHIFT, align 8
  %130 = lshr i64 %128, %129
  %131 = load i64*, i64** %8, align 8
  %132 = getelementptr inbounds i64, i64* %131, i64 %130
  store i64* %132, i64** %8, align 8
  %133 = load i32, i32* %7, align 4
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %136

135:                                              ; preds = %125
  br label %156

136:                                              ; preds = %125
  %137 = load i64*, i64** %8, align 8
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @_REGION_ENTRY_INVALID, align 8
  %140 = and i64 %138, %139
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  store i64* null, i64** %4, align 8
  br label %158

143:                                              ; preds = %136
  %144 = load i64*, i64** %8, align 8
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @_SEGMENT_ENTRY_ORIGIN, align 8
  %147 = and i64 %145, %146
  %148 = inttoptr i64 %147 to i64*
  store i64* %148, i64** %8, align 8
  %149 = load i64, i64* %6, align 8
  %150 = load i64, i64* @_PAGE_INDEX, align 8
  %151 = and i64 %149, %150
  %152 = load i64, i64* @_PAGE_SHIFT, align 8
  %153 = lshr i64 %151, %152
  %154 = load i64*, i64** %8, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 %153
  store i64* %155, i64** %8, align 8
  br label %156

156:                                              ; preds = %143, %44, %135, %111, %87, %63
  %157 = load i64*, i64** %8, align 8
  store i64* %157, i64** %4, align 8
  br label %158

158:                                              ; preds = %156, %142, %118, %94, %70, %43, %28, %18
  %159 = load i64*, i64** %4, align 8
  ret i64* %159
}

declare dso_local i64 @gmap_is_shadow(%struct.gmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
