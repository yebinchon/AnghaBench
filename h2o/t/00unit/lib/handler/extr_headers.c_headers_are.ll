; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_headers.c_headers_are.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_headers.c_headers_are.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_8__ = type { i32, i32, i32* }

@.str = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*, i8*, i64)* @headers_are to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @headers_are(i32* %0, %struct.TYPE_9__* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_8__, align 8
  %11 = alloca %struct.TYPE_8__, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = bitcast %struct.TYPE_8__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 16, i1 false)
  store i64 0, i64* %9, align 8
  br label %13

13:                                               ; preds = %53, %4
  %14 = load i64, i64* %9, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %56

19:                                               ; preds = %13
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %30 = call i32 @h2o_iovec_init(i32 %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %39 = call i32 @h2o_iovec_init(i32 %38)
  %40 = bitcast %struct.TYPE_8__* %10 to { i64, i32* }*
  %41 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %40, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call { i64, i32* } @h2o_concat(i32* %20, i64 %42, i32* %44, i32 %28, i32 %30, i32 %37, i32 %39)
  %46 = bitcast %struct.TYPE_8__* %11 to { i64, i32* }*
  %47 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %46, i32 0, i32 0
  %48 = extractvalue { i64, i32* } %45, 0
  store i64 %48, i64* %47, align 8
  %49 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %46, i32 0, i32 1
  %50 = extractvalue { i64, i32* } %45, 1
  store i32* %50, i32** %49, align 8
  %51 = bitcast %struct.TYPE_8__* %10 to i8*
  %52 = bitcast %struct.TYPE_8__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 16, i1 false)
  br label %53

53:                                               ; preds = %19
  %54 = load i64, i64* %9, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %9, align 8
  br label %13

56:                                               ; preds = %13
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @h2o_memis(i32 %58, i32 %60, i8* %61, i64 %62)
  ret i32 %63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local { i64, i32* } @h2o_concat(i32*, i64, i32*, i32, i32, i32, i32) #2

declare dso_local i32 @h2o_iovec_init(i32) #2

declare dso_local i32 @H2O_STRLIT(i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @h2o_memis(i32, i32, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
