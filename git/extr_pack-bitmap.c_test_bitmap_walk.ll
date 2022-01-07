; ModuleID = '/home/carl/AnghaBench/git/extr_pack-bitmap.c_test_bitmap_walk.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-bitmap.c_test_bitmap_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.object* }
%struct.object = type { i32 }
%struct.bitmap = type { i32 }
%struct.bitmap_test_data = type { i32, i32, i64, %struct.bitmap_index* }
%struct.bitmap_index = type { i32, i32, i32 }
%struct.stored_bitmap = type { i32 }
%struct.ewah_bitmap = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"failed to load bitmap indexes\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"you must specify exactly one commit to test\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Bitmap v%d test (%d entries loaded)\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Found bitmap for %s. %d bits / %08x checksum\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Commit %s doesn't have an indexed bitmap\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"revision walk setup failed\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Verifying bitmap entries\00", align 1
@test_show_commit = common dso_local global i32 0, align 4
@test_show_object = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"OK!\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"Mismatch!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_bitmap_walk(%struct.rev_info* %0) #0 {
  %2 = alloca %struct.rev_info*, align 8
  %3 = alloca %struct.object*, align 8
  %4 = alloca %struct.bitmap*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bitmap_test_data, align 8
  %8 = alloca %struct.bitmap_index*, align 8
  %9 = alloca %struct.stored_bitmap*, align 8
  %10 = alloca %struct.ewah_bitmap*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %2, align 8
  store %struct.bitmap* null, %struct.bitmap** %4, align 8
  %11 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %12 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.bitmap_index* @prepare_bitmap_git(i32 %13)
  store %struct.bitmap_index* %14, %struct.bitmap_index** %8, align 8
  %15 = icmp ne %struct.bitmap_index* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %1
  %19 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %20 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %18
  %27 = load i32, i32* @stderr, align 4
  %28 = load %struct.bitmap_index*, %struct.bitmap_index** %8, align 8
  %29 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.bitmap_index*, %struct.bitmap_index** %8, align 8
  %32 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %30, i32 %33)
  %35 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %36 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.object*, %struct.object** %40, align 8
  store %struct.object* %41, %struct.object** %3, align 8
  %42 = load %struct.bitmap_index*, %struct.bitmap_index** %8, align 8
  %43 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.object*, %struct.object** %3, align 8
  %46 = getelementptr inbounds %struct.object, %struct.object* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @kh_get_oid_map(i32 %44, i32 %47)
  store i64 %48, i64* %5, align 8
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.bitmap_index*, %struct.bitmap_index** %8, align 8
  %51 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @kh_end(i32 %52)
  %54 = icmp slt i64 %49, %53
  br i1 %54, label %55, label %76

55:                                               ; preds = %26
  %56 = load %struct.bitmap_index*, %struct.bitmap_index** %8, align 8
  %57 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %5, align 8
  %60 = call %struct.stored_bitmap* @kh_value(i32 %58, i64 %59)
  store %struct.stored_bitmap* %60, %struct.stored_bitmap** %9, align 8
  %61 = load %struct.stored_bitmap*, %struct.stored_bitmap** %9, align 8
  %62 = call %struct.ewah_bitmap* @lookup_stored_bitmap(%struct.stored_bitmap* %61)
  store %struct.ewah_bitmap* %62, %struct.ewah_bitmap** %10, align 8
  %63 = load i32, i32* @stderr, align 4
  %64 = load %struct.object*, %struct.object** %3, align 8
  %65 = getelementptr inbounds %struct.object, %struct.object* %64, i32 0, i32 0
  %66 = call i8* @oid_to_hex(i32* %65)
  %67 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %10, align 8
  %68 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %10, align 8
  %72 = call i32 @ewah_checksum(%struct.ewah_bitmap* %71)
  %73 = call i32 (i32, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* %66, i32 %70, i32 %72)
  %74 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %10, align 8
  %75 = call %struct.bitmap* @ewah_to_bitmap(%struct.ewah_bitmap* %74)
  store %struct.bitmap* %75, %struct.bitmap** %4, align 8
  br label %76

76:                                               ; preds = %55, %26
  %77 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %78 = icmp eq %struct.bitmap* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load %struct.object*, %struct.object** %3, align 8
  %81 = getelementptr inbounds %struct.object, %struct.object* %80, i32 0, i32 0
  %82 = call i8* @oid_to_hex(i32* %81)
  %83 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %82)
  br label %84

84:                                               ; preds = %79, %76
  %85 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %86 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  %87 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %88 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %87, i32 0, i32 1
  store i32 1, i32* %88, align 4
  %89 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %90 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %89, i32 0, i32 2
  store i32 1, i32* %90, align 8
  %91 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %92 = call i64 @bitmap_popcount(%struct.bitmap* %91)
  store i64 %92, i64* %6, align 8
  %93 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %94 = call i64 @prepare_revision_walk(%struct.rev_info* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %84
  %97 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %84
  %99 = load %struct.bitmap_index*, %struct.bitmap_index** %8, align 8
  %100 = getelementptr inbounds %struct.bitmap_test_data, %struct.bitmap_test_data* %7, i32 0, i32 3
  store %struct.bitmap_index* %99, %struct.bitmap_index** %100, align 8
  %101 = call i32 (...) @bitmap_new()
  %102 = getelementptr inbounds %struct.bitmap_test_data, %struct.bitmap_test_data* %7, i32 0, i32 0
  store i32 %101, i32* %102, align 8
  %103 = load i64, i64* %6, align 8
  %104 = call i32 @start_progress(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i64 %103)
  %105 = getelementptr inbounds %struct.bitmap_test_data, %struct.bitmap_test_data* %7, i32 0, i32 1
  store i32 %104, i32* %105, align 4
  %106 = getelementptr inbounds %struct.bitmap_test_data, %struct.bitmap_test_data* %7, i32 0, i32 2
  store i64 0, i64* %106, align 8
  %107 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %108 = call i32 @traverse_commit_list(%struct.rev_info* %107, i32* @test_show_commit, i32* @test_show_object, %struct.bitmap_test_data* %7)
  %109 = getelementptr inbounds %struct.bitmap_test_data, %struct.bitmap_test_data* %7, i32 0, i32 1
  %110 = call i32 @stop_progress(i32* %109)
  %111 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %112 = getelementptr inbounds %struct.bitmap_test_data, %struct.bitmap_test_data* %7, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @bitmap_equals(%struct.bitmap* %111, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %98
  %117 = load i32, i32* @stderr, align 4
  %118 = call i32 (i32, i8*, ...) @fprintf(i32 %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %122

119:                                              ; preds = %98
  %120 = load i32, i32* @stderr, align 4
  %121 = call i32 (i32, i8*, ...) @fprintf(i32 %120, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %116
  %123 = load %struct.bitmap_index*, %struct.bitmap_index** %8, align 8
  %124 = call i32 @free_bitmap_index(%struct.bitmap_index* %123)
  ret void
}

declare dso_local %struct.bitmap_index* @prepare_bitmap_git(i32) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @kh_get_oid_map(i32, i32) #1

declare dso_local i64 @kh_end(i32) #1

declare dso_local %struct.stored_bitmap* @kh_value(i32, i64) #1

declare dso_local %struct.ewah_bitmap* @lookup_stored_bitmap(%struct.stored_bitmap*) #1

declare dso_local i8* @oid_to_hex(i32*) #1

declare dso_local i32 @ewah_checksum(%struct.ewah_bitmap*) #1

declare dso_local %struct.bitmap* @ewah_to_bitmap(%struct.ewah_bitmap*) #1

declare dso_local i64 @bitmap_popcount(%struct.bitmap*) #1

declare dso_local i64 @prepare_revision_walk(%struct.rev_info*) #1

declare dso_local i32 @bitmap_new(...) #1

declare dso_local i32 @start_progress(i8*, i64) #1

declare dso_local i32 @traverse_commit_list(%struct.rev_info*, i32*, i32*, %struct.bitmap_test_data*) #1

declare dso_local i32 @stop_progress(i32*) #1

declare dso_local i64 @bitmap_equals(%struct.bitmap*, i32) #1

declare dso_local i32 @free_bitmap_index(%struct.bitmap_index*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
