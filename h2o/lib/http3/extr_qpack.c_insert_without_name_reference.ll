; ModuleID = '/home/carl/AnghaBench/h2o/lib/http3/extr_qpack.c_insert_without_name_reference.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http3/extr_qpack.c_insert_without_name_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@MAX_HEADER_NAME_LENGTH = common dso_local global i32 0, align 4
@h2o_qpack_err_header_name_too_long = common dso_local global i8* null, align 8
@H2O_HTTP3_ERROR_QPACK_DECOMPRESSION_FAILED = common dso_local global i32 0, align 4
@MAX_HEADER_VALUE_LENGTH = common dso_local global i32 0, align 4
@h2o_qpack_err_header_value_too_long = common dso_local global i8* null, align 8
@SIZE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32, i32, i32*, i32, i8**)* @insert_without_name_reference to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insert_without_name_reference(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32* %5, i32 %6, i8** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8**, align 8
  %18 = alloca %struct.TYPE_3__, align 4
  %19 = alloca %struct.TYPE_3__, align 4
  %20 = alloca i32*, align 8
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i8** %7, i8*** %17, align 8
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* @MAX_HEADER_NAME_LENGTH, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %8
  %25 = load i8*, i8** @h2o_qpack_err_header_name_too_long, align 8
  %26 = load i8**, i8*** %17, align 8
  store i8* %25, i8** %26, align 8
  %27 = load i32, i32* @H2O_HTTP3_ERROR_QPACK_DECOMPRESSION_FAILED, align 4
  store i32 %27, i32* %9, align 4
  br label %98

28:                                               ; preds = %8
  %29 = load i32, i32* %16, align 4
  %30 = load i32, i32* @MAX_HEADER_VALUE_LENGTH, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i8*, i8** @h2o_qpack_err_header_value_too_long, align 8
  %34 = load i8**, i8*** %17, align 8
  store i8* %33, i8** %34, align 8
  %35 = load i32, i32* @H2O_HTTP3_ERROR_QPACK_DECOMPRESSION_FAILED, align 4
  store i32 %35, i32* %9, align 4
  br label %98

36:                                               ; preds = %28
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %36
  %40 = load i32, i32* %13, align 4
  %41 = mul nsw i32 %40, 2
  %42 = call i32 @alloca(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %12, align 8
  %47 = load i32, i32* %13, align 4
  %48 = load i8**, i8*** %17, align 8
  %49 = call i32 @h2o_hpack_decode_huffman(i32 %45, i32* %46, i32 %47, i32 1, i8** %48)
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @SIZE_MAX, align 4
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %39
  %54 = load i32, i32* @H2O_HTTP3_ERROR_QPACK_DECOMPRESSION_FAILED, align 4
  store i32 %54, i32* %9, align 4
  br label %98

55:                                               ; preds = %39
  br label %72

56:                                               ; preds = %36
  %57 = load i32*, i32** %12, align 8
  %58 = bitcast i32* %57 to i8*
  %59 = load i32, i32* %13, align 4
  %60 = load i8**, i8*** %17, align 8
  %61 = call i32 @h2o_hpack_validate_header_name(i8* %58, i32 %59, i8** %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %56
  %64 = load i32, i32* @H2O_HTTP3_ERROR_QPACK_DECOMPRESSION_FAILED, align 4
  store i32 %64, i32* %9, align 4
  br label %98

65:                                               ; preds = %56
  %66 = load i32*, i32** %12, align 8
  %67 = load i32, i32* %13, align 4
  %68 = call i64 @h2o_iovec_init(i32* %66, i32 %67)
  %69 = bitcast %struct.TYPE_3__* %19 to i64*
  store i64 %68, i64* %69, align 4
  %70 = bitcast %struct.TYPE_3__* %18 to i8*
  %71 = bitcast %struct.TYPE_3__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 %71, i64 8, i1 false)
  br label %72

72:                                               ; preds = %65, %55
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32* @h2o_lookup_token(i32 %74, i32 %76)
  store i32* %77, i32** %20, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %72
  %80 = load i32*, i32** %10, align 8
  %81 = load i32*, i32** %20, align 8
  %82 = load i32, i32* %14, align 4
  %83 = load i32*, i32** %15, align 8
  %84 = load i32, i32* %16, align 4
  %85 = load i8**, i8*** %17, align 8
  %86 = call i32 @insert_token_header(i32* %80, i32* %81, i32 %82, i32* %83, i32 %84, i8** %85)
  store i32 %86, i32* %9, align 4
  br label %98

87:                                               ; preds = %72
  %88 = load i32*, i32** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %14, align 4
  %94 = load i32*, i32** %15, align 8
  %95 = load i32, i32* %16, align 4
  %96 = load i8**, i8*** %17, align 8
  %97 = call i32 @insert_literal_header(i32* %88, i32 %90, i32 %92, i32 %93, i32* %94, i32 %95, i8** %96)
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %87, %79, %63, %53, %32, %24
  %99 = load i32, i32* %9, align 4
  ret i32 %99
}

declare dso_local i32 @alloca(i32) #1

declare dso_local i32 @h2o_hpack_decode_huffman(i32, i32*, i32, i32, i8**) #1

declare dso_local i32 @h2o_hpack_validate_header_name(i8*, i32, i8**) #1

declare dso_local i64 @h2o_iovec_init(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @h2o_lookup_token(i32, i32) #1

declare dso_local i32 @insert_token_header(i32*, i32*, i32, i32*, i32, i8**) #1

declare dso_local i32 @insert_literal_header(i32*, i32, i32, i32, i32*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
