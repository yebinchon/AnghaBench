; ModuleID = '/home/carl/AnghaBench/h2o/lib/http3/extr_qpack.c_decode_value_and_insert.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http3/extr_qpack.c_decode_value_and_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.st_h2o_qpack_header_t = type { i64, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64 }

@SIZE_MAX = common dso_local global i64 0, align 8
@HEADER_ENTRY_SIZE_OFFSET = common dso_local global i64 0, align 8
@h2o_qpack_err_header_exceeds_table_size = common dso_local global i8* null, align 8
@H2O_HTTP3_ERROR_QPACK_DECOMPRESSION_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.st_h2o_qpack_header_t*, i32, i32*, i64, i8**)* @decode_value_and_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_value_and_insert(%struct.TYPE_8__* %0, %struct.st_h2o_qpack_header_t* %1, i32 %2, i32* %3, i64 %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.st_h2o_qpack_header_t*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8**, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store %struct.st_h2o_qpack_header_t* %1, %struct.st_h2o_qpack_header_t** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i8** %5, i8*** %13, align 8
  %14 = load i32, i32* %10, align 4
  %15 = load i32*, i32** %11, align 8
  %16 = load i64, i64* %12, align 8
  %17 = load %struct.st_h2o_qpack_header_t*, %struct.st_h2o_qpack_header_t** %9, align 8
  %18 = getelementptr inbounds %struct.st_h2o_qpack_header_t, %struct.st_h2o_qpack_header_t* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i8**, i8*** %13, align 8
  %21 = call i64 @decode_value(i32 %14, i32* %15, i64 %16, i32 %19, i8** %20)
  %22 = load %struct.st_h2o_qpack_header_t*, %struct.st_h2o_qpack_header_t** %9, align 8
  %23 = getelementptr inbounds %struct.st_h2o_qpack_header_t, %struct.st_h2o_qpack_header_t* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load i64, i64* @SIZE_MAX, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %6
  br label %51

27:                                               ; preds = %6
  %28 = load %struct.st_h2o_qpack_header_t*, %struct.st_h2o_qpack_header_t** %9, align 8
  %29 = getelementptr inbounds %struct.st_h2o_qpack_header_t, %struct.st_h2o_qpack_header_t* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.st_h2o_qpack_header_t*, %struct.st_h2o_qpack_header_t** %9, align 8
  %34 = getelementptr inbounds %struct.st_h2o_qpack_header_t, %struct.st_h2o_qpack_header_t* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = load i64, i64* @HEADER_ENTRY_SIZE_OFFSET, align 8
  %38 = add nsw i64 %36, %37
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %38, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %27
  %45 = load i8*, i8** @h2o_qpack_err_header_exceeds_table_size, align 8
  %46 = load i8**, i8*** %13, align 8
  store i8* %45, i8** %46, align 8
  br label %51

47:                                               ; preds = %27
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %49 = load %struct.st_h2o_qpack_header_t*, %struct.st_h2o_qpack_header_t** %9, align 8
  %50 = call i32 @decoder_insert(%struct.TYPE_8__* %48, %struct.st_h2o_qpack_header_t* %49)
  store i32 0, i32* %7, align 4
  br label %55

51:                                               ; preds = %44, %26
  %52 = load %struct.st_h2o_qpack_header_t*, %struct.st_h2o_qpack_header_t** %9, align 8
  %53 = call i32 @h2o_mem_release_shared(%struct.st_h2o_qpack_header_t* %52)
  %54 = load i32, i32* @H2O_HTTP3_ERROR_QPACK_DECOMPRESSION_FAILED, align 4
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %51, %47
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local i64 @decode_value(i32, i32*, i64, i32, i8**) #1

declare dso_local i32 @decoder_insert(%struct.TYPE_8__*, %struct.st_h2o_qpack_header_t*) #1

declare dso_local i32 @h2o_mem_release_shared(%struct.st_h2o_qpack_header_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
