; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_eax.c_cf_eax_decrypt.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_eax.c_cf_eax_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@CF_MAXBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cf_eax_decrypt(%struct.TYPE_5__* %0, i8* %1, i32* %2, i64 %3, i32* %4, i64 %5, i32* %6, i64 %7, i32* %8, i64 %9, i32* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %13, align 8
  store i8* %1, i8** %14, align 8
  store i32* %2, i32** %15, align 8
  store i64 %3, i64* %16, align 8
  store i32* %4, i32** %17, align 8
  store i64 %5, i64* %18, align 8
  store i32* %6, i32** %19, align 8
  store i64 %7, i64* %20, align 8
  store i32* %8, i32** %21, align 8
  store i64 %9, i64* %22, align 8
  store i32* %10, i32** %23, align 8
  %33 = load i32, i32* @CF_MAXBLOCK, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %24, align 8
  %36 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %25, align 8
  %37 = load i32, i32* @CF_MAXBLOCK, align 4
  %38 = zext i32 %37 to i64
  %39 = alloca i32, i64 %38, align 16
  store i64 %38, i64* %26, align 8
  %40 = load i32, i32* @CF_MAXBLOCK, align 4
  %41 = zext i32 %40 to i64
  %42 = alloca i32, i64 %41, align 16
  store i64 %41, i64* %27, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = call i32 @cf_cmac_stream_init(i32* %28, %struct.TYPE_5__* %43, i8* %44)
  %46 = load i32*, i32** %19, align 8
  %47 = load i64, i64* %20, align 8
  %48 = call i32 @cmac_compute_n(i32* %28, i32 0, i32* %46, i64 %47, i32* %36)
  %49 = load i32*, i32** %17, align 8
  %50 = load i64, i64* %18, align 8
  %51 = call i32 @cmac_compute_n(i32* %28, i32 1, i32* %49, i64 %50, i32* %39)
  %52 = load i32*, i32** %15, align 8
  %53 = load i64, i64* %16, align 8
  %54 = call i32 @cmac_compute_n(i32* %28, i32 2, i32* %52, i64 %53, i32* %42)
  %55 = load i32, i32* @CF_MAXBLOCK, align 4
  %56 = zext i32 %55 to i64
  %57 = alloca i32, i64 %56, align 16
  store i64 %56, i64* %29, align 8
  %58 = load i64, i64* %22, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %11
  %61 = load i64, i64* %22, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ule i64 %61, %64
  br label %66

66:                                               ; preds = %60, %11
  %67 = phi i1 [ false, %11 ], [ %65, %60 ]
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  store i64 0, i64* %30, align 8
  br label %70

70:                                               ; preds = %88, %66
  %71 = load i64, i64* %30, align 8
  %72 = load i64, i64* %22, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %91

74:                                               ; preds = %70
  %75 = load i64, i64* %30, align 8
  %76 = getelementptr inbounds i32, i32* %36, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i64, i64* %30, align 8
  %79 = getelementptr inbounds i32, i32* %42, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = xor i32 %77, %80
  %82 = load i64, i64* %30, align 8
  %83 = getelementptr inbounds i32, i32* %39, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = xor i32 %81, %84
  %86 = load i64, i64* %30, align 8
  %87 = getelementptr inbounds i32, i32* %57, i64 %86
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %74
  %89 = load i64, i64* %30, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %30, align 8
  br label %70

91:                                               ; preds = %70
  %92 = load i32*, i32** %21, align 8
  %93 = load i64, i64* %22, align 8
  %94 = call i32 @mem_eq(i32* %57, i32* %92, i64 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  store i32 1, i32* %12, align 4
  store i32 1, i32* %31, align 4
  br label %105

97:                                               ; preds = %91
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %99 = load i8*, i8** %14, align 8
  %100 = call i32 @cf_ctr_init(i32* %32, %struct.TYPE_5__* %98, i8* %99, i32* %36)
  %101 = load i32*, i32** %15, align 8
  %102 = load i32*, i32** %23, align 8
  %103 = load i64, i64* %16, align 8
  %104 = call i32 @cf_ctr_cipher(i32* %32, i32* %101, i32* %102, i64 %103)
  store i32 0, i32* %12, align 4
  store i32 1, i32* %31, align 4
  br label %105

105:                                              ; preds = %97, %96
  %106 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %106)
  %107 = load i32, i32* %12, align 4
  ret i32 %107
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cf_cmac_stream_init(i32*, %struct.TYPE_5__*, i8*) #2

declare dso_local i32 @cmac_compute_n(i32*, i32, i32*, i64, i32*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @mem_eq(i32*, i32*, i64) #2

declare dso_local i32 @cf_ctr_init(i32*, %struct.TYPE_5__*, i8*, i32*) #2

declare dso_local i32 @cf_ctr_cipher(i32*, i32*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
