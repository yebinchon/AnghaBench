; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_quicly_retry_calc_cidpair_hash.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_quicly_retry_calc_cidpair_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@PTLS_SHA256_DIGEST_SIZE = common dso_local global i32 0, align 4
@QUICLY_MAX_CID_LEN_V1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @quicly_retry_calc_cidpair_hash(i32* %0, i64 %1, i32 %2, i64 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca %struct.TYPE_4__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = bitcast %struct.TYPE_4__* %8 to { i64, i32 }*
  %19 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 0
  store i64 %1, i64* %19, align 8
  %20 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 1
  store i32 %2, i32* %20, align 8
  %21 = bitcast %struct.TYPE_4__* %9 to { i64, i32 }*
  %22 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 0
  store i64 %3, i64* %22, align 8
  %23 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 1
  store i32 %4, i32* %23, align 8
  store i32* %0, i32** %10, align 8
  store i32* %5, i32** %11, align 8
  %24 = load i32, i32* @PTLS_SHA256_DIGEST_SIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %12, align 8
  %27 = alloca i8*, i64 %25, align 16
  store i64 %25, i64* %13, align 8
  %28 = load i32, i32* @QUICLY_MAX_CID_LEN_V1, align 4
  %29 = add nsw i32 %28, 1
  %30 = mul nsw i32 %29, 2
  %31 = zext i32 %30 to i64
  %32 = alloca i8*, i64 %31, align 16
  store i64 %31, i64* %14, align 8
  store i8** %32, i8*** %15, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = load i8**, i8*** %15, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i32 1
  store i8** %37, i8*** %15, align 8
  store i8* %35, i8** %36, align 8
  %38 = load i8**, i8*** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @memcpy(i8** %38, i32 %40, i64 %42)
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i8**, i8*** %15, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 %45
  store i8** %47, i8*** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = load i8**, i8*** %15, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i32 1
  store i8** %52, i8*** %15, align 8
  store i8* %50, i8** %51, align 8
  %53 = load i8**, i8*** %15, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @memcpy(i8** %53, i32 %55, i64 %57)
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i8**, i8*** %15, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 %60
  store i8** %62, i8*** %15, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = load i8**, i8*** %15, align 8
  %65 = ptrtoint i8** %64 to i64
  %66 = ptrtoint i8** %32 to i64
  %67 = sub i64 %65, %66
  %68 = sdiv exact i64 %67, 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 @ptls_calc_hash(i32* %63, i8** %27, i8** %32, i32 %69)
  store i32 %70, i32* %16, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %6
  %73 = load i32, i32* %16, align 4
  store i32 %73, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %78

74:                                               ; preds = %6
  store i8** %27, i8*** %15, align 8
  %75 = bitcast i8*** %15 to i8*
  %76 = call i32 @quicly_decode64(i8* %75)
  %77 = load i32*, i32** %11, align 8
  store i32 %76, i32* %77, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %78

78:                                               ; preds = %74, %72
  %79 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %79)
  %80 = load i32, i32* %7, align 4
  ret i32 %80
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8**, i32, i64) #2

declare dso_local i32 @ptls_calc_hash(i32*, i8**, i8**, i32) #2

declare dso_local i32 @quicly_decode64(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
