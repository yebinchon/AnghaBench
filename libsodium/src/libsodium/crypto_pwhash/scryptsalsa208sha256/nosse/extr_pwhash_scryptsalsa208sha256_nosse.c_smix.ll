; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/nosse/extr_pwhash_scryptsalsa208sha256_nosse.c_smix.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/nosse/extr_pwhash_scryptsalsa208sha256_nosse.c_smix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32, i32*, i32*)* @smix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smix(i32* %0, i64 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load i32*, i32** %10, align 8
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = load i64, i64* %7, align 8
  %20 = mul i64 32, %19
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32* %21, i32** %12, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load i64, i64* %7, align 8
  %24 = mul i64 64, %23
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32* %25, i32** %13, align 8
  store i64 0, i64* %16, align 8
  br label %26

26:                                               ; preds = %40, %5
  %27 = load i64, i64* %16, align 8
  %28 = load i64, i64* %7, align 8
  %29 = mul i64 32, %28
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %26
  %32 = load i32*, i32** %6, align 8
  %33 = load i64, i64* %16, align 8
  %34 = mul i64 4, %33
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = call i32 @LOAD32_LE(i32* %35)
  %37 = load i32*, i32** %11, align 8
  %38 = load i64, i64* %16, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 %36, i32* %39, align 4
  br label %40

40:                                               ; preds = %31
  %41 = load i64, i64* %16, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %16, align 8
  br label %26

43:                                               ; preds = %26
  store i32 0, i32* %14, align 4
  br label %44

44:                                               ; preds = %84, %43
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %87

48:                                               ; preds = %44
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %7, align 8
  %53 = mul i64 32, %52
  %54 = mul i64 %51, %53
  %55 = getelementptr inbounds i32, i32* %49, i64 %54
  %56 = load i32*, i32** %11, align 8
  %57 = load i64, i64* %7, align 8
  %58 = mul i64 128, %57
  %59 = trunc i64 %58 to i32
  %60 = call i32 @blkcpy(i32* %55, i32* %56, i32 %59)
  %61 = load i32*, i32** %11, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = load i32*, i32** %13, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @blockmix_salsa8(i32* %61, i32* %62, i32* %63, i64 %64)
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %14, align 4
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %7, align 8
  %71 = mul i64 32, %70
  %72 = mul i64 %69, %71
  %73 = getelementptr inbounds i32, i32* %66, i64 %72
  %74 = load i32*, i32** %12, align 8
  %75 = load i64, i64* %7, align 8
  %76 = mul i64 128, %75
  %77 = trunc i64 %76 to i32
  %78 = call i32 @blkcpy(i32* %73, i32* %74, i32 %77)
  %79 = load i32*, i32** %12, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = load i32*, i32** %13, align 8
  %82 = load i64, i64* %7, align 8
  %83 = call i32 @blockmix_salsa8(i32* %79, i32* %80, i32* %81, i64 %82)
  br label %84

84:                                               ; preds = %48
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, 2
  store i32 %86, i32* %14, align 4
  br label %44

87:                                               ; preds = %44
  store i32 0, i32* %14, align 4
  br label %88

88:                                               ; preds = %139, %87
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %142

92:                                               ; preds = %88
  %93 = load i32*, i32** %11, align 8
  %94 = load i64, i64* %7, align 8
  %95 = call i32 @integerify(i32* %93, i64 %94)
  %96 = load i32, i32* %8, align 4
  %97 = sub nsw i32 %96, 1
  %98 = and i32 %95, %97
  store i32 %98, i32* %15, align 4
  %99 = load i32*, i32** %11, align 8
  %100 = load i32*, i32** %9, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* %7, align 8
  %104 = mul i64 32, %103
  %105 = mul i64 %102, %104
  %106 = getelementptr inbounds i32, i32* %100, i64 %105
  %107 = load i64, i64* %7, align 8
  %108 = mul i64 128, %107
  %109 = trunc i64 %108 to i32
  %110 = call i32 @blkxor(i32* %99, i32* %106, i32 %109)
  %111 = load i32*, i32** %11, align 8
  %112 = load i32*, i32** %12, align 8
  %113 = load i32*, i32** %13, align 8
  %114 = load i64, i64* %7, align 8
  %115 = call i32 @blockmix_salsa8(i32* %111, i32* %112, i32* %113, i64 %114)
  %116 = load i32*, i32** %12, align 8
  %117 = load i64, i64* %7, align 8
  %118 = call i32 @integerify(i32* %116, i64 %117)
  %119 = load i32, i32* %8, align 4
  %120 = sub nsw i32 %119, 1
  %121 = and i32 %118, %120
  store i32 %121, i32* %15, align 4
  %122 = load i32*, i32** %12, align 8
  %123 = load i32*, i32** %9, align 8
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = load i64, i64* %7, align 8
  %127 = mul i64 32, %126
  %128 = mul i64 %125, %127
  %129 = getelementptr inbounds i32, i32* %123, i64 %128
  %130 = load i64, i64* %7, align 8
  %131 = mul i64 128, %130
  %132 = trunc i64 %131 to i32
  %133 = call i32 @blkxor(i32* %122, i32* %129, i32 %132)
  %134 = load i32*, i32** %12, align 8
  %135 = load i32*, i32** %11, align 8
  %136 = load i32*, i32** %13, align 8
  %137 = load i64, i64* %7, align 8
  %138 = call i32 @blockmix_salsa8(i32* %134, i32* %135, i32* %136, i64 %137)
  br label %139

139:                                              ; preds = %92
  %140 = load i32, i32* %14, align 4
  %141 = add nsw i32 %140, 2
  store i32 %141, i32* %14, align 4
  br label %88

142:                                              ; preds = %88
  store i64 0, i64* %16, align 8
  br label %143

143:                                              ; preds = %158, %142
  %144 = load i64, i64* %16, align 8
  %145 = load i64, i64* %7, align 8
  %146 = mul i64 32, %145
  %147 = icmp ult i64 %144, %146
  br i1 %147, label %148, label %161

148:                                              ; preds = %143
  %149 = load i32*, i32** %6, align 8
  %150 = load i64, i64* %16, align 8
  %151 = mul i64 4, %150
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32*, i32** %11, align 8
  %154 = load i64, i64* %16, align 8
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @STORE32_LE(i32* %152, i32 %156)
  br label %158

158:                                              ; preds = %148
  %159 = load i64, i64* %16, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %16, align 8
  br label %143

161:                                              ; preds = %143
  ret void
}

declare dso_local i32 @LOAD32_LE(i32*) #1

declare dso_local i32 @blkcpy(i32*, i32*, i32) #1

declare dso_local i32 @blockmix_salsa8(i32*, i32*, i32*, i64) #1

declare dso_local i32 @integerify(i32*, i64) #1

declare dso_local i32 @blkxor(i32*, i32*, i32) #1

declare dso_local i32 @STORE32_LE(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
