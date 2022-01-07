; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-index-disk.c_buffer_meta_flush.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-index-disk.c_buffer_meta_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }

@global_offset = common dso_local global i32 0, align 4
@metafile_header_tmp = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@buffer_meta_key_len = common dso_local global i32 0, align 4
@buffer_meta_number = common dso_local global i32 0, align 4
@buffer_meta_pos = common dso_local global i32 0, align 4
@buffer_shifts = common dso_local global %struct.TYPE_7__* null, align 8
@buffer_meta = common dso_local global %struct.TYPE_7__* null, align 8
@buffer_meta_key = common dso_local global %struct.TYPE_7__* null, align 8
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"writing metafile %d\0A\00", align 1
@write_buffer_number = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"offset = %lld\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"number of records = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @buffer_meta_flush() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @global_offset, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @metafile_header_tmp, i32 0, i32 0), align 4
  %4 = load i32, i32* @buffer_meta_key_len, align 4
  %5 = sext i32 %4 to i64
  %6 = add i64 4, %5
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @metafile_header_tmp, i32 0, i32 1), align 4
  %8 = load i32, i32* @buffer_meta_key_len, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @metafile_header_tmp, i32 0, i32 2), align 4
  %9 = load i32, i32* @buffer_meta_number, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @metafile_header_tmp, i32 0, i32 3), align 4
  %10 = load i32, i32* @buffer_meta_pos, align 4
  %11 = sext i32 %10 to i64
  %12 = load i32, i32* @buffer_meta_number, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 8
  %15 = add i64 %11, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @metafile_header_tmp, i32 0, i32 4), align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** @buffer_shifts, align 8
  %18 = load i32, i32* @buffer_meta_number, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @compute_crc32(%struct.TYPE_7__* %17, i32 %21)
  store i32 %22, i32* %1, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** @buffer_meta, align 8
  %24 = load i32, i32* @buffer_meta_pos, align 4
  %25 = call i32 @compute_crc32(%struct.TYPE_7__* %23, i32 %24)
  store i32 %25, i32* %2, align 4
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @buffer_meta_pos, align 4
  %29 = call i32 @compute_crc32_combine(i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @metafile_header_tmp, i32 0, i32 5), align 4
  %30 = call i32 @writeout(%struct.TYPE_7__* @metafile_header_tmp, i32 4)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** @buffer_meta_key, align 8
  %32 = load i32, i32* @buffer_meta_key_len, align 4
  %33 = call i32 @writeout(%struct.TYPE_7__* %31, i32 %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** @buffer_shifts, align 8
  %35 = load i32, i32* @buffer_meta_number, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 @writeout(%struct.TYPE_7__* %34, i32 %38)
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** @buffer_meta, align 8
  %41 = load i32, i32* @buffer_meta_pos, align 4
  %42 = call i32 @writeout(%struct.TYPE_7__* %40, i32 %41)
  %43 = load i32, i32* @verbosity, align 4
  %44 = icmp sge i32 %43, 3
  br i1 %44, label %45, label %55

45:                                               ; preds = %0
  %46 = load i32, i32* @stderr, align 4
  %47 = load i32, i32* @write_buffer_number, align 4
  %48 = call i32 @fprintf(i32 %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @stderr, align 4
  %50 = load i32, i32* @global_offset, align 4
  %51 = call i32 @fprintf(i32 %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @stderr, align 4
  %53 = load i32, i32* @buffer_meta_number, align 4
  %54 = call i32 @fprintf(i32 %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %45, %0
  %56 = load i32, i32* @buffer_meta_key_len, align 4
  %57 = sext i32 %56 to i64
  %58 = add i64 4, %57
  %59 = load i32, i32* @buffer_meta_number, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 8
  %62 = add i64 %58, %61
  %63 = load i32, i32* @buffer_meta_pos, align 4
  %64 = sext i32 %63 to i64
  %65 = add i64 %62, %64
  %66 = load i32, i32* @global_offset, align 4
  %67 = sext i32 %66 to i64
  %68 = add i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* @global_offset, align 4
  %70 = call i32 (...) @buffer_meta_init()
  ret void
}

declare dso_local i32 @compute_crc32(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @compute_crc32_combine(i32, i32, i32) #1

declare dso_local i32 @writeout(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @buffer_meta_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
