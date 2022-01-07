; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_gmap_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_gmap_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gmap = type { i64*, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.page = type { i32, i64 }

@_REGION3_SIZE = common dso_local global i64 0, align 8
@_ASCE_TYPE_SEGMENT = common dso_local global i64 0, align 8
@_SEGMENT_ENTRY_EMPTY = common dso_local global i64 0, align 8
@_REGION2_SIZE = common dso_local global i64 0, align 8
@_ASCE_TYPE_REGION3 = common dso_local global i64 0, align 8
@_REGION3_ENTRY_EMPTY = common dso_local global i64 0, align 8
@_REGION1_SIZE = common dso_local global i64 0, align 8
@_ASCE_TYPE_REGION2 = common dso_local global i64 0, align 8
@_REGION2_ENTRY_EMPTY = common dso_local global i64 0, align 8
@_ASCE_TYPE_REGION1 = common dso_local global i64 0, align 8
@_REGION1_ENTRY_EMPTY = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@CRST_ALLOC_ORDER = common dso_local global i32 0, align 4
@_ASCE_TABLE_LENGTH = common dso_local global i64 0, align 8
@_ASCE_USER_BITS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gmap* (i64)* @gmap_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gmap* @gmap_alloc(i64 %0) #0 {
  %2 = alloca %struct.gmap*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.gmap*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @_REGION3_SIZE, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i64, i64* @_REGION3_SIZE, align 8
  %14 = sub i64 %13, 1
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* @_ASCE_TYPE_SEGMENT, align 8
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* @_SEGMENT_ENTRY_EMPTY, align 8
  store i64 %16, i64* %7, align 8
  br label %40

17:                                               ; preds = %1
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @_REGION2_SIZE, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i64, i64* @_REGION2_SIZE, align 8
  %23 = sub i64 %22, 1
  store i64 %23, i64* %3, align 8
  %24 = load i64, i64* @_ASCE_TYPE_REGION3, align 8
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* @_REGION3_ENTRY_EMPTY, align 8
  store i64 %25, i64* %7, align 8
  br label %39

26:                                               ; preds = %17
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @_REGION1_SIZE, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i64, i64* @_REGION1_SIZE, align 8
  %32 = sub i64 %31, 1
  store i64 %32, i64* %3, align 8
  %33 = load i64, i64* @_ASCE_TYPE_REGION2, align 8
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* @_REGION2_ENTRY_EMPTY, align 8
  store i64 %34, i64* %7, align 8
  br label %38

35:                                               ; preds = %26
  store i64 -1, i64* %3, align 8
  %36 = load i64, i64* @_ASCE_TYPE_REGION1, align 8
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* @_REGION1_ENTRY_EMPTY, align 8
  store i64 %37, i64* %7, align 8
  br label %38

38:                                               ; preds = %35, %30
  br label %39

39:                                               ; preds = %38, %21
  br label %40

40:                                               ; preds = %39, %12
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.gmap* @kzalloc(i32 64, i32 %41)
  store %struct.gmap* %42, %struct.gmap** %4, align 8
  %43 = load %struct.gmap*, %struct.gmap** %4, align 8
  %44 = icmp ne %struct.gmap* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %117

46:                                               ; preds = %40
  %47 = load %struct.gmap*, %struct.gmap** %4, align 8
  %48 = getelementptr inbounds %struct.gmap, %struct.gmap* %47, i32 0, i32 3
  %49 = call i32 @INIT_LIST_HEAD(i32* %48)
  %50 = load %struct.gmap*, %struct.gmap** %4, align 8
  %51 = getelementptr inbounds %struct.gmap, %struct.gmap* %50, i32 0, i32 11
  %52 = call i32 @INIT_LIST_HEAD(i32* %51)
  %53 = load %struct.gmap*, %struct.gmap** %4, align 8
  %54 = getelementptr inbounds %struct.gmap, %struct.gmap* %53, i32 0, i32 10
  %55 = call i32 @INIT_LIST_HEAD(i32* %54)
  %56 = load %struct.gmap*, %struct.gmap** %4, align 8
  %57 = getelementptr inbounds %struct.gmap, %struct.gmap* %56, i32 0, i32 9
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i32 @INIT_RADIX_TREE(i32* %57, i32 %58)
  %60 = load %struct.gmap*, %struct.gmap** %4, align 8
  %61 = getelementptr inbounds %struct.gmap, %struct.gmap* %60, i32 0, i32 8
  %62 = load i32, i32* @GFP_ATOMIC, align 4
  %63 = call i32 @INIT_RADIX_TREE(i32* %61, i32 %62)
  %64 = load %struct.gmap*, %struct.gmap** %4, align 8
  %65 = getelementptr inbounds %struct.gmap, %struct.gmap* %64, i32 0, i32 7
  %66 = load i32, i32* @GFP_ATOMIC, align 4
  %67 = call i32 @INIT_RADIX_TREE(i32* %65, i32 %66)
  %68 = load %struct.gmap*, %struct.gmap** %4, align 8
  %69 = getelementptr inbounds %struct.gmap, %struct.gmap* %68, i32 0, i32 6
  %70 = call i32 @spin_lock_init(i32* %69)
  %71 = load %struct.gmap*, %struct.gmap** %4, align 8
  %72 = getelementptr inbounds %struct.gmap, %struct.gmap* %71, i32 0, i32 5
  %73 = call i32 @spin_lock_init(i32* %72)
  %74 = load %struct.gmap*, %struct.gmap** %4, align 8
  %75 = getelementptr inbounds %struct.gmap, %struct.gmap* %74, i32 0, i32 4
  %76 = call i32 @refcount_set(i32* %75, i32 1)
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = load i32, i32* @CRST_ALLOC_ORDER, align 4
  %79 = call %struct.page* @alloc_pages(i32 %77, i32 %78)
  store %struct.page* %79, %struct.page** %5, align 8
  %80 = load %struct.page*, %struct.page** %5, align 8
  %81 = icmp ne %struct.page* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %46
  br label %114

83:                                               ; preds = %46
  %84 = load %struct.page*, %struct.page** %5, align 8
  %85 = getelementptr inbounds %struct.page, %struct.page* %84, i32 0, i32 1
  store i64 0, i64* %85, align 8
  %86 = load %struct.page*, %struct.page** %5, align 8
  %87 = getelementptr inbounds %struct.page, %struct.page* %86, i32 0, i32 0
  %88 = load %struct.gmap*, %struct.gmap** %4, align 8
  %89 = getelementptr inbounds %struct.gmap, %struct.gmap* %88, i32 0, i32 3
  %90 = call i32 @list_add(i32* %87, i32* %89)
  %91 = load %struct.page*, %struct.page** %5, align 8
  %92 = call i64 @page_to_phys(%struct.page* %91)
  %93 = inttoptr i64 %92 to i64*
  store i64* %93, i64** %6, align 8
  %94 = load i64*, i64** %6, align 8
  %95 = load i64, i64* %7, align 8
  %96 = call i32 @crst_table_init(i64* %94, i64 %95)
  %97 = load i64*, i64** %6, align 8
  %98 = load %struct.gmap*, %struct.gmap** %4, align 8
  %99 = getelementptr inbounds %struct.gmap, %struct.gmap* %98, i32 0, i32 0
  store i64* %97, i64** %99, align 8
  %100 = load i64, i64* %8, align 8
  %101 = load i64, i64* @_ASCE_TABLE_LENGTH, align 8
  %102 = or i64 %100, %101
  %103 = load i64, i64* @_ASCE_USER_BITS, align 8
  %104 = or i64 %102, %103
  %105 = load i64*, i64** %6, align 8
  %106 = call i64 @__pa(i64* %105)
  %107 = or i64 %104, %106
  %108 = load %struct.gmap*, %struct.gmap** %4, align 8
  %109 = getelementptr inbounds %struct.gmap, %struct.gmap* %108, i32 0, i32 1
  store i64 %107, i64* %109, align 8
  %110 = load i64, i64* %3, align 8
  %111 = load %struct.gmap*, %struct.gmap** %4, align 8
  %112 = getelementptr inbounds %struct.gmap, %struct.gmap* %111, i32 0, i32 2
  store i64 %110, i64* %112, align 8
  %113 = load %struct.gmap*, %struct.gmap** %4, align 8
  store %struct.gmap* %113, %struct.gmap** %2, align 8
  br label %118

114:                                              ; preds = %82
  %115 = load %struct.gmap*, %struct.gmap** %4, align 8
  %116 = call i32 @kfree(%struct.gmap* %115)
  br label %117

117:                                              ; preds = %114, %45
  store %struct.gmap* null, %struct.gmap** %2, align 8
  br label %118

118:                                              ; preds = %117, %83
  %119 = load %struct.gmap*, %struct.gmap** %2, align 8
  ret %struct.gmap* %119
}

declare dso_local %struct.gmap* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_RADIX_TREE(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i64 @page_to_phys(%struct.page*) #1

declare dso_local i32 @crst_table_init(i64*, i64) #1

declare dso_local i64 @__pa(i64*) #1

declare dso_local i32 @kfree(%struct.gmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
