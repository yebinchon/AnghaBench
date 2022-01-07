; ModuleID = '/home/carl/AnghaBench/h2o/lib/http3/extr_qpack.c_insert_with_name_reference.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http3/extr_qpack.c_insert_with_name_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64, i64 }
%struct.TYPE_9__ = type { i32* }
%struct.st_h2o_qpack_header_t = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }

@MAX_HEADER_VALUE_LENGTH = common dso_local global i64 0, align 8
@h2o_qpack_err_header_value_too_long = common dso_local global i8* null, align 8
@H2O_HTTP3_ERROR_QPACK_DECOMPRESSION_FAILED = common dso_local global i32 0, align 4
@h2o_qpack_err_invalid_dynamic_reference = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i64, i32, i32*, i64, i8**)* @insert_with_name_reference to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insert_with_name_reference(%struct.TYPE_10__* %0, i32 %1, i64 %2, i32 %3, i32* %4, i64 %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8**, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca %struct.st_h2o_qpack_header_t*, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i64 %5, i64* %14, align 8
  store i8** %6, i8*** %15, align 8
  %19 = load i64, i64* %14, align 8
  %20 = load i64, i64* @MAX_HEADER_VALUE_LENGTH, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %7
  %23 = load i8*, i8** @h2o_qpack_err_header_value_too_long, align 8
  %24 = load i8**, i8*** %15, align 8
  store i8* %23, i8** %24, align 8
  %25 = load i32, i32* @H2O_HTTP3_ERROR_QPACK_DECOMPRESSION_FAILED, align 4
  store i32 %25, i32* %8, align 4
  br label %114

26:                                               ; preds = %7
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %26
  %30 = load i64, i64* %11, align 8
  %31 = load i8**, i8*** %15, align 8
  %32 = call %struct.TYPE_9__* @resolve_static_abs(i64 %30, i8** %31)
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %16, align 8
  %33 = icmp eq %struct.TYPE_9__* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @H2O_HTTP3_ERROR_QPACK_DECOMPRESSION_FAILED, align 4
  store i32 %35, i32* %8, align 4
  br label %114

36:                                               ; preds = %29
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load i32*, i32** %13, align 8
  %43 = load i64, i64* %14, align 8
  %44 = load i8**, i8*** %15, align 8
  %45 = call i32 @insert_token_header(%struct.TYPE_10__* %37, i32* %40, i32 %41, i32* %42, i64 %43, i8** %44)
  store i32 %45, i32* %8, align 4
  br label %114

46:                                               ; preds = %26
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %54, %58
  %60 = add nsw i64 %50, %59
  %61 = sub nsw i64 %60, 1
  store i64 %61, i64* %18, align 8
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* %18, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %46
  %66 = load i8*, i8** @h2o_qpack_err_invalid_dynamic_reference, align 8
  %67 = load i8**, i8*** %15, align 8
  store i8* %66, i8** %67, align 8
  %68 = load i32, i32* @H2O_HTTP3_ERROR_QPACK_DECOMPRESSION_FAILED, align 4
  store i32 %68, i32* %8, align 4
  br label %114

69:                                               ; preds = %46
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i64, i64* %18, align 8
  %73 = load i64, i64* %11, align 8
  %74 = sub nsw i64 %72, %73
  %75 = load i8**, i8*** %15, align 8
  %76 = call %struct.st_h2o_qpack_header_t* @resolve_dynamic_abs(%struct.TYPE_11__* %71, i64 %74, i8** %75)
  store %struct.st_h2o_qpack_header_t* %76, %struct.st_h2o_qpack_header_t** %17, align 8
  %77 = icmp eq %struct.st_h2o_qpack_header_t* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = load i32, i32* @H2O_HTTP3_ERROR_QPACK_DECOMPRESSION_FAILED, align 4
  store i32 %79, i32* %8, align 4
  br label %114

80:                                               ; preds = %69
  %81 = load %struct.st_h2o_qpack_header_t*, %struct.st_h2o_qpack_header_t** %17, align 8
  %82 = getelementptr inbounds %struct.st_h2o_qpack_header_t, %struct.st_h2o_qpack_header_t* %81, i32 0, i32 0
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = call i64 @h2o_iovec_is_token(%struct.TYPE_12__* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %80
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %88 = load %struct.st_h2o_qpack_header_t*, %struct.st_h2o_qpack_header_t** %17, align 8
  %89 = getelementptr inbounds %struct.st_h2o_qpack_header_t, %struct.st_h2o_qpack_header_t* %88, i32 0, i32 0
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = bitcast %struct.TYPE_12__* %90 to i32*
  %92 = load i32, i32* %12, align 4
  %93 = load i32*, i32** %13, align 8
  %94 = load i64, i64* %14, align 8
  %95 = load i8**, i8*** %15, align 8
  %96 = call i32 @insert_token_header(%struct.TYPE_10__* %87, i32* %91, i32 %92, i32* %93, i64 %94, i8** %95)
  store i32 %96, i32* %8, align 4
  br label %114

97:                                               ; preds = %80
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %99 = load %struct.st_h2o_qpack_header_t*, %struct.st_h2o_qpack_header_t** %17, align 8
  %100 = getelementptr inbounds %struct.st_h2o_qpack_header_t, %struct.st_h2o_qpack_header_t* %99, i32 0, i32 0
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.st_h2o_qpack_header_t*, %struct.st_h2o_qpack_header_t** %17, align 8
  %105 = getelementptr inbounds %struct.st_h2o_qpack_header_t, %struct.st_h2o_qpack_header_t* %104, i32 0, i32 0
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %12, align 4
  %110 = load i32*, i32** %13, align 8
  %111 = load i64, i64* %14, align 8
  %112 = load i8**, i8*** %15, align 8
  %113 = call i32 @insert_literal_header(%struct.TYPE_10__* %98, i32 %103, i32 %108, i32 %109, i32* %110, i64 %111, i8** %112)
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %97, %86, %78, %65, %36, %34, %22
  %115 = load i32, i32* %8, align 4
  ret i32 %115
}

declare dso_local %struct.TYPE_9__* @resolve_static_abs(i64, i8**) #1

declare dso_local i32 @insert_token_header(%struct.TYPE_10__*, i32*, i32, i32*, i64, i8**) #1

declare dso_local %struct.st_h2o_qpack_header_t* @resolve_dynamic_abs(%struct.TYPE_11__*, i64, i8**) #1

declare dso_local i64 @h2o_iovec_is_token(%struct.TYPE_12__*) #1

declare dso_local i32 @insert_literal_header(%struct.TYPE_10__*, i32, i32, i32, i32*, i64, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
