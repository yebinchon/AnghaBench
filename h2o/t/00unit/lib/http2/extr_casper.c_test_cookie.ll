; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/http2/extr_casper.c_test_cookie.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/http2/extr_casper.c_test_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32* }

@.str = private unnamed_addr constant [12 x i8] c"/index.html\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"/index.php\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_cookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_cookie() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_4__, align 8
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = call i32* @h2o_http2_casper_create(i32 13, i32 6)
  store i32* %7, i32** %1, align 8
  %8 = load i32*, i32** %1, align 8
  %9 = call { i64, i32* } @h2o_http2_casper_get_cookie(i32* %8)
  %10 = bitcast %struct.TYPE_4__* %2 to { i64, i32* }*
  %11 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %10, i32 0, i32 0
  %12 = extractvalue { i64, i32* } %9, 0
  store i64 %12, i64* %11, align 8
  %13 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %10, i32 0, i32 1
  %14 = extractvalue { i64, i32* } %9, 1
  store i32* %14, i32** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @ok(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @ok(i32 %23)
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @h2o_http2_casper_lookup(i32* %25, i32 %26, i32 1)
  %28 = load i32*, i32** %1, align 8
  %29 = call { i64, i32* } @h2o_http2_casper_get_cookie(i32* %28)
  %30 = bitcast %struct.TYPE_4__* %3 to { i64, i32* }*
  %31 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %30, i32 0, i32 0
  %32 = extractvalue { i64, i32* } %29, 0
  store i64 %32, i64* %31, align 8
  %33 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %30, i32 0, i32 1
  %34 = extractvalue { i64, i32* } %29, 1
  store i32* %34, i32** %33, align 8
  %35 = bitcast %struct.TYPE_4__* %2 to i8*
  %36 = bitcast %struct.TYPE_4__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 16, i1 false)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @ok(i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call { i64, i32* } @h2o_strdup(i32* null, i32* %43, i64 %45)
  %47 = bitcast %struct.TYPE_4__* %4 to { i64, i32* }*
  %48 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %47, i32 0, i32 0
  %49 = extractvalue { i64, i32* } %46, 0
  store i64 %49, i64* %48, align 8
  %50 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %47, i32 0, i32 1
  %51 = extractvalue { i64, i32* } %46, 1
  store i32* %51, i32** %50, align 8
  %52 = bitcast %struct.TYPE_4__* %2 to i8*
  %53 = bitcast %struct.TYPE_4__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 %53, i64 16, i1 false)
  %54 = load i32*, i32** %1, align 8
  %55 = call i32 @h2o_http2_casper_destroy(i32* %54)
  %56 = call i32* @h2o_http2_casper_create(i32 13, i32 6)
  store i32* %56, i32** %1, align 8
  %57 = load i32*, i32** %1, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @get_end_of_cookie_value(i32* %61, i64 %63)
  %65 = call i32 @h2o_http2_casper_consume_cookie(i32* %57, i32* %59, i32 %64)
  %66 = load i32*, i32** %1, align 8
  %67 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %68 = call i32 @h2o_http2_casper_lookup(i32* %66, i32 %67, i32 0)
  %69 = icmp eq i32 %68, 1
  %70 = zext i1 %69 to i32
  %71 = call i32 @ok(i32 %70)
  %72 = load i32*, i32** %1, align 8
  %73 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %74 = call i32 @h2o_http2_casper_lookup(i32* %72, i32 %73, i32 0)
  %75 = icmp eq i32 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i32 @ok(i32 %76)
  %78 = load i32*, i32** %1, align 8
  %79 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %80 = call i32 @h2o_http2_casper_lookup(i32* %78, i32 %79, i32 1)
  %81 = load i32*, i32** %1, align 8
  %82 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %83 = call i32 @h2o_http2_casper_lookup(i32* %81, i32 %82, i32 1)
  %84 = load i32*, i32** %1, align 8
  %85 = call { i64, i32* } @h2o_http2_casper_get_cookie(i32* %84)
  %86 = bitcast %struct.TYPE_4__* %5 to { i64, i32* }*
  %87 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %86, i32 0, i32 0
  %88 = extractvalue { i64, i32* } %85, 0
  store i64 %88, i64* %87, align 8
  %89 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %86, i32 0, i32 1
  %90 = extractvalue { i64, i32* } %85, 1
  store i32* %90, i32** %89, align 8
  %91 = bitcast %struct.TYPE_4__* %2 to i8*
  %92 = bitcast %struct.TYPE_4__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %91, i8* align 8 %92, i64 16, i1 false)
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  %96 = zext i1 %95 to i32
  %97 = call i32 @ok(i32 %96)
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call { i64, i32* } @h2o_strdup(i32* null, i32* %99, i64 %101)
  %103 = bitcast %struct.TYPE_4__* %6 to { i64, i32* }*
  %104 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %103, i32 0, i32 0
  %105 = extractvalue { i64, i32* } %102, 0
  store i64 %105, i64* %104, align 8
  %106 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %103, i32 0, i32 1
  %107 = extractvalue { i64, i32* } %102, 1
  store i32* %107, i32** %106, align 8
  %108 = bitcast %struct.TYPE_4__* %2 to i8*
  %109 = bitcast %struct.TYPE_4__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %108, i8* align 8 %109, i64 16, i1 false)
  %110 = load i32*, i32** %1, align 8
  %111 = call i32 @h2o_http2_casper_destroy(i32* %110)
  %112 = call i32* @h2o_http2_casper_create(i32 13, i32 6)
  store i32* %112, i32** %1, align 8
  %113 = load i32*, i32** %1, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @get_end_of_cookie_value(i32* %117, i64 %119)
  %121 = call i32 @h2o_http2_casper_consume_cookie(i32* %113, i32* %115, i32 %120)
  %122 = load i32*, i32** %1, align 8
  %123 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %124 = call i32 @h2o_http2_casper_lookup(i32* %122, i32 %123, i32 0)
  %125 = icmp eq i32 %124, 1
  %126 = zext i1 %125 to i32
  %127 = call i32 @ok(i32 %126)
  %128 = load i32*, i32** %1, align 8
  %129 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %130 = call i32 @h2o_http2_casper_lookup(i32* %128, i32 %129, i32 0)
  %131 = icmp eq i32 %130, 1
  %132 = zext i1 %131 to i32
  %133 = call i32 @ok(i32 %132)
  %134 = load i32*, i32** %1, align 8
  %135 = call i32 @h2o_http2_casper_destroy(i32* %134)
  ret void
}

declare dso_local i32* @h2o_http2_casper_create(i32, i32) #1

declare dso_local { i64, i32* } @h2o_http2_casper_get_cookie(i32*) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @h2o_http2_casper_lookup(i32*, i32, i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { i64, i32* } @h2o_strdup(i32*, i32*, i64) #1

declare dso_local i32 @h2o_http2_casper_destroy(i32*) #1

declare dso_local i32 @h2o_http2_casper_consume_cookie(i32*, i32*, i32) #1

declare dso_local i32 @get_end_of_cookie_value(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
