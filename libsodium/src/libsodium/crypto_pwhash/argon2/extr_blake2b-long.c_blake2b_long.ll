; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_pwhash/argon2/extr_blake2b-long.c_blake2b_long.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_pwhash/argon2/extr_blake2b-long.c_blake2b_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UINT32_MAX = common dso_local global i64 0, align 8
@crypto_generichash_blake2b_BYTES_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blake2b_long(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [4 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %18 = load i8*, i8** %5, align 8
  store i8* %18, i8** %9, align 8
  %19 = bitcast [4 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %19, i8 0, i64 4, i1 false)
  store i32 -1, i32* %12, align 4
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @UINT32_MAX, align 8
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %171

24:                                               ; preds = %4
  %25 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @STORE32_LE(i8* %25, i64 %26)
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @crypto_generichash_blake2b_BYTES_MAX, align 8
  %30 = icmp ule i64 %28, %29
  br i1 %30, label %31, label %66

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @crypto_generichash_blake2b_init(i32* %10, i32* null, i32 0, i64 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %171

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38
  br label %40

40:                                               ; preds = %39
  %41 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %42 = call i32 @crypto_generichash_blake2b_update(i32* %10, i8* %41, i64 4)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %171

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46
  br label %48

48:                                               ; preds = %47
  %49 = load i8*, i8** %7, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @crypto_generichash_blake2b_update(i32* %10, i8* %49, i64 %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %171

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56
  %58 = load i8*, i8** %9, align 8
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @crypto_generichash_blake2b_final(i32* %10, i8* %58, i64 %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %171

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64
  br label %170

66:                                               ; preds = %24
  %67 = load i64, i64* @crypto_generichash_blake2b_BYTES_MAX, align 8
  %68 = call i8* @llvm.stacksave()
  store i8* %68, i8** %14, align 8
  %69 = alloca i8, i64 %67, align 16
  store i64 %67, i64* %15, align 8
  %70 = load i64, i64* @crypto_generichash_blake2b_BYTES_MAX, align 8
  %71 = alloca i8, i64 %70, align 16
  store i64 %70, i64* %16, align 8
  br label %72

72:                                               ; preds = %66
  %73 = load i64, i64* @crypto_generichash_blake2b_BYTES_MAX, align 8
  %74 = call i32 @crypto_generichash_blake2b_init(i32* %10, i32* null, i32 0, i64 %73)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 2, i32* %17, align 4
  br label %166

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %79
  br label %81

81:                                               ; preds = %80
  %82 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %83 = call i32 @crypto_generichash_blake2b_update(i32* %10, i8* %82, i64 4)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store i32 2, i32* %17, align 4
  br label %166

87:                                               ; preds = %81
  br label %88

88:                                               ; preds = %87
  br label %89

89:                                               ; preds = %88
  br label %90

90:                                               ; preds = %89
  %91 = load i8*, i8** %7, align 8
  %92 = load i64, i64* %8, align 8
  %93 = call i32 @crypto_generichash_blake2b_update(i32* %10, i8* %91, i64 %92)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  store i32 2, i32* %17, align 4
  br label %166

97:                                               ; preds = %90
  br label %98

98:                                               ; preds = %97
  br label %99

99:                                               ; preds = %98
  br label %100

100:                                              ; preds = %99
  %101 = load i64, i64* @crypto_generichash_blake2b_BYTES_MAX, align 8
  %102 = call i32 @crypto_generichash_blake2b_final(i32* %10, i8* %69, i64 %101)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  store i32 2, i32* %17, align 4
  br label %166

106:                                              ; preds = %100
  br label %107

107:                                              ; preds = %106
  br label %108

108:                                              ; preds = %107
  %109 = load i8*, i8** %9, align 8
  %110 = load i64, i64* @crypto_generichash_blake2b_BYTES_MAX, align 8
  %111 = udiv i64 %110, 2
  %112 = call i32 @memcpy(i8* %109, i8* %69, i64 %111)
  %113 = load i64, i64* @crypto_generichash_blake2b_BYTES_MAX, align 8
  %114 = udiv i64 %113, 2
  %115 = load i8*, i8** %9, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 %114
  store i8* %116, i8** %9, align 8
  %117 = load i64, i64* %6, align 8
  %118 = load i64, i64* @crypto_generichash_blake2b_BYTES_MAX, align 8
  %119 = udiv i64 %118, 2
  %120 = sub i64 %117, %119
  store i64 %120, i64* %13, align 8
  br label %121

121:                                              ; preds = %137, %108
  %122 = load i64, i64* %13, align 8
  %123 = load i64, i64* @crypto_generichash_blake2b_BYTES_MAX, align 8
  %124 = icmp ugt i64 %122, %123
  br i1 %124, label %125, label %150

125:                                              ; preds = %121
  %126 = load i64, i64* @crypto_generichash_blake2b_BYTES_MAX, align 8
  %127 = call i32 @memcpy(i8* %71, i8* %69, i64 %126)
  br label %128

128:                                              ; preds = %125
  %129 = load i64, i64* @crypto_generichash_blake2b_BYTES_MAX, align 8
  %130 = load i64, i64* @crypto_generichash_blake2b_BYTES_MAX, align 8
  %131 = call i32 @crypto_generichash_blake2b(i8* %69, i64 %129, i8* %71, i64 %130, i32* null, i32 0)
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* %12, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  store i32 2, i32* %17, align 4
  br label %166

135:                                              ; preds = %128
  br label %136

136:                                              ; preds = %135
  br label %137

137:                                              ; preds = %136
  %138 = load i8*, i8** %9, align 8
  %139 = load i64, i64* @crypto_generichash_blake2b_BYTES_MAX, align 8
  %140 = udiv i64 %139, 2
  %141 = call i32 @memcpy(i8* %138, i8* %69, i64 %140)
  %142 = load i64, i64* @crypto_generichash_blake2b_BYTES_MAX, align 8
  %143 = udiv i64 %142, 2
  %144 = load i8*, i8** %9, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 %143
  store i8* %145, i8** %9, align 8
  %146 = load i64, i64* @crypto_generichash_blake2b_BYTES_MAX, align 8
  %147 = udiv i64 %146, 2
  %148 = load i64, i64* %13, align 8
  %149 = sub i64 %148, %147
  store i64 %149, i64* %13, align 8
  br label %121

150:                                              ; preds = %121
  %151 = load i64, i64* @crypto_generichash_blake2b_BYTES_MAX, align 8
  %152 = call i32 @memcpy(i8* %71, i8* %69, i64 %151)
  br label %153

153:                                              ; preds = %150
  %154 = load i64, i64* %13, align 8
  %155 = load i64, i64* @crypto_generichash_blake2b_BYTES_MAX, align 8
  %156 = call i32 @crypto_generichash_blake2b(i8* %69, i64 %154, i8* %71, i64 %155, i32* null, i32 0)
  store i32 %156, i32* %12, align 4
  %157 = load i32, i32* %12, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  store i32 2, i32* %17, align 4
  br label %166

160:                                              ; preds = %153
  br label %161

161:                                              ; preds = %160
  br label %162

162:                                              ; preds = %161
  %163 = load i8*, i8** %9, align 8
  %164 = load i64, i64* %13, align 8
  %165 = call i32 @memcpy(i8* %163, i8* %69, i64 %164)
  store i32 0, i32* %17, align 4
  br label %166

166:                                              ; preds = %159, %134, %105, %96, %86, %77, %162
  %167 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %167)
  %168 = load i32, i32* %17, align 4
  switch i32 %168, label %174 [
    i32 0, label %169
    i32 2, label %171
  ]

169:                                              ; preds = %166
  br label %170

170:                                              ; preds = %169, %65
  br label %171

171:                                              ; preds = %170, %166, %63, %54, %45, %37, %23
  %172 = call i32 @sodium_memzero(i32* %10, i32 4)
  %173 = load i32, i32* %12, align 4
  ret i32 %173

174:                                              ; preds = %166
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @STORE32_LE(i8*, i64) #2

declare dso_local i32 @crypto_generichash_blake2b_init(i32*, i32*, i32, i64) #2

declare dso_local i32 @crypto_generichash_blake2b_update(i32*, i8*, i64) #2

declare dso_local i32 @crypto_generichash_blake2b_final(i32*, i8*, i64) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @crypto_generichash_blake2b(i8*, i64, i8*, i64, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i32 @sodium_memzero(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
