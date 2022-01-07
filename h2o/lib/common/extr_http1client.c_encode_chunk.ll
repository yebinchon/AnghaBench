; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http1client.c_encode_chunk.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http1client.c_encode_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http1client_t = type { i8* }
%struct.TYPE_5__ = type { i32, i8* }

@.str = private unnamed_addr constant [6 x i8] c"%zx\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @encode_chunk(%struct.st_h2o_http1client_t* %0, %struct.TYPE_5__* %1, i32 %2, i8* %3, i64* %4) #0 {
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca %struct.st_h2o_http1client_t*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__, align 8
  %12 = alloca %struct.TYPE_5__, align 8
  %13 = bitcast %struct.TYPE_5__* %6 to { i32, i8* }*
  %14 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %13, i32 0, i32 0
  store i32 %2, i32* %14, align 8
  %15 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %13, i32 0, i32 1
  store i8* %3, i8** %15, align 8
  store %struct.st_h2o_http1client_t* %0, %struct.st_h2o_http1client_t** %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store i64* %4, i64** %9, align 8
  %16 = load i64*, i64** %9, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %10, align 8
  %17 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %7, align 8
  %18 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @snprintf(i8* %19, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %24 = load i64, i64* %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = load i64*, i64** %9, align 8
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, %32
  store i64 %35, i64* %33, align 8
  %36 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %7, align 8
  %37 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %40 = load i64, i64* %10, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %40
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  store i8* %38, i8** %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %70

47:                                               ; preds = %5
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %49 = load i64, i64* %10, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %49
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call { i32, i8* } @h2o_iovec_init(i8* %53, i32 %55)
  %57 = bitcast %struct.TYPE_5__* %11 to { i32, i8* }*
  %58 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %57, i32 0, i32 0
  %59 = extractvalue { i32, i8* } %56, 0
  store i32 %59, i32* %58, align 8
  %60 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %57, i32 0, i32 1
  %61 = extractvalue { i32, i8* } %56, 1
  store i8* %61, i8** %60, align 8
  %62 = bitcast %struct.TYPE_5__* %51 to i8*
  %63 = bitcast %struct.TYPE_5__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 8 %63, i64 16, i1 false)
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = load i64*, i64** %9, align 8
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %68, %66
  store i64 %69, i64* %67, align 8
  br label %70

70:                                               ; preds = %47, %5
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %72 = load i64, i64* %10, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 %72
  %75 = call { i32, i8* } @h2o_iovec_init(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %76 = bitcast %struct.TYPE_5__* %12 to { i32, i8* }*
  %77 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %76, i32 0, i32 0
  %78 = extractvalue { i32, i8* } %75, 0
  store i32 %78, i32* %77, align 8
  %79 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %76, i32 0, i32 1
  %80 = extractvalue { i32, i8* } %75, 1
  store i8* %80, i8** %79, align 8
  %81 = bitcast %struct.TYPE_5__* %74 to i8*
  %82 = bitcast %struct.TYPE_5__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 8 %82, i64 16, i1 false)
  %83 = load i64*, i64** %9, align 8
  %84 = load i64, i64* %83, align 8
  %85 = add i64 %84, 2
  store i64 %85, i64* %83, align 8
  %86 = load i64, i64* %10, align 8
  ret i64 %86
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local { i32, i8* } @h2o_iovec_init(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
