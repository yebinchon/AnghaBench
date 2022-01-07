; ModuleID = '/home/carl/AnghaBench/h2o/deps/picohttpparser/extr_test.c_test_chunked_per_byte.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picohttpparser/extr_test.c_test_chunked_per_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phr_chunked_decoder = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"testing per-byte, source at line %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i8*, i32)* @test_chunked_per_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_chunked_per_byte(i32 %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.phr_chunked_decoder, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %18 = bitcast %struct.phr_chunked_decoder* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 8, i1 false)
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @strlen(i8* %19)
  %21 = add i64 %20, 1
  %22 = trunc i64 %21 to i32
  %23 = call i8* @malloc(i32 %22)
  store i8* %23, i8** %12, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i64 @strlen(i8* %24)
  %26 = load i32, i32* %10, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i32, i32* %10, align 4
  br label %31

30:                                               ; preds = %5
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i32 [ %29, %28 ], [ 0, %30 ]
  %33 = sext i32 %32 to i64
  %34 = sub i64 %25, %33
  store i64 %34, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %35 = load i32, i32* %7, align 4
  %36 = getelementptr inbounds %struct.phr_chunked_decoder, %struct.phr_chunked_decoder* %11, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @note(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %37)
  store i64 0, i64* %16, align 8
  br label %39

39:                                               ; preds = %64, %31
  %40 = load i64, i64* %16, align 8
  %41 = load i64, i64* %13, align 8
  %42 = sub i64 %41, 1
  %43 = icmp ult i64 %40, %42
  br i1 %43, label %44, label %67

44:                                               ; preds = %39
  %45 = load i8*, i8** %8, align 8
  %46 = load i64, i64* %16, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = load i8*, i8** %12, align 8
  %50 = load i64, i64* %14, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8 %48, i8* %51, align 1
  store i64 1, i64* %15, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = load i64, i64* %14, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  %55 = call i32 @phr_decode_chunked(%struct.phr_chunked_decoder* %11, i8* %54, i64* %15)
  store i32 %55, i32* %17, align 4
  %56 = load i32, i32* %17, align 4
  %57 = icmp ne i32 %56, -2
  br i1 %57, label %58, label %60

58:                                               ; preds = %44
  %59 = call i32 @ok(i32 0)
  br label %124

60:                                               ; preds = %44
  %61 = load i64, i64* %15, align 8
  %62 = load i64, i64* %14, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %14, align 8
  br label %64

64:                                               ; preds = %60
  %65 = load i64, i64* %16, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %16, align 8
  br label %39

67:                                               ; preds = %39
  %68 = load i8*, i8** %12, align 8
  %69 = load i64, i64* %14, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  %71 = load i8*, i8** %8, align 8
  %72 = load i64, i64* %13, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  %74 = getelementptr inbounds i8, i8* %73, i64 -1
  %75 = call i32 @strcpy(i8* %70, i8* %74)
  %76 = load i8*, i8** %12, align 8
  %77 = load i64, i64* %14, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  %79 = call i64 @strlen(i8* %78)
  store i64 %79, i64* %15, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = load i64, i64* %14, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  %83 = call i32 @phr_decode_chunked(%struct.phr_chunked_decoder* %11, i8* %82, i64* %15)
  store i32 %83, i32* %17, align 4
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @ok(i32 %87)
  %89 = load i64, i64* %15, align 8
  %90 = load i64, i64* %14, align 8
  %91 = add i64 %90, %89
  store i64 %91, i64* %14, align 8
  %92 = load i64, i64* %14, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = call i64 @strlen(i8* %93)
  %95 = icmp eq i64 %92, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @ok(i32 %96)
  %98 = load i8*, i8** %12, align 8
  %99 = load i64, i64* %14, align 8
  %100 = trunc i64 %99 to i32
  %101 = load i8*, i8** %9, align 8
  %102 = call i32 @bufis(i8* %98, i32 %100, i8* %101)
  %103 = call i32 @ok(i32 %102)
  %104 = load i32, i32* %10, align 4
  %105 = icmp sge i32 %104, 0
  br i1 %105, label %106, label %123

106:                                              ; preds = %67
  %107 = load i32, i32* %17, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %106
  %111 = load i8*, i8** %12, align 8
  %112 = load i64, i64* %14, align 8
  %113 = getelementptr inbounds i8, i8* %111, i64 %112
  %114 = load i32, i32* %10, align 4
  %115 = load i8*, i8** %8, align 8
  %116 = load i64, i64* %13, align 8
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  %118 = call i32 @bufis(i8* %113, i32 %114, i8* %117)
  %119 = call i32 @ok(i32 %118)
  br label %122

120:                                              ; preds = %106
  %121 = call i32 @ok(i32 0)
  br label %122

122:                                              ; preds = %120, %110
  br label %123

123:                                              ; preds = %122, %67
  br label %124

124:                                              ; preds = %123, %58
  %125 = load i8*, i8** %12, align 8
  %126 = call i32 @free(i8* %125)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @malloc(i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @note(i8*, i32) #2

declare dso_local i32 @phr_decode_chunked(%struct.phr_chunked_decoder*, i8*, i64*) #2

declare dso_local i32 @ok(i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @bufis(i8*, i32, i8*) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
