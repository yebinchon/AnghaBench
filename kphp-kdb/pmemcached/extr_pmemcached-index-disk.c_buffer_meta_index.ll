; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-index-disk.c_buffer_meta_index.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-index-disk.c_buffer_meta_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_entry = type { i64, i64, i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Data from index_entry\0A\00", align 1
@buffer_meta_pos = common dso_local global i64 0, align 8
@MAX_METAFILE_SIZE = common dso_local global i64 0, align 8
@buffer_meta = common dso_local global i64 0, align 8
@buffer_meta_number = common dso_local global i32 0, align 4
@MAX_METAFILES = common dso_local global i32 0, align 4
@buffer_shifts = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @buffer_meta_index(%struct.index_entry* %0) #0 {
  %2 = alloca %struct.index_entry*, align 8
  store %struct.index_entry* %0, %struct.index_entry** %2, align 8
  %3 = load i32, i32* @verbosity, align 4
  %4 = icmp sge i32 %3, 3
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32, i32* @stderr, align 4
  %7 = call i32 @fprintf(i32 %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %5, %1
  %9 = load i64, i64* @buffer_meta_pos, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = load %struct.index_entry*, %struct.index_entry** %2, align 8
  %13 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.index_entry*, %struct.index_entry** %2, align 8
  %16 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @buffer_meta_init_key(i32 %14, i64 %17)
  br label %19

19:                                               ; preds = %11, %8
  %20 = load i64, i64* @buffer_meta_pos, align 8
  %21 = add i64 %20, 24
  %22 = load %struct.index_entry*, %struct.index_entry** %2, align 8
  %23 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %21, %24
  %26 = load %struct.index_entry*, %struct.index_entry** %2, align 8
  %27 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add i64 %25, %28
  %30 = add i64 %29, 1
  %31 = load i64, i64* @MAX_METAFILE_SIZE, align 8
  %32 = icmp ult i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i64, i64* @buffer_meta, align 8
  %36 = load i64, i64* @buffer_meta_pos, align 8
  %37 = add nsw i64 %35, %36
  %38 = load %struct.index_entry*, %struct.index_entry** %2, align 8
  %39 = load %struct.index_entry*, %struct.index_entry** %2, align 8
  %40 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add i64 24, %41
  %43 = load %struct.index_entry*, %struct.index_entry** %2, align 8
  %44 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %42, %45
  %47 = add i64 %46, 1
  %48 = call i32 @memcpy(i64 %37, %struct.index_entry* %38, i64 %47)
  %49 = load %struct.index_entry*, %struct.index_entry** %2, align 8
  %50 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add i64 24, %51
  %53 = load %struct.index_entry*, %struct.index_entry** %2, align 8
  %54 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %52, %55
  %57 = add i64 %56, 1
  %58 = load i64, i64* @buffer_meta_pos, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* @buffer_meta_pos, align 8
  %60 = load i32, i32* @buffer_meta_number, align 4
  %61 = load i32, i32* @MAX_METAFILES, align 4
  %62 = sub nsw i32 %61, 1
  %63 = icmp slt i32 %60, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i64, i64* @buffer_meta_pos, align 8
  %67 = load i64*, i64** @buffer_shifts, align 8
  %68 = load i32, i32* @buffer_meta_number, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* @buffer_meta_number, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %67, i64 %70
  store i64 %66, i64* %71, align 8
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @buffer_meta_init_key(i32, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i64, %struct.index_entry*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
