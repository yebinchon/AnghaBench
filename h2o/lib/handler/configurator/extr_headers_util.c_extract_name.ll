; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_headers_util.c_extract_name.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_headers_util.c_extract_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.TYPE_9__**)* @extract_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_name(i8* %0, i64 %1, %struct.TYPE_9__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__**, align 8
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca %struct.TYPE_9__, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_9__** %2, %struct.TYPE_9__*** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call { i64, i32 } @h2o_str_stripws(i8* %12, i64 %13)
  %15 = bitcast %struct.TYPE_9__* %10 to { i64, i32 }*
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 0
  %17 = extractvalue { i64, i32 } %14, 0
  store i64 %17, i64* %16, align 8
  %18 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 1
  %19 = extractvalue { i64, i32 } %14, 1
  store i32 %19, i32* %18, align 8
  %20 = bitcast %struct.TYPE_9__* %8 to i8*
  %21 = bitcast %struct.TYPE_9__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 16, i1 false)
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %66

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call { i64, i32 } @h2o_strdup(i32* null, i32 %28, i64 %30)
  %32 = bitcast %struct.TYPE_9__* %11 to { i64, i32 }*
  %33 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %32, i32 0, i32 0
  %34 = extractvalue { i64, i32 } %31, 0
  store i64 %34, i64* %33, align 8
  %35 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %32, i32 0, i32 1
  %36 = extractvalue { i64, i32 } %31, 1
  store i32 %36, i32* %35, align 8
  %37 = bitcast %struct.TYPE_9__* %8 to i8*
  %38 = bitcast %struct.TYPE_9__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 16, i1 false)
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @h2o_strtolower(i32 %40, i64 %42)
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call %struct.TYPE_8__* @h2o_lookup_token(i32 %45, i64 %47)
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %9, align 8
  %49 = icmp ne %struct.TYPE_8__* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %26
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = bitcast i32* %52 to %struct.TYPE_9__*
  %54 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  store %struct.TYPE_9__* %53, %struct.TYPE_9__** %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @free(i32 %56)
  br label %65

58:                                               ; preds = %26
  %59 = call %struct.TYPE_9__* @h2o_mem_alloc(i32 16)
  %60 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  store %struct.TYPE_9__* %59, %struct.TYPE_9__** %60, align 8
  %61 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = bitcast %struct.TYPE_9__* %62 to i8*
  %64 = bitcast %struct.TYPE_9__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 16, i1 false)
  br label %65

65:                                               ; preds = %58, %50
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %25
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local { i64, i32 } @h2o_str_stripws(i8*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { i64, i32 } @h2o_strdup(i32*, i32, i64) #1

declare dso_local i32 @h2o_strtolower(i32, i64) #1

declare dso_local %struct.TYPE_8__* @h2o_lookup_token(i32, i64) #1

declare dso_local i32 @free(i32) #1

declare dso_local %struct.TYPE_9__* @h2o_mem_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
