; ModuleID = '/home/carl/AnghaBench/git/extr_pack-bitmap.c_show_objects_for_type.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-bitmap.c_show_objects_for_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap_index = type { i64, %struct.TYPE_4__*, i64, %struct.bitmap* }
%struct.TYPE_4__ = type { i64, %struct.revindex_entry* }
%struct.revindex_entry = type { i32, i64 }
%struct.bitmap = type { i64, i64* }
%struct.ewah_bitmap = type { i32 }
%struct.object_id = type { i32 }
%struct.ewah_iterator = type { i32 }

@BITS_IN_EWORD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bitmap_index*, %struct.ewah_bitmap*, i32, i32 (%struct.object_id*, i32, i32, i64, %struct.TYPE_4__*, i32)*)* @show_objects_for_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_objects_for_type(%struct.bitmap_index* %0, %struct.ewah_bitmap* %1, i32 %2, i32 (%struct.object_id*, i32, i32, i64, %struct.TYPE_4__*, i32)* %3) #0 {
  %5 = alloca %struct.bitmap_index*, align 8
  %6 = alloca %struct.ewah_bitmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (%struct.object_id*, i32, i32, i64, %struct.TYPE_4__*, i32)*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ewah_iterator, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.bitmap*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.object_id, align 4
  %17 = alloca %struct.revindex_entry*, align 8
  %18 = alloca i64, align 8
  store %struct.bitmap_index* %0, %struct.bitmap_index** %5, align 8
  store %struct.ewah_bitmap* %1, %struct.ewah_bitmap** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 (%struct.object_id*, i32, i32, i64, %struct.TYPE_4__*, i32)* %3, i32 (%struct.object_id*, i32, i32, i64, %struct.TYPE_4__*, i32)** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %19 = load %struct.bitmap_index*, %struct.bitmap_index** %5, align 8
  %20 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %19, i32 0, i32 3
  %21 = load %struct.bitmap*, %struct.bitmap** %20, align 8
  store %struct.bitmap* %21, %struct.bitmap** %14, align 8
  %22 = load %struct.bitmap_index*, %struct.bitmap_index** %5, align 8
  %23 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.bitmap_index*, %struct.bitmap_index** %5, align 8
  %26 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %24, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  br label %130

32:                                               ; preds = %4
  %33 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %6, align 8
  %34 = call i32 @ewah_iterator_init(%struct.ewah_iterator* %12, %struct.ewah_bitmap* %33)
  br label %35

35:                                               ; preds = %124, %32
  %36 = load i64, i64* %10, align 8
  %37 = load %struct.bitmap*, %struct.bitmap** %14, align 8
  %38 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = call i64 @ewah_iterator_next(i64* %13, %struct.ewah_iterator* %12)
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %41, %35
  %45 = phi i1 [ false, %35 ], [ %43, %41 ]
  br i1 %45, label %46, label %130

46:                                               ; preds = %44
  %47 = load %struct.bitmap*, %struct.bitmap** %14, align 8
  %48 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %13, align 8
  %54 = and i64 %52, %53
  store i64 %54, i64* %15, align 8
  store i64 0, i64* %11, align 8
  br label %55

55:                                               ; preds = %121, %46
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* @BITS_IN_EWORD, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %124

59:                                               ; preds = %55
  store i64 0, i64* %18, align 8
  %60 = load i64, i64* %15, align 8
  %61 = load i64, i64* %11, align 8
  %62 = lshr i64 %60, %61
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %124

65:                                               ; preds = %59
  %66 = load i64, i64* %15, align 8
  %67 = load i64, i64* %11, align 8
  %68 = lshr i64 %66, %67
  %69 = call i64 @ewah_bit_ctz64(i64 %68)
  %70 = load i64, i64* %11, align 8
  %71 = add i64 %70, %69
  store i64 %71, i64* %11, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* %11, align 8
  %74 = add i64 %72, %73
  %75 = load %struct.bitmap_index*, %struct.bitmap_index** %5, align 8
  %76 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ult i64 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %65
  br label %121

80:                                               ; preds = %65
  %81 = load %struct.bitmap_index*, %struct.bitmap_index** %5, align 8
  %82 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load %struct.revindex_entry*, %struct.revindex_entry** %84, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* %11, align 8
  %88 = add i64 %86, %87
  %89 = getelementptr inbounds %struct.revindex_entry, %struct.revindex_entry* %85, i64 %88
  store %struct.revindex_entry* %89, %struct.revindex_entry** %17, align 8
  %90 = load %struct.bitmap_index*, %struct.bitmap_index** %5, align 8
  %91 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %90, i32 0, i32 1
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load %struct.revindex_entry*, %struct.revindex_entry** %17, align 8
  %94 = getelementptr inbounds %struct.revindex_entry, %struct.revindex_entry* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @nth_packed_object_oid(%struct.object_id* %16, %struct.TYPE_4__* %92, i64 %95)
  %97 = load %struct.bitmap_index*, %struct.bitmap_index** %5, align 8
  %98 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %80
  %102 = load %struct.bitmap_index*, %struct.bitmap_index** %5, align 8
  %103 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.revindex_entry*, %struct.revindex_entry** %17, align 8
  %106 = getelementptr inbounds %struct.revindex_entry, %struct.revindex_entry* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %104, %107
  %109 = call i64 @get_be32(i64 %108)
  store i64 %109, i64* %18, align 8
  br label %110

110:                                              ; preds = %101, %80
  %111 = load i32 (%struct.object_id*, i32, i32, i64, %struct.TYPE_4__*, i32)*, i32 (%struct.object_id*, i32, i32, i64, %struct.TYPE_4__*, i32)** %8, align 8
  %112 = load i32, i32* %7, align 4
  %113 = load i64, i64* %18, align 8
  %114 = load %struct.bitmap_index*, %struct.bitmap_index** %5, align 8
  %115 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %114, i32 0, i32 1
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = load %struct.revindex_entry*, %struct.revindex_entry** %17, align 8
  %118 = getelementptr inbounds %struct.revindex_entry, %struct.revindex_entry* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 %111(%struct.object_id* %16, i32 %112, i32 0, i64 %113, %struct.TYPE_4__* %116, i32 %119)
  br label %121

121:                                              ; preds = %110, %79
  %122 = load i64, i64* %11, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %11, align 8
  br label %55

124:                                              ; preds = %64, %55
  %125 = load i64, i64* @BITS_IN_EWORD, align 8
  %126 = load i64, i64* %9, align 8
  %127 = add i64 %126, %125
  store i64 %127, i64* %9, align 8
  %128 = load i64, i64* %10, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %10, align 8
  br label %35

130:                                              ; preds = %31, %44
  ret void
}

declare dso_local i32 @ewah_iterator_init(%struct.ewah_iterator*, %struct.ewah_bitmap*) #1

declare dso_local i64 @ewah_iterator_next(i64*, %struct.ewah_iterator*) #1

declare dso_local i64 @ewah_bit_ctz64(i64) #1

declare dso_local i32 @nth_packed_object_oid(%struct.object_id*, %struct.TYPE_4__*, i64) #1

declare dso_local i64 @get_be32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
