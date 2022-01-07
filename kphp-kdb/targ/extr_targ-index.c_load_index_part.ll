; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-index.c_load_index_part.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-index.c_load_index_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i32*, i64 }

@load_index_part.io_req = internal global [2 x %struct.iovec] zeroinitializer, align 16
@load_index_part.index_part_crc32 = internal global i32 0, align 4
@dyn_top = common dso_local global i64 0, align 8
@dyn_cur = common dso_local global i64 0, align 8
@idx_bytes = common dso_local global i64 0, align 8
@idx_fd = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [88 x i8] c"error reading data from index file: read %d bytes instead of %lld at position %lld: %m\0A\00", align 1
@verbosity = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"loaded %lld bytes from index at position %lld\0A\00", align 1
@.str.2 = private unnamed_addr constant [103 x i8] c"error reading %lld bytes from index file at position %lld: crc32 mismatch: expected %08x, actual %08x\0A\00", align 1
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
  %40 = load i64, i64* @idx_bytes, align 8
  %41 = icmp sle i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i64, i64* @idx_bytes, align 8
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
  br label %64

57:                                               ; preds = %48
  %58 = load i8*, i8** %6, align 8
  %59 = icmp eq i8* %58, inttoptr (i64 -1 to i8*)
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i64, i64* %8, align 8
  %62 = call i8* @malloc(i64 %61)
  store i8* %62, i8** %6, align 8
  br label %63

63:                                               ; preds = %60, %57
  br label %64

64:                                               ; preds = %63, %54
  %65 = load i32, i32* @idx_fd, align 4
  %66 = load i64, i64* %7, align 8
  %67 = load i32, i32* @SEEK_SET, align 4
  %68 = call i64 @lseek(i32 %65, i64 %66, i32 %67)
  %69 = load i64, i64* %7, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load i8*, i8** %6, align 8
  %74 = bitcast i8* %73 to i32*
  store i32* %74, i32** getelementptr inbounds ([2 x %struct.iovec], [2 x %struct.iovec]* @load_index_part.io_req, i64 0, i64 0, i32 0), align 16
  %75 = load i64, i64* %8, align 8
  store i64 %75, i64* getelementptr inbounds ([2 x %struct.iovec], [2 x %struct.iovec]* @load_index_part.io_req, i64 0, i64 0, i32 1), align 8
  store i32* @load_index_part.index_part_crc32, i32** getelementptr inbounds ([2 x %struct.iovec], [2 x %struct.iovec]* @load_index_part.io_req, i64 0, i64 1, i32 0), align 16
  store i64 4, i64* getelementptr inbounds ([2 x %struct.iovec], [2 x %struct.iovec]* @load_index_part.io_req, i64 0, i64 1, i32 1), align 8
  %76 = load i32, i32* @idx_fd, align 4
  %77 = call i32 @readv(i32 %76, %struct.iovec* getelementptr inbounds ([2 x %struct.iovec], [2 x %struct.iovec]* @load_index_part.io_req, i64 0, i64 0), i32 2)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* %8, align 8
  %81 = add nsw i64 %80, 4
  %82 = icmp ne i64 %79, %81
  br i1 %82, label %83, label %98

83:                                               ; preds = %64
  %84 = load i32, i32* @stderr, align 4
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* %8, align 8
  %88 = add nsw i64 %87, 4
  %89 = load i64, i64* %7, align 8
  %90 = call i32 (i32, i8*, i64, i64, ...) @fprintf(i32 %84, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i64 %86, i64 %88, i64 %89)
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* %8, align 8
  %94 = add nsw i64 %93, 4
  %95 = icmp eq i64 %92, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  store i8* null, i8** %5, align 8
  br label %131

98:                                               ; preds = %64
  %99 = load i32, i32* @verbosity, align 4
  %100 = icmp sgt i32 %99, 3
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load i32, i32* @stderr, align 4
  %103 = load i64, i64* %8, align 8
  %104 = add nsw i64 %103, 4
  %105 = load i64, i64* %7, align 8
  %106 = call i32 (i32, i8*, i64, i64, ...) @fprintf(i32 %102, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %104, i64 %105)
  br label %107

107:                                              ; preds = %101, %98
  %108 = load i8*, i8** %6, align 8
  %109 = load i64, i64* %8, align 8
  %110 = call i32 @compute_crc32(i8* %108, i64 %109)
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @load_index_part.index_part_crc32, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %126

114:                                              ; preds = %107
  %115 = load i32, i32* @stderr, align 4
  %116 = load i64, i64* %8, align 8
  %117 = load i64, i64* %7, align 8
  %118 = load i32, i32* @load_index_part.index_part_crc32, align 4
  %119 = load i32, i32* %11, align 4
  %120 = call i32 (i32, i8*, i64, i64, ...) @fprintf(i32 %115, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.2, i64 0, i64 0), i64 %116, i64 %117, i32 %118, i32 %119)
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @load_index_part.index_part_crc32, align 4
  %123 = icmp eq i32 %121, %122
  %124 = zext i1 %123 to i32
  %125 = call i32 @assert(i32 %124)
  store i8* null, i8** %5, align 8
  br label %131

126:                                              ; preds = %107
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* @idx_loaded_bytes, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* @idx_loaded_bytes, align 4
  %130 = load i8*, i8** %6, align 8
  store i8* %130, i8** %5, align 8
  br label %131

131:                                              ; preds = %126, %114, %83
  %132 = load i8*, i8** %5, align 8
  ret i8* %132
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @zmalloc(i64) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @readv(i32, %struct.iovec*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i64, i64, ...) #1

declare dso_local i32 @compute_crc32(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
