; ModuleID = '/home/carl/AnghaBench/libsodium/test/default/extr_verify1.c_xmain.c'
source_filename = "/home/carl/AnghaBench/libsodium/test/default/extr_verify1.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"Failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %11 = call i64 @sodium_malloc(i32 16)
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %2, align 8
  %13 = call i64 @sodium_malloc(i32 16)
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %3, align 8
  %15 = call i64 @sodium_malloc(i32 32)
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %4, align 8
  %17 = call i64 @sodium_malloc(i32 32)
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %5, align 8
  %19 = call i64 @sodium_malloc(i32 64)
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %6, align 8
  %21 = call i64 @sodium_malloc(i32 64)
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %7, align 8
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %74, %0
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 10000
  br i1 %25, label %26, label %77

26:                                               ; preds = %23
  %27 = load i8*, i8** %2, align 8
  %28 = call i32 @randombytes_buf(i8* %27, i32 16)
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @randombytes_buf(i8* %29, i32 32)
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @randombytes_buf(i8* %31, i32 64)
  %33 = load i8*, i8** %3, align 8
  %34 = load i8*, i8** %2, align 8
  %35 = call i32 @memcpy(i8* %33, i8* %34, i32 16)
  %36 = load i8*, i8** %5, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @memcpy(i8* %36, i8* %37, i32 32)
  %39 = load i8*, i8** %7, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @memcpy(i8* %39, i8* %40, i32 64)
  %42 = load i8*, i8** %2, align 8
  %43 = load i8*, i8** %3, align 8
  %44 = call i32 @crypto_verify_16(i8* %42, i8* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %71, label %46

46:                                               ; preds = %26
  %47 = load i8*, i8** %4, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @crypto_verify_32(i8* %47, i8* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %71, label %51

51:                                               ; preds = %46
  %52 = load i8*, i8** %6, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @crypto_verify_64(i8* %52, i8* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %71, label %56

56:                                               ; preds = %51
  %57 = load i8*, i8** %2, align 8
  %58 = load i8*, i8** %3, align 8
  %59 = call i32 @sodium_memcmp(i8* %57, i8* %58, i32 16)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %56
  %62 = load i8*, i8** %4, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @sodium_memcmp(i8* %62, i8* %63, i32 32)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load i8*, i8** %6, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @sodium_memcmp(i8* %67, i8* %68, i32 64)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66, %61, %56, %51, %46, %26
  %72 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %66
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %23

77:                                               ; preds = %23
  %78 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %189, %77
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %80, 100000
  br i1 %81, label %82, label %192

82:                                               ; preds = %79
  %83 = call i32 (...) @randombytes_random()
  store i32 %83, i32* %8, align 4
  %84 = call i32 (...) @randombytes_random()
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %9, align 1
  %86 = load i8, i8* %9, align 1
  %87 = zext i8 %86 to i32
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %189

90:                                               ; preds = %82
  %91 = load i8, i8* %9, align 1
  %92 = zext i8 %91 to i32
  %93 = load i8*, i8** %3, align 8
  %94 = load i32, i32* %8, align 4
  %95 = and i32 %94, 15
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %93, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = xor i32 %99, %92
  %101 = trunc i32 %100 to i8
  store i8 %101, i8* %97, align 1
  %102 = load i8, i8* %9, align 1
  %103 = zext i8 %102 to i32
  %104 = load i8*, i8** %5, align 8
  %105 = load i32, i32* %8, align 4
  %106 = and i32 %105, 31
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = xor i32 %110, %103
  %112 = trunc i32 %111 to i8
  store i8 %112, i8* %108, align 1
  %113 = load i8, i8* %9, align 1
  %114 = zext i8 %113 to i32
  %115 = load i8*, i8** %7, align 8
  %116 = load i32, i32* %8, align 4
  %117 = and i32 %116, 63
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %115, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = xor i32 %121, %114
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %119, align 1
  %124 = load i8*, i8** %2, align 8
  %125 = load i8*, i8** %3, align 8
  %126 = call i32 @crypto_verify_16(i8* %124, i8* %125)
  %127 = icmp ne i32 %126, -1
  br i1 %127, label %153, label %128

128:                                              ; preds = %90
  %129 = load i8*, i8** %4, align 8
  %130 = load i8*, i8** %5, align 8
  %131 = call i32 @crypto_verify_32(i8* %129, i8* %130)
  %132 = icmp ne i32 %131, -1
  br i1 %132, label %153, label %133

133:                                              ; preds = %128
  %134 = load i8*, i8** %6, align 8
  %135 = load i8*, i8** %7, align 8
  %136 = call i32 @crypto_verify_64(i8* %134, i8* %135)
  %137 = icmp ne i32 %136, -1
  br i1 %137, label %153, label %138

138:                                              ; preds = %133
  %139 = load i8*, i8** %2, align 8
  %140 = load i8*, i8** %3, align 8
  %141 = call i32 @sodium_memcmp(i8* %139, i8* %140, i32 16)
  %142 = icmp ne i32 %141, -1
  br i1 %142, label %153, label %143

143:                                              ; preds = %138
  %144 = load i8*, i8** %4, align 8
  %145 = load i8*, i8** %5, align 8
  %146 = call i32 @sodium_memcmp(i8* %144, i8* %145, i32 32)
  %147 = icmp ne i32 %146, -1
  br i1 %147, label %153, label %148

148:                                              ; preds = %143
  %149 = load i8*, i8** %6, align 8
  %150 = load i8*, i8** %7, align 8
  %151 = call i32 @sodium_memcmp(i8* %149, i8* %150, i32 64)
  %152 = icmp ne i32 %151, -1
  br i1 %152, label %153, label %155

153:                                              ; preds = %148, %143, %138, %133, %128, %90
  %154 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %155

155:                                              ; preds = %153, %148
  %156 = load i8, i8* %9, align 1
  %157 = zext i8 %156 to i32
  %158 = load i8*, i8** %3, align 8
  %159 = load i32, i32* %8, align 4
  %160 = and i32 %159, 15
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %158, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = xor i32 %164, %157
  %166 = trunc i32 %165 to i8
  store i8 %166, i8* %162, align 1
  %167 = load i8, i8* %9, align 1
  %168 = zext i8 %167 to i32
  %169 = load i8*, i8** %5, align 8
  %170 = load i32, i32* %8, align 4
  %171 = and i32 %170, 31
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %169, i64 %172
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i32
  %176 = xor i32 %175, %168
  %177 = trunc i32 %176 to i8
  store i8 %177, i8* %173, align 1
  %178 = load i8, i8* %9, align 1
  %179 = zext i8 %178 to i32
  %180 = load i8*, i8** %7, align 8
  %181 = load i32, i32* %8, align 4
  %182 = and i32 %181, 63
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %180, i64 %183
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  %187 = xor i32 %186, %179
  %188 = trunc i32 %187 to i8
  store i8 %188, i8* %184, align 1
  br label %189

189:                                              ; preds = %155, %89
  %190 = load i32, i32* %10, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %10, align 4
  br label %79

192:                                              ; preds = %79
  %193 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %194 = call i32 (...) @crypto_verify_16_bytes()
  %195 = icmp eq i32 %194, 16
  %196 = zext i1 %195 to i32
  %197 = call i32 @assert(i32 %196)
  %198 = call i32 (...) @crypto_verify_32_bytes()
  %199 = icmp eq i32 %198, 32
  %200 = zext i1 %199 to i32
  %201 = call i32 @assert(i32 %200)
  %202 = call i32 (...) @crypto_verify_64_bytes()
  %203 = icmp eq i32 %202, 64
  %204 = zext i1 %203 to i32
  %205 = call i32 @assert(i32 %204)
  %206 = load i8*, i8** %2, align 8
  %207 = call i32 @sodium_free(i8* %206)
  %208 = load i8*, i8** %3, align 8
  %209 = call i32 @sodium_free(i8* %208)
  %210 = load i8*, i8** %4, align 8
  %211 = call i32 @sodium_free(i8* %210)
  %212 = load i8*, i8** %5, align 8
  %213 = call i32 @sodium_free(i8* %212)
  %214 = load i8*, i8** %6, align 8
  %215 = call i32 @sodium_free(i8* %214)
  %216 = load i8*, i8** %7, align 8
  %217 = call i32 @sodium_free(i8* %216)
  ret i32 0
}

declare dso_local i64 @sodium_malloc(i32) #1

declare dso_local i32 @randombytes_buf(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @crypto_verify_16(i8*, i8*) #1

declare dso_local i32 @crypto_verify_32(i8*, i8*) #1

declare dso_local i32 @crypto_verify_64(i8*, i8*) #1

declare dso_local i32 @sodium_memcmp(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @randombytes_random(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @crypto_verify_16_bytes(...) #1

declare dso_local i32 @crypto_verify_32_bytes(...) #1

declare dso_local i32 @crypto_verify_64_bytes(...) #1

declare dso_local i32 @sodium_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
