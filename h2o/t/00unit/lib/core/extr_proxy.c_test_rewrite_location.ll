; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/core/extr_proxy.c_test_rewrite_location.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/core/extr_proxy.c_test_rewrite_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32* }

@.str = private unnamed_addr constant [25 x i8] c"http://realhost:81/real/\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"http://realhost:81/real/abc\00", align 1
@H2O_URL_SCHEME_HTTPS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"vhost:8443\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"/virtual/\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"https://vhost:8443/virtual/abc\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"http://realhost:81/other/abc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_rewrite_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_rewrite_location() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @h2o_url_parse(i32 %6, i32* %1)
  %8 = call i32 @h2o_mem_init_pool(i32* %2)
  %9 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %10 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %11 = call i32 @h2o_iovec_init(i32 %10)
  %12 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %13 = call i32 @h2o_iovec_init(i32 %12)
  %14 = call { i64, i32* } @rewrite_location(i32* %2, i32 %9, i32* %1, i32* @H2O_URL_SCHEME_HTTPS, i32 %11, i32 %13)
  %15 = bitcast %struct.TYPE_3__* %4 to { i64, i32* }*
  %16 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %15, i32 0, i32 0
  %17 = extractvalue { i64, i32* } %14, 0
  store i64 %17, i64* %16, align 8
  %18 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %15, i32 0, i32 1
  %19 = extractvalue { i64, i32* } %14, 1
  store i32* %19, i32** %18, align 8
  %20 = bitcast %struct.TYPE_3__* %3 to i8*
  %21 = bitcast %struct.TYPE_3__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 16, i1 false)
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %27 = call i32 @h2o_memis(i32* %23, i64 %25, i32 %26)
  %28 = call i32 @ok(i32 %27)
  %29 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %30 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %31 = call i32 @h2o_iovec_init(i32 %30)
  %32 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %33 = call i32 @h2o_iovec_init(i32 %32)
  %34 = call { i64, i32* } @rewrite_location(i32* %2, i32 %29, i32* %1, i32* @H2O_URL_SCHEME_HTTPS, i32 %31, i32 %33)
  %35 = bitcast %struct.TYPE_3__* %5 to { i64, i32* }*
  %36 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %35, i32 0, i32 0
  %37 = extractvalue { i64, i32* } %34, 0
  store i64 %37, i64* %36, align 8
  %38 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %35, i32 0, i32 1
  %39 = extractvalue { i64, i32* } %34, 1
  store i32* %39, i32** %38, align 8
  %40 = bitcast %struct.TYPE_3__* %3 to i8*
  %41 = bitcast %struct.TYPE_3__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 16, i1 false)
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 @ok(i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @ok(i32 %50)
  %52 = call i32 @h2o_mem_clear_pool(i32* %2)
  ret void
}

declare dso_local i32 @h2o_url_parse(i32, i32*) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i32 @h2o_mem_init_pool(i32*) #1

declare dso_local { i64, i32* } @rewrite_location(i32*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @h2o_iovec_init(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @h2o_memis(i32*, i64, i32) #1

declare dso_local i32 @h2o_mem_clear_pool(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
