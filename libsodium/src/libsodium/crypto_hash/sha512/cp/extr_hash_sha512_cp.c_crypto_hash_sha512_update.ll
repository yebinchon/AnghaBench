; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_hash/sha512/cp/extr_hash_sha512_cp.c_crypto_hash_sha512_update.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_hash/sha512/cp/extr_hash_sha512_cp.c_crypto_hash_sha512_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_hash_sha512_update(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [88 x i32], align 16
  %9 = alloca [2 x i32], align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp ule i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %162

15:                                               ; preds = %3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 3
  %22 = and i32 %21, 127
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* %7, align 8
  %25 = trunc i64 %24 to i32
  %26 = shl i32 %25, 3
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %26, i32* %27, align 4
  %28 = load i64, i64* %7, align 8
  %29 = trunc i64 %28 to i32
  %30 = ashr i32 %29, 61
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, %33
  store i32 %39, i32* %37, align 4
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %15
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %43, %15
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, %52
  store i32 %58, i32* %56, align 4
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %11, align 8
  %61 = sub i64 128, %60
  %62 = icmp ult i64 %59, %61
  br i1 %62, label %63, label %84

63:                                               ; preds = %50
  store i64 0, i64* %10, align 8
  br label %64

64:                                               ; preds = %80, %63
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* %7, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %64
  %69 = load i8*, i8** %6, align 8
  %70 = load i64, i64* %10, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* %10, align 8
  %78 = add i64 %76, %77
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  store i8 %72, i8* %79, align 1
  br label %80

80:                                               ; preds = %68
  %81 = load i64, i64* %10, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %10, align 8
  br label %64

83:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %162

84:                                               ; preds = %50
  store i64 0, i64* %10, align 8
  br label %85

85:                                               ; preds = %102, %84
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* %11, align 8
  %88 = sub i64 128, %87
  %89 = icmp ult i64 %86, %88
  br i1 %89, label %90, label %105

90:                                               ; preds = %85
  %91 = load i8*, i8** %6, align 8
  %92 = load i64, i64* %10, align 8
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = load i64, i64* %11, align 8
  %99 = load i64, i64* %10, align 8
  %100 = add i64 %98, %99
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  store i8 %94, i8* %101, align 1
  br label %102

102:                                              ; preds = %90
  %103 = load i64, i64* %10, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %10, align 8
  br label %85

105:                                              ; preds = %85
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr inbounds [88 x i32], [88 x i32]* %8, i64 0, i64 0
  %113 = getelementptr inbounds [88 x i32], [88 x i32]* %8, i64 0, i64 80
  %114 = call i32 @SHA512_Transform(i32 %108, i8* %111, i32* %112, i32* %113)
  %115 = load i64, i64* %11, align 8
  %116 = sub i64 128, %115
  %117 = load i8*, i8** %6, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 %116
  store i8* %118, i8** %6, align 8
  %119 = load i64, i64* %11, align 8
  %120 = sub i64 128, %119
  %121 = load i64, i64* %7, align 8
  %122 = sub i64 %121, %120
  store i64 %122, i64* %7, align 8
  br label %123

123:                                              ; preds = %126, %105
  %124 = load i64, i64* %7, align 8
  %125 = icmp uge i64 %124, 128
  br i1 %125, label %126, label %138

126:                                              ; preds = %123
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load i8*, i8** %6, align 8
  %131 = getelementptr inbounds [88 x i32], [88 x i32]* %8, i64 0, i64 0
  %132 = getelementptr inbounds [88 x i32], [88 x i32]* %8, i64 0, i64 80
  %133 = call i32 @SHA512_Transform(i32 %129, i8* %130, i32* %131, i32* %132)
  %134 = load i8*, i8** %6, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 128
  store i8* %135, i8** %6, align 8
  %136 = load i64, i64* %7, align 8
  %137 = sub i64 %136, 128
  store i64 %137, i64* %7, align 8
  br label %123

138:                                              ; preds = %123
  %139 = load i64, i64* %7, align 8
  %140 = and i64 %139, 127
  store i64 %140, i64* %7, align 8
  store i64 0, i64* %10, align 8
  br label %141

141:                                              ; preds = %155, %138
  %142 = load i64, i64* %10, align 8
  %143 = load i64, i64* %7, align 8
  %144 = icmp ult i64 %142, %143
  br i1 %144, label %145, label %158

145:                                              ; preds = %141
  %146 = load i8*, i8** %6, align 8
  %147 = load i64, i64* %10, align 8
  %148 = getelementptr inbounds i8, i8* %146, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 1
  %152 = load i8*, i8** %151, align 8
  %153 = load i64, i64* %10, align 8
  %154 = getelementptr inbounds i8, i8* %152, i64 %153
  store i8 %149, i8* %154, align 1
  br label %155

155:                                              ; preds = %145
  %156 = load i64, i64* %10, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %10, align 8
  br label %141

158:                                              ; preds = %141
  %159 = getelementptr inbounds [88 x i32], [88 x i32]* %8, i64 0, i64 0
  %160 = bitcast i32* %159 to i8*
  %161 = call i32 @sodium_memzero(i8* %160, i32 352)
  store i32 0, i32* %4, align 4
  br label %162

162:                                              ; preds = %158, %83, %14
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

declare dso_local i32 @SHA512_Transform(i32, i8*, i32*, i32*) #1

declare dso_local i32 @sodium_memzero(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
