; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_ecdsa_der_parse.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_ecdsa_der_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_ecdsa_der_parse.zeroes = internal constant [32 x i8] zeroinitializer, align 16
@ctx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_ecdsa_der_parse(i8* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2048 x i8], align 16
  %12 = alloca [64 x i8], align 16
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [2048 x i8], align 16
  %19 = alloca [64 x i8], align 16
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i64 2048, i64* %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i64 2048, i64* %20, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %24 = load i32, i32* @ctx, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @secp256k1_ecdsa_signature_parse_der(i32 %24, i32* %10, i8* %25, i64 %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %4
  %31 = load i32, i32* @ctx, align 4
  %32 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %33 = call i32 @secp256k1_ecdsa_signature_serialize_compact(i32 %31, i8* %32, i32* %10)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = shl i32 %36, 0
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %41 = call i64 @memcmp(i8* %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @test_ecdsa_der_parse.zeroes, i64 0, i64 0), i64 32)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %30
  %44 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %45 = getelementptr inbounds i8, i8* %44, i64 32
  %46 = call i64 @memcmp(i8* %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @test_ecdsa_der_parse.zeroes, i64 0, i64 0), i64 32)
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %43, %30
  %49 = phi i1 [ false, %30 ], [ %47, %43 ]
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %15, align 4
  br label %51

51:                                               ; preds = %48, %4
  %52 = load i32, i32* %15, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %76

54:                                               ; preds = %51
  %55 = load i32, i32* @ctx, align 4
  %56 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %57 = call i32 @secp256k1_ecdsa_signature_serialize_der(i32 %55, i8* %56, i64* %13, i32* %10)
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = shl i32 %60, 1
  %62 = load i32, i32* %9, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %9, align 4
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* %6, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %54
  %68 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %69 = load i8*, i8** %5, align 8
  %70 = load i64, i64* %6, align 8
  %71 = call i64 @memcmp(i8* %68, i8* %69, i64 %70)
  %72 = icmp eq i64 %71, 0
  br label %73

73:                                               ; preds = %67, %54
  %74 = phi i1 [ false, %54 ], [ %72, %67 ]
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %16, align 4
  br label %76

76:                                               ; preds = %73, %51
  %77 = load i32, i32* @ctx, align 4
  %78 = load i8*, i8** %5, align 8
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @ecdsa_signature_parse_der_lax(i32 %77, i32* %17, i8* %78, i64 %79)
  store i32 %80, i32* %21, align 4
  %81 = load i32, i32* %21, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %104

83:                                               ; preds = %76
  %84 = load i32, i32* @ctx, align 4
  %85 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %86 = call i32 @secp256k1_ecdsa_signature_serialize_compact(i32 %84, i8* %85, i32* %17)
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = shl i32 %89, 10
  %91 = load i32, i32* %9, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %9, align 4
  %93 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %94 = call i64 @memcmp(i8* %93, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @test_ecdsa_der_parse.zeroes, i64 0, i64 0), i64 32)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %83
  %97 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %98 = getelementptr inbounds i8, i8* %97, i64 32
  %99 = call i64 @memcmp(i8* %98, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @test_ecdsa_der_parse.zeroes, i64 0, i64 0), i64 32)
  %100 = icmp ne i64 %99, 0
  br label %101

101:                                              ; preds = %96, %83
  %102 = phi i1 [ false, %83 ], [ %100, %96 ]
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %22, align 4
  br label %104

104:                                              ; preds = %101, %76
  %105 = load i32, i32* %22, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %129

107:                                              ; preds = %104
  %108 = load i32, i32* @ctx, align 4
  %109 = getelementptr inbounds [2048 x i8], [2048 x i8]* %18, i64 0, i64 0
  %110 = call i32 @secp256k1_ecdsa_signature_serialize_der(i32 %108, i8* %109, i64* %20, i32* %17)
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = shl i32 %113, 11
  %115 = load i32, i32* %9, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %9, align 4
  %117 = load i64, i64* %20, align 8
  %118 = load i64, i64* %6, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %107
  %121 = getelementptr inbounds [2048 x i8], [2048 x i8]* %18, i64 0, i64 0
  %122 = load i8*, i8** %5, align 8
  %123 = load i64, i64* %6, align 8
  %124 = call i64 @memcmp(i8* %121, i8* %122, i64 %123)
  %125 = icmp eq i64 %124, 0
  br label %126

126:                                              ; preds = %120, %107
  %127 = phi i1 [ false, %107 ], [ %125, %120 ]
  %128 = zext i1 %127 to i32
  store i32 %128, i32* %23, align 4
  br label %129

129:                                              ; preds = %126, %104
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %129
  %133 = load i32, i32* %14, align 4
  %134 = icmp ne i32 %133, 0
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  %137 = shl i32 %136, 2
  %138 = load i32, i32* %9, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %9, align 4
  br label %140

140:                                              ; preds = %132, %129
  %141 = load i32, i32* %8, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %140
  %144 = load i32, i32* %14, align 4
  %145 = shl i32 %144, 17
  %146 = load i32, i32* %9, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %9, align 4
  br label %148

148:                                              ; preds = %143, %140
  %149 = load i32, i32* %15, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %148
  %152 = load i32, i32* %16, align 4
  %153 = icmp ne i32 %152, 0
  %154 = xor i1 %153, true
  %155 = zext i1 %154 to i32
  %156 = shl i32 %155, 3
  %157 = load i32, i32* %9, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %9, align 4
  br label %159

159:                                              ; preds = %151, %148
  %160 = load i32, i32* %15, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %192

162:                                              ; preds = %159
  %163 = load i32, i32* %23, align 4
  %164 = icmp ne i32 %163, 0
  %165 = xor i1 %164, true
  %166 = zext i1 %165 to i32
  %167 = shl i32 %166, 12
  %168 = load i32, i32* %9, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %9, align 4
  %170 = load i64, i64* %13, align 8
  %171 = load i64, i64* %20, align 8
  %172 = icmp ne i64 %170, %171
  %173 = zext i1 %172 to i32
  %174 = shl i32 %173, 13
  %175 = load i32, i32* %9, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %9, align 4
  %177 = load i64, i64* %13, align 8
  %178 = load i64, i64* %20, align 8
  %179 = icmp ne i64 %177, %178
  br i1 %179, label %186, label %180

180:                                              ; preds = %162
  %181 = getelementptr inbounds [2048 x i8], [2048 x i8]* %18, i64 0, i64 0
  %182 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %183 = load i64, i64* %13, align 8
  %184 = call i64 @memcmp(i8* %181, i8* %182, i64 %183)
  %185 = icmp ne i64 %184, 0
  br label %186

186:                                              ; preds = %180, %162
  %187 = phi i1 [ true, %162 ], [ %185, %180 ]
  %188 = zext i1 %187 to i32
  %189 = shl i32 %188, 14
  %190 = load i32, i32* %9, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %9, align 4
  br label %192

192:                                              ; preds = %186, %159
  %193 = load i32, i32* %16, align 4
  %194 = load i32, i32* %23, align 4
  %195 = icmp ne i32 %193, %194
  %196 = zext i1 %195 to i32
  %197 = shl i32 %196, 15
  %198 = load i32, i32* %9, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %9, align 4
  %200 = load i32, i32* %14, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %210

202:                                              ; preds = %192
  %203 = load i32, i32* %21, align 4
  %204 = icmp ne i32 %203, 0
  %205 = xor i1 %204, true
  %206 = zext i1 %205 to i32
  %207 = shl i32 %206, 16
  %208 = load i32, i32* %9, align 4
  %209 = or i32 %208, %207
  store i32 %209, i32* %9, align 4
  br label %210

210:                                              ; preds = %202, %192
  %211 = load i32, i32* %9, align 4
  ret i32 %211
}

declare dso_local i32 @secp256k1_ecdsa_signature_parse_der(i32, i32*, i8*, i64) #1

declare dso_local i32 @secp256k1_ecdsa_signature_serialize_compact(i32, i8*, i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @secp256k1_ecdsa_signature_serialize_der(i32, i8*, i64*, i32*) #1

declare dso_local i32 @ecdsa_signature_parse_der_lax(i32, i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
