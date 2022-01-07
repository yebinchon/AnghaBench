; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_middleware.c_handle_header_env_key.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_middleware.c_handle_header_env_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_7__ = type { i32, i32 }

@H2O_TOKEN_CONTENT_LENGTH = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*, i32, i32*, i8*)* @handle_header_env_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_header_env_key(i32* %0, %struct.TYPE_8__* %1, i32 %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_8__, align 8
  %14 = alloca %struct.TYPE_8__, align 8
  %15 = alloca %struct.TYPE_8__, align 8
  %16 = bitcast %struct.TYPE_8__* %7 to { i32, i32* }*
  %17 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %16, i32 0, i32 0
  store i32 %2, i32* %17, align 8
  %18 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %16, i32 0, i32 1
  store i32* %3, i32** %18, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %9, align 8
  store i8* %4, i8** %10, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %11, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call { i32, i32* } @convert_env_to_header_name(i32* %22, i32* %25, i32 %28)
  %30 = bitcast %struct.TYPE_8__* %13 to { i32, i32* }*
  %31 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %30, i32 0, i32 0
  %32 = extractvalue { i32, i32* } %29, 0
  store i32 %32, i32* %31, align 8
  %33 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %30, i32 0, i32 1
  %34 = extractvalue { i32, i32* } %29, 1
  store i32* %34, i32** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %106

39:                                               ; preds = %5
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32* @h2o_lookup_token(i32* %41, i32 %43)
  store i32* %44, i32** %12, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %77

46:                                               ; preds = %39
  %47 = load i32*, i32** %12, align 8
  %48 = load i32*, i32** @H2O_TOKEN_CONTENT_LENGTH, align 8
  %49 = icmp eq i32* %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %76

51:                                               ; preds = %46
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call { i32, i32* } @h2o_strdup(i32* %53, i32* %55, i32 %57)
  %59 = bitcast %struct.TYPE_8__* %14 to { i32, i32* }*
  %60 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %59, i32 0, i32 0
  %61 = extractvalue { i32, i32* } %58, 0
  store i32 %61, i32* %60, align 8
  %62 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %59, i32 0, i32 1
  %63 = extractvalue { i32, i32* } %58, 1
  store i32* %63, i32** %62, align 8
  %64 = bitcast %struct.TYPE_8__* %7 to i8*
  %65 = bitcast %struct.TYPE_8__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %64, i8* align 8 %65, i64 16, i1 false)
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32*, i32** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @h2o_add_header(i32* %67, i32* %69, i32* %70, i32* null, i32* %72, i32 %74)
  br label %76

76:                                               ; preds = %51, %50
  br label %105

77:                                               ; preds = %39
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call { i32, i32* } @h2o_strdup(i32* %79, i32* %81, i32 %83)
  %85 = bitcast %struct.TYPE_8__* %15 to { i32, i32* }*
  %86 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %85, i32 0, i32 0
  %87 = extractvalue { i32, i32* } %84, 0
  store i32 %87, i32* %86, align 8
  %88 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %85, i32 0, i32 1
  %89 = extractvalue { i32, i32* } %84, 1
  store i32* %89, i32** %88, align 8
  %90 = bitcast %struct.TYPE_8__* %7 to i8*
  %91 = bitcast %struct.TYPE_8__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %90, i8* align 8 %91, i64 16, i1 false)
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @h2o_add_header_by_str(i32* %93, i32* %95, i32* %97, i32 %99, i32 0, i32* null, i32* %101, i32 %103)
  br label %105

105:                                              ; preds = %77, %76
  store i32 0, i32* %6, align 4
  br label %106

106:                                              ; preds = %105, %38
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local { i32, i32* } @convert_env_to_header_name(i32*, i32*, i32) #1

declare dso_local i32* @h2o_lookup_token(i32*, i32) #1

declare dso_local { i32, i32* } @h2o_strdup(i32*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @h2o_add_header(i32*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @h2o_add_header_by_str(i32*, i32*, i32*, i32, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
