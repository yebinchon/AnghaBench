; ModuleID = '/home/carl/AnghaBench/h2o/deps/picohttpparser/extr_test.c_test_chunked_failure.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picohttpparser/extr_test.c_test_chunked_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phr_chunked_decoder = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"testing failure at-once, source at line %d\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"testing failure per-byte, source at line %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32)* @test_chunked_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_chunked_failure(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.phr_chunked_decoder, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = bitcast %struct.phr_chunked_decoder* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  %13 = load i8*, i8** %5, align 8
  %14 = call i8* @strdup(i8* %13)
  store i8* %14, i8** %8, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @note(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i8*, i8** %8, align 8
  %18 = call i64 @strlen(i8* %17)
  store i64 %18, i64* %9, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @phr_decode_chunked(%struct.phr_chunked_decoder* %7, i8* %19, i64* %9)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @ok(i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @note(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = call i32 @memset(%struct.phr_chunked_decoder* %7, i32 0, i32 4)
  store i64 0, i64* %10, align 8
  br label %29

29:                                               ; preds = %61, %3
  %30 = load i8*, i8** %5, align 8
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %64

36:                                               ; preds = %29
  %37 = load i8*, i8** %5, align 8
  %38 = load i64, i64* %10, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  store i8 %40, i8* %42, align 1
  store i64 1, i64* %9, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @phr_decode_chunked(%struct.phr_chunked_decoder* %7, i8* %43, i64* %9)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %53

47:                                               ; preds = %36
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @ok(i32 %51)
  br label %70

53:                                               ; preds = %36
  %54 = load i32, i32* %11, align 4
  %55 = icmp eq i32 %54, -2
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %59

57:                                               ; preds = %53
  %58 = call i32 @ok(i32 0)
  br label %70

59:                                               ; preds = %56
  br label %60

60:                                               ; preds = %59
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %10, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %10, align 8
  br label %29

64:                                               ; preds = %29
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @ok(i32 %68)
  br label %70

70:                                               ; preds = %64, %57, %47
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 @free(i8* %71)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @note(i8*, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @phr_decode_chunked(%struct.phr_chunked_decoder*, i8*, i64*) #2

declare dso_local i32 @ok(i32) #2

declare dso_local i32 @memset(%struct.phr_chunked_decoder*, i32, i32) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
