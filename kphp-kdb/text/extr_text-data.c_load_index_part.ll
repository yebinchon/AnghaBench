; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_load_index_part.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_load_index_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i32*, i64 }

@load_index_part.io_req = internal global [2 x %struct.iovec] zeroinitializer, align 16
@load_index_part.index_part_crc32 = internal global i32 0, align 4
@dyn_top = common dso_local global i64 0, align 8
@dyn_cur = common dso_local global i64 0, align 8
@idx_fsize = common dso_local global i64 0, align 8
@idx_fd = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@idx_crc_enabled = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [88 x i8] c"error reading data from index file: read %d bytes instead of %lld at position %lld: %m\0A\00", align 1
@.str.1 = private unnamed_addr constant [103 x i8] c"error reading %lld bytes from index file at position %lld: crc32 mismatch: expected %08x, actual %08x\0A\00", align 1
@idx_loaded_bytes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @load_index_part(i8* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i64, i64* %8, align 8
  %13 = icmp sge i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %4
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @dyn_top, align 8
  %17 = load i64, i64* @dyn_cur, align 8
  %18 = sub nsw i64 %16, %17
  %19 = icmp sle i64 %15, %18
  br label %20

20:                                               ; preds = %14, %4
  %21 = phi i1 [ false, %4 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i64, i64* %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp sle i64 %24, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %28, %20
  %33 = phi i1 [ true, %20 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i64, i64* %7, align 8
  %37 = icmp sge i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %32
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @idx_fsize, align 8
  %41 = icmp sle i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i64, i64* @idx_fsize, align 8
  %47 = icmp sle i64 %45, %46
  br label %48

48:                                               ; preds = %42, %38, %32
  %49 = phi i1 [ false, %38 ], [ false, %32 ], [ %47, %42 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load i8*, i8** %6, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load i64, i64* %8, align 8
  %56 = call i8* @zmalloc(i64 %55)
  store i8* %56, i8** %6, align 8
  br label %57

57:                                               ; preds = %54, %48
  %58 = load i32, i32* @idx_fd, align 4
  %59 = load i64, i64* %7, align 8
  %60 = load i32, i32* @SEEK_SET, align 4
  %61 = call i64 @lseek(i32 %58, i64 %59, i32 %60)
  %62 = load i64, i64* %7, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i8*, i8** %6, align 8
  %67 = bitcast i8* %66 to i32*
  store i32* %67, i32** getelementptr inbounds ([2 x %struct.iovec], [2 x %struct.iovec]* @load_index_part.io_req, i64 0, i64 0, i32 0), align 16
  %68 = load i64, i64* %8, align 8
  store i64 %68, i64* getelementptr inbounds ([2 x %struct.iovec], [2 x %struct.iovec]* @load_index_part.io_req, i64 0, i64 0, i32 1), align 8
  store i32* @load_index_part.index_part_crc32, i32** getelementptr inbounds ([2 x %struct.iovec], [2 x %struct.iovec]* @load_index_part.io_req, i64 0, i64 1, i32 0), align 16
  store i64 4, i64* getelementptr inbounds ([2 x %struct.iovec], [2 x %struct.iovec]* @load_index_part.io_req, i64 0, i64 1, i32 1), align 8
  %69 = load i32, i32* @idx_fd, align 4
  %70 = load i32, i32* @idx_crc_enabled, align 4
  %71 = add nsw i32 1, %70
  %72 = call i32 @readv(i32 %69, %struct.iovec* getelementptr inbounds ([2 x %struct.iovec], [2 x %struct.iovec]* @load_index_part.io_req, i64 0, i64 0), i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* @idx_crc_enabled, align 4
  %74 = mul nsw i32 %73, 4
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %8, align 8
  %77 = add nsw i64 %76, %75
  store i64 %77, i64* %8, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* %8, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %57
  %83 = load i32, i32* @stderr, align 4
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* %7, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 (i32, i8*, i64, i64, i32, ...) @fprintf(i32 %83, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i64 %85, i64 %86, i32 %88)
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* %8, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  store i8* null, i8** %5, align 8
  br label %125

96:                                               ; preds = %57
  %97 = load i32, i32* @idx_crc_enabled, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %120

99:                                               ; preds = %96
  %100 = load i8*, i8** %6, align 8
  %101 = load i64, i64* %8, align 8
  %102 = sub nsw i64 %101, 4
  %103 = call i32 @compute_crc32(i8* %100, i64 %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @load_index_part.index_part_crc32, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %119

107:                                              ; preds = %99
  %108 = load i32, i32* @stderr, align 4
  %109 = load i64, i64* %8, align 8
  %110 = load i64, i64* %7, align 8
  %111 = load i32, i32* @load_index_part.index_part_crc32, align 4
  %112 = load i32, i32* %11, align 4
  %113 = call i32 (i32, i8*, i64, i64, i32, ...) @fprintf(i32 %108, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.1, i64 0, i64 0), i64 %109, i64 %110, i32 %111, i32 %112)
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* @load_index_part.index_part_crc32, align 4
  %116 = icmp eq i32 %114, %115
  %117 = zext i1 %116 to i32
  %118 = call i32 @assert(i32 %117)
  store i8* null, i8** %5, align 8
  br label %125

119:                                              ; preds = %99
  br label %120

120:                                              ; preds = %119, %96
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @idx_loaded_bytes, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* @idx_loaded_bytes, align 4
  %124 = load i8*, i8** %6, align 8
  store i8* %124, i8** %5, align 8
  br label %125

125:                                              ; preds = %120, %107, %82
  %126 = load i8*, i8** %5, align 8
  ret i8* %126
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @zmalloc(i64) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @readv(i32, %struct.iovec*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i64, i64, i32, ...) #1

declare dso_local i32 @compute_crc32(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
