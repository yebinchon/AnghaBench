; ModuleID = '/home/carl/AnghaBench/h2o/deps/picohttpparser/extr_test.c_test_chunked_at_once.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picohttpparser/extr_test.c_test_chunked_at_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phr_chunked_decoder = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"testing at-once, source at line %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i8*, i64)* @test_chunked_at_once to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_chunked_at_once(i32 %0, i32 %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.phr_chunked_decoder, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = bitcast %struct.phr_chunked_decoder* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 8, i1 false)
  %16 = load i32, i32* %7, align 4
  %17 = getelementptr inbounds %struct.phr_chunked_decoder, %struct.phr_chunked_decoder* %11, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @note(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i8*, i8** %8, align 8
  %21 = call i8* @strdup(i8* %20)
  store i8* %21, i8** %12, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = call i64 @strlen(i8* %22)
  store i64 %23, i64* %13, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = call i64 @phr_decode_chunked(%struct.phr_chunked_decoder* %11, i8* %24, i64* %13)
  store i64 %25, i64* %14, align 8
  %26 = load i64, i64* %14, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @ok(i32 %29)
  %31 = load i64, i64* %13, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = call i64 @strlen(i8* %32)
  %34 = icmp eq i64 %31, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @ok(i32 %35)
  %37 = load i8*, i8** %12, align 8
  %38 = load i64, i64* %13, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @bufis(i8* %37, i64 %38, i8* %39)
  %41 = call i32 @ok(i32 %40)
  %42 = load i64, i64* %10, align 8
  %43 = icmp sge i64 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %5
  %45 = load i64, i64* %14, align 8
  %46 = load i64, i64* %10, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %44
  %49 = load i8*, i8** %12, align 8
  %50 = load i64, i64* %13, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i64, i64* %14, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = call i64 @strlen(i8* %54)
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i64, i64* %14, align 8
  %58 = sub i64 0, %57
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = call i32 @bufis(i8* %51, i64 %52, i8* %59)
  %61 = call i32 @ok(i32 %60)
  br label %64

62:                                               ; preds = %44
  %63 = call i32 @ok(i32 0)
  br label %64

64:                                               ; preds = %62, %48
  br label %65

65:                                               ; preds = %64, %5
  %66 = load i8*, i8** %12, align 8
  %67 = call i32 @free(i8* %66)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @note(i8*, i32) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @phr_decode_chunked(%struct.phr_chunked_decoder*, i8*, i64*) #2

declare dso_local i32 @ok(i32) #2

declare dso_local i32 @bufis(i8*, i64, i8*) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
