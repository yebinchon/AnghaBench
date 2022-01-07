; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/compress/extr_brotli.c_compress_core.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/compress/extr_brotli.c_compress_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_brotli_context_t = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@.str = private unnamed_addr constant [28 x i8] c"BrotliEncoderCompressStream\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_brotli_context_t*, i32, i32**, i64*)* @compress_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compress_core(%struct.st_brotli_context_t* %0, i32 %1, i32** %2, i64* %3) #0 {
  %5 = alloca %struct.st_brotli_context_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.st_brotli_context_t* %0, %struct.st_brotli_context_t** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  store i64* %3, i64** %8, align 8
  %12 = load %struct.st_brotli_context_t*, %struct.st_brotli_context_t** %5, align 8
  %13 = getelementptr inbounds %struct.st_brotli_context_t, %struct.st_brotli_context_t* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %9, align 8
  %18 = load %struct.st_brotli_context_t*, %struct.st_brotli_context_t** %5, align 8
  %19 = getelementptr inbounds %struct.st_brotli_context_t, %struct.st_brotli_context_t* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i64, i64* %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.st_brotli_context_t*, %struct.st_brotli_context_t** %5, align 8
  %27 = getelementptr inbounds %struct.st_brotli_context_t, %struct.st_brotli_context_t* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %4
  %31 = load %struct.st_brotli_context_t*, %struct.st_brotli_context_t** %5, align 8
  %32 = call i32 @expand_buf(%struct.st_brotli_context_t* %31)
  %33 = load i64, i64* %9, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %9, align 8
  br label %35

35:                                               ; preds = %30, %4
  %36 = load %struct.st_brotli_context_t*, %struct.st_brotli_context_t** %5, align 8
  %37 = getelementptr inbounds %struct.st_brotli_context_t, %struct.st_brotli_context_t* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i32*
  %45 = load %struct.st_brotli_context_t*, %struct.st_brotli_context_t** %5, align 8
  %46 = getelementptr inbounds %struct.st_brotli_context_t, %struct.st_brotli_context_t* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %44, i64 %52
  store i32* %53, i32** %10, align 8
  %54 = load %struct.st_brotli_context_t*, %struct.st_brotli_context_t** %5, align 8
  %55 = getelementptr inbounds %struct.st_brotli_context_t, %struct.st_brotli_context_t* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.st_brotli_context_t*, %struct.st_brotli_context_t** %5, align 8
  %58 = getelementptr inbounds %struct.st_brotli_context_t, %struct.st_brotli_context_t* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load i64, i64* %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %56, %64
  store i64 %65, i64* %11, align 8
  %66 = load %struct.st_brotli_context_t*, %struct.st_brotli_context_t** %5, align 8
  %67 = getelementptr inbounds %struct.st_brotli_context_t, %struct.st_brotli_context_t* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i64*, i64** %8, align 8
  %71 = load i32**, i32*** %7, align 8
  %72 = call i32 @BrotliEncoderCompressStream(i32 %68, i32 %69, i64* %70, i32** %71, i64* %11, i32** %10, i32* null)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %35
  %75 = call i32 @h2o_fatal(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %35
  %77 = load %struct.st_brotli_context_t*, %struct.st_brotli_context_t** %5, align 8
  %78 = getelementptr inbounds %struct.st_brotli_context_t, %struct.st_brotli_context_t* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %11, align 8
  %81 = sub i64 %79, %80
  %82 = load %struct.st_brotli_context_t*, %struct.st_brotli_context_t** %5, align 8
  %83 = getelementptr inbounds %struct.st_brotli_context_t, %struct.st_brotli_context_t* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = load i64, i64* %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  store i64 %81, i64* %88, align 8
  ret void
}

declare dso_local i32 @expand_buf(%struct.st_brotli_context_t*) #1

declare dso_local i32 @BrotliEncoderCompressStream(i32, i32, i64*, i32**, i64*, i32**, i32*) #1

declare dso_local i32 @h2o_fatal(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
