; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_hash/sha256/cp/extr_hash_sha256_cp.c_crypto_hash_sha256_update.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_hash/sha256/cp/extr_hash_sha256_cp.c_crypto_hash_sha256_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_hash_sha256_update(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [72 x i32], align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp ule i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %131

14:                                               ; preds = %3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = ashr i32 %17, 3
  %19 = and i32 %18, 63
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %7, align 8
  %22 = trunc i64 %21 to i32
  %23 = shl i32 %22, 3
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %10, align 8
  %30 = sub i64 64, %29
  %31 = icmp ult i64 %28, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %14
  store i64 0, i64* %9, align 8
  br label %33

33:                                               ; preds = %49, %32
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = load i8*, i8** %6, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* %9, align 8
  %47 = add i64 %45, %46
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  store i8 %41, i8* %48, align 1
  br label %49

49:                                               ; preds = %37
  %50 = load i64, i64* %9, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %9, align 8
  br label %33

52:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %131

53:                                               ; preds = %14
  store i64 0, i64* %9, align 8
  br label %54

54:                                               ; preds = %71, %53
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = sub i64 64, %56
  %58 = icmp ult i64 %55, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %54
  %60 = load i8*, i8** %6, align 8
  %61 = load i64, i64* %9, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %9, align 8
  %69 = add i64 %67, %68
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  store i8 %63, i8* %70, align 1
  br label %71

71:                                               ; preds = %59
  %72 = load i64, i64* %9, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %9, align 8
  br label %54

74:                                               ; preds = %54
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds [72 x i32], [72 x i32]* %8, i64 0, i64 0
  %82 = getelementptr inbounds [72 x i32], [72 x i32]* %8, i64 0, i64 64
  %83 = call i32 @SHA256_Transform(i32 %77, i8* %80, i32* %81, i32* %82)
  %84 = load i64, i64* %10, align 8
  %85 = sub i64 64, %84
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 %85
  store i8* %87, i8** %6, align 8
  %88 = load i64, i64* %10, align 8
  %89 = sub i64 64, %88
  %90 = load i64, i64* %7, align 8
  %91 = sub i64 %90, %89
  store i64 %91, i64* %7, align 8
  br label %92

92:                                               ; preds = %95, %74
  %93 = load i64, i64* %7, align 8
  %94 = icmp uge i64 %93, 64
  br i1 %94, label %95, label %107

95:                                               ; preds = %92
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds [72 x i32], [72 x i32]* %8, i64 0, i64 0
  %101 = getelementptr inbounds [72 x i32], [72 x i32]* %8, i64 0, i64 64
  %102 = call i32 @SHA256_Transform(i32 %98, i8* %99, i32* %100, i32* %101)
  %103 = load i8*, i8** %6, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 64
  store i8* %104, i8** %6, align 8
  %105 = load i64, i64* %7, align 8
  %106 = sub i64 %105, 64
  store i64 %106, i64* %7, align 8
  br label %92

107:                                              ; preds = %92
  %108 = load i64, i64* %7, align 8
  %109 = and i64 %108, 63
  store i64 %109, i64* %7, align 8
  store i64 0, i64* %9, align 8
  br label %110

110:                                              ; preds = %124, %107
  %111 = load i64, i64* %9, align 8
  %112 = load i64, i64* %7, align 8
  %113 = icmp ult i64 %111, %112
  br i1 %113, label %114, label %127

114:                                              ; preds = %110
  %115 = load i8*, i8** %6, align 8
  %116 = load i64, i64* %9, align 8
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = load i64, i64* %9, align 8
  %123 = getelementptr inbounds i8, i8* %121, i64 %122
  store i8 %118, i8* %123, align 1
  br label %124

124:                                              ; preds = %114
  %125 = load i64, i64* %9, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %9, align 8
  br label %110

127:                                              ; preds = %110
  %128 = getelementptr inbounds [72 x i32], [72 x i32]* %8, i64 0, i64 0
  %129 = bitcast i32* %128 to i8*
  %130 = call i32 @sodium_memzero(i8* %129, i32 288)
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %127, %52, %13
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @SHA256_Transform(i32, i8*, i32*, i32*) #1

declare dso_local i32 @sodium_memzero(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
