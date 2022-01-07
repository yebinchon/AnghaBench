; ModuleID = '/home/carl/AnghaBench/git/extr_pack-bitmap-write.c_bitmap_writer_build_type_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-bitmap-write.c_bitmap_writer_build_type_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i8* }
%struct.packing_data = type { i32, i32, i32 }
%struct.pack_idx_entry = type { i32 }
%struct.object_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@writer = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [40 x i8] c"Missing type information for %s (%d/%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bitmap_writer_build_type_index(%struct.packing_data* %0, %struct.pack_idx_entry** %1, i64 %2) #0 {
  %4 = alloca %struct.packing_data*, align 8
  %5 = alloca %struct.pack_idx_entry**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.object_entry*, align 8
  %9 = alloca i32, align 4
  store %struct.packing_data* %0, %struct.packing_data** %4, align 8
  store %struct.pack_idx_entry** %1, %struct.pack_idx_entry*** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = call i8* (...) @ewah_new()
  store i8* %10, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @writer, i32 0, i32 3), align 8
  %11 = call i8* (...) @ewah_new()
  store i8* %11, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @writer, i32 0, i32 2), align 8
  %12 = call i8* (...) @ewah_new()
  store i8* %12, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @writer, i32 0, i32 1), align 8
  %13 = call i8* (...) @ewah_new()
  store i8* %13, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @writer, i32 0, i32 0), align 8
  %14 = load %struct.packing_data*, %struct.packing_data** %4, align 8
  %15 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.packing_data*, %struct.packing_data** %4, align 8
  %18 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ALLOC_ARRAY(i32 %16, i32 %19)
  store i64 0, i64* %7, align 8
  br label %21

21:                                               ; preds = %76, %3
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %79

25:                                               ; preds = %21
  %26 = load %struct.pack_idx_entry**, %struct.pack_idx_entry*** %5, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds %struct.pack_idx_entry*, %struct.pack_idx_entry** %26, i64 %27
  %29 = load %struct.pack_idx_entry*, %struct.pack_idx_entry** %28, align 8
  %30 = bitcast %struct.pack_idx_entry* %29 to %struct.object_entry*
  store %struct.object_entry* %30, %struct.object_entry** %8, align 8
  %31 = load %struct.packing_data*, %struct.packing_data** %4, align 8
  %32 = load %struct.object_entry*, %struct.object_entry** %8, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @oe_set_in_pack_pos(%struct.packing_data* %31, %struct.object_entry* %32, i64 %33)
  %35 = load %struct.object_entry*, %struct.object_entry** %8, align 8
  %36 = call i32 @oe_type(%struct.object_entry* %35)
  switch i32 %36, label %40 [
    i32 130, label %37
    i32 128, label %37
    i32 131, label %37
    i32 129, label %37
  ]

37:                                               ; preds = %25, %25, %25, %25
  %38 = load %struct.object_entry*, %struct.object_entry** %8, align 8
  %39 = call i32 @oe_type(%struct.object_entry* %38)
  store i32 %39, i32* %9, align 4
  br label %48

40:                                               ; preds = %25
  %41 = load %struct.packing_data*, %struct.packing_data** %4, align 8
  %42 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.object_entry*, %struct.object_entry** %8, align 8
  %45 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = call i32 @oid_object_info(i32 %43, i32* %46, i32* null)
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %40, %37
  %49 = load i32, i32* %9, align 4
  switch i32 %49, label %66 [
    i32 130, label %50
    i32 128, label %54
    i32 131, label %58
    i32 129, label %62
  ]

50:                                               ; preds = %48
  %51 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @writer, i32 0, i32 3), align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @ewah_set(i8* %51, i64 %52)
  br label %75

54:                                               ; preds = %48
  %55 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @writer, i32 0, i32 2), align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @ewah_set(i8* %55, i64 %56)
  br label %75

58:                                               ; preds = %48
  %59 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @writer, i32 0, i32 1), align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @ewah_set(i8* %59, i64 %60)
  br label %75

62:                                               ; preds = %48
  %63 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @writer, i32 0, i32 0), align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @ewah_set(i8* %63, i64 %64)
  br label %75

66:                                               ; preds = %48
  %67 = load %struct.object_entry*, %struct.object_entry** %8, align 8
  %68 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = call i32 @oid_to_hex(i32* %69)
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.object_entry*, %struct.object_entry** %8, align 8
  %73 = call i32 @oe_type(%struct.object_entry* %72)
  %74 = call i32 @die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %71, i32 %73)
  br label %75

75:                                               ; preds = %66, %62, %58, %54, %50
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %7, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %7, align 8
  br label %21

79:                                               ; preds = %21
  ret void
}

declare dso_local i8* @ewah_new(...) #1

declare dso_local i32 @ALLOC_ARRAY(i32, i32) #1

declare dso_local i32 @oe_set_in_pack_pos(%struct.packing_data*, %struct.object_entry*, i64) #1

declare dso_local i32 @oe_type(%struct.object_entry*) #1

declare dso_local i32 @oid_object_info(i32, i32*, i32*) #1

declare dso_local i32 @ewah_set(i8*, i64) #1

declare dso_local i32 @die(i8*, i32, i32, i32) #1

declare dso_local i32 @oid_to_hex(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
