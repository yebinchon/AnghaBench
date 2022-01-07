; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/core/extr_headers.c_test_set_header_token.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/core/extr_headers.c_test_set_header_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { i8*, i32 }

@H2O_TOKEN_VARY = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"cookie\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"accept-encoding\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"cookie, accept-encoding\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Cookie, accept-encoding\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_set_header_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_set_header_token() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_9__, align 8
  %3 = bitcast %struct.TYPE_9__* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %3, i8 0, i64 24, i1 false)
  %4 = call i32 @h2o_mem_init_pool(i32* %1)
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** @H2O_TOKEN_VARY, align 8
  %6 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @h2o_set_header_token(i32* %1, %struct.TYPE_9__* %2, %struct.TYPE_10__* %5, i32 %6)
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 1
  %11 = zext i1 %10 to i32
  %12 = call i32 @ok(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** @H2O_TOKEN_VARY, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = icmp eq i32* %17, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @ok(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %36 = call i32 @h2o_memis(i8* %28, i32 %34, i32 %35)
  %37 = call i32 @ok(i32 %36)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** @H2O_TOKEN_VARY, align 8
  %39 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32 @h2o_set_header_token(i32* %1, %struct.TYPE_9__* %2, %struct.TYPE_10__* %38, i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 1
  %44 = zext i1 %43 to i32
  %45 = call i32 @ok(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** @H2O_TOKEN_VARY, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = icmp eq i32* %50, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @ok(i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %69 = call i32 @h2o_memis(i8* %61, i32 %67, i32 %68)
  %70 = call i32 @ok(i32 %69)
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 0
  store i8 67, i8* %77, align 1
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** @H2O_TOKEN_VARY, align 8
  %79 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %80 = call i32 @h2o_set_header_token(i32* %1, %struct.TYPE_9__* %2, %struct.TYPE_10__* %78, i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 1
  %84 = zext i1 %83 to i32
  %85 = call i32 @ok(i32 %84)
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** @H2O_TOKEN_VARY, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = icmp eq i32* %90, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @ok(i32 %94)
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %109 = call i32 @h2o_memis(i8* %101, i32 %107, i32 %108)
  %110 = call i32 @ok(i32 %109)
  %111 = call i32 @h2o_mem_clear_pool(i32* %1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @h2o_mem_init_pool(i32*) #2

declare dso_local i32 @h2o_set_header_token(i32*, %struct.TYPE_9__*, %struct.TYPE_10__*, i32) #2

declare dso_local i32 @H2O_STRLIT(i8*) #2

declare dso_local i32 @ok(i32) #2

declare dso_local i32 @h2o_memis(i8*, i32, i32) #2

declare dso_local i32 @h2o_mem_clear_pool(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
