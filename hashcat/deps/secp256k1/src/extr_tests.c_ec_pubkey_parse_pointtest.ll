; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_ec_pubkey_parse_pointtest.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_ec_pubkey_parse_pointtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ctx = common dso_local global i32 0, align 4
@counting_illegal_callback_fn = common dso_local global i32* null, align 8
@SECP256K1_EC_COMPRESSED = common dso_local global i32 0, align 4
@SECP256K1_EC_UNCOMPRESSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ec_pubkey_parse_pointtest(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [65 x i8], align 16
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [65 x i8], align 16
  %17 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* @ctx, align 4
  %19 = load i32*, i32** @counting_illegal_callback_fn, align 8
  %20 = call i32 @secp256k1_context_set_illegal_callback(i32 %18, i32* %19, i32* %11)
  store i64 3, i64* %10, align 8
  br label %21

21:                                               ; preds = %226, %3
  %22 = load i64, i64* %10, align 8
  %23 = icmp ule i64 %22, 65
  br i1 %23, label %24, label %229

24:                                               ; preds = %21
  %25 = getelementptr inbounds [65 x i8], [65 x i8]* %7, i64 0, i64 1
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @memcpy(i8* %25, i8* %26, i32 64)
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds [65 x i8], [65 x i8]* %7, i64 0, i64 %28
  %30 = load i64, i64* %10, align 8
  %31 = sub i64 65, %30
  %32 = trunc i64 %31 to i32
  %33 = call i32 @VG_UNDEF(i8* %29, i32 %32)
  store i32 0, i32* %12, align 4
  br label %34

34:                                               ; preds = %222, %24
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %35, 256
  br i1 %36, label %37, label %225

37:                                               ; preds = %34
  %38 = load i32, i32* %12, align 4
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds [65 x i8], [65 x i8]* %7, i64 0, i64 0
  store i8 %39, i8* %40, align 16
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 63
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %44, 1
  %46 = add nsw i32 %45, 2
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %37
  %50 = load i64, i64* %10, align 8
  %51 = icmp eq i64 %50, 33
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i32, i32* %12, align 4
  %54 = and i32 %53, 254
  %55 = icmp eq i32 %54, 2
  br label %56

56:                                               ; preds = %52, %49, %37
  %57 = phi i1 [ false, %49 ], [ false, %37 ], [ %55, %52 ]
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %88

61:                                               ; preds = %56
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %88

64:                                               ; preds = %61
  %65 = load i32, i32* %12, align 4
  %66 = and i32 %65, 4
  %67 = load i64, i64* %10, align 8
  %68 = icmp eq i64 %67, 65
  %69 = zext i1 %68 to i32
  %70 = shl i32 %69, 2
  %71 = icmp eq i32 %66, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %64
  %73 = load i32, i32* %12, align 4
  %74 = icmp eq i32 %73, 4
  br i1 %74, label %80, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %12, align 4
  %77 = and i32 %76, 251
  %78 = load i32, i32* %15, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %75, %72
  %81 = load i64, i64* %10, align 8
  %82 = icmp eq i64 %81, 33
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load i64, i64* %10, align 8
  %85 = icmp eq i64 %84, 65
  br label %86

86:                                               ; preds = %83, %80
  %87 = phi i1 [ true, %80 ], [ %85, %83 ]
  br label %88

88:                                               ; preds = %86, %75, %64, %61, %56
  %89 = phi i1 [ false, %75 ], [ false, %64 ], [ false, %61 ], [ false, %56 ], [ %87, %86 ]
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %88
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %197

96:                                               ; preds = %93, %88
  %97 = call i32 @memset(i8* %8, i32 0, i32 1)
  %98 = call i32 @VG_UNDEF(i8* %8, i32 1)
  store i32 0, i32* %11, align 4
  %99 = load i32, i32* @ctx, align 4
  %100 = getelementptr inbounds [65 x i8], [65 x i8]* %7, i64 0, i64 0
  %101 = load i64, i64* %10, align 8
  %102 = call i32 @secp256k1_ec_pubkey_parse(i32 %99, i8* %8, i8* %100, i64 %101)
  %103 = icmp eq i32 %102, 1
  %104 = zext i1 %103 to i32
  %105 = call i32 @CHECK(i32 %104)
  %106 = call i32 @VG_CHECK(i8* %8, i32 1)
  store i64 65, i64* %17, align 8
  %107 = getelementptr inbounds [65 x i8], [65 x i8]* %16, i64 0, i64 0
  %108 = call i32 @VG_UNDEF(i8* %107, i32 65)
  %109 = load i32, i32* @ctx, align 4
  %110 = getelementptr inbounds [65 x i8], [65 x i8]* %16, i64 0, i64 0
  %111 = load i32, i32* @SECP256K1_EC_COMPRESSED, align 4
  %112 = call i32 @secp256k1_ec_pubkey_serialize(i32 %109, i8* %110, i64* %17, i8* %8, i32 %111)
  %113 = icmp eq i32 %112, 1
  %114 = zext i1 %113 to i32
  %115 = call i32 @CHECK(i32 %114)
  %116 = getelementptr inbounds [65 x i8], [65 x i8]* %16, i64 0, i64 0
  %117 = load i64, i64* %17, align 8
  %118 = trunc i64 %117 to i32
  %119 = call i32 @VG_CHECK(i8* %116, i32 %118)
  %120 = load i64, i64* %17, align 8
  %121 = icmp eq i64 %120, 33
  %122 = zext i1 %121 to i32
  %123 = call i32 @CHECK(i32 %122)
  %124 = getelementptr inbounds [65 x i8], [65 x i8]* %16, i64 0, i64 1
  %125 = getelementptr inbounds [65 x i8], [65 x i8]* %7, i64 0, i64 1
  %126 = call i64 @memcmp(i8* %124, i8* %125, i32 32)
  %127 = icmp eq i64 %126, 0
  %128 = zext i1 %127 to i32
  %129 = call i32 @CHECK(i32 %128)
  %130 = load i64, i64* %10, align 8
  %131 = icmp ne i64 %130, 33
  br i1 %131, label %140, label %132

132:                                              ; preds = %96
  %133 = getelementptr inbounds [65 x i8], [65 x i8]* %16, i64 0, i64 0
  %134 = load i8, i8* %133, align 16
  %135 = zext i8 %134 to i32
  %136 = getelementptr inbounds [65 x i8], [65 x i8]* %7, i64 0, i64 0
  %137 = load i8, i8* %136, align 16
  %138 = zext i8 %137 to i32
  %139 = icmp eq i32 %135, %138
  br label %140

140:                                              ; preds = %132, %96
  %141 = phi i1 [ true, %96 ], [ %139, %132 ]
  %142 = zext i1 %141 to i32
  %143 = call i32 @CHECK(i32 %142)
  %144 = load i32, i32* %14, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %192

146:                                              ; preds = %140
  %147 = getelementptr inbounds [65 x i8], [65 x i8]* %16, i64 0, i64 0
  %148 = load i8, i8* %147, align 16
  %149 = zext i8 %148 to i32
  %150 = load i32, i32* %15, align 4
  %151 = icmp eq i32 %149, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 @CHECK(i32 %152)
  %154 = load i32, i32* @ctx, align 4
  %155 = call i32 @secp256k1_pubkey_load(i32 %154, i32* %9, i8* %8)
  %156 = icmp eq i32 %155, 1
  %157 = zext i1 %156 to i32
  %158 = call i32 @CHECK(i32 %157)
  %159 = call i32 @memset(i8* %8, i32 0, i32 1)
  %160 = call i32 @VG_UNDEF(i8* %8, i32 1)
  %161 = call i32 @secp256k1_pubkey_save(i8* %8, i32* %9)
  %162 = call i32 @VG_CHECK(i8* %8, i32 1)
  store i64 65, i64* %17, align 8
  %163 = getelementptr inbounds [65 x i8], [65 x i8]* %16, i64 0, i64 0
  %164 = call i32 @VG_UNDEF(i8* %163, i32 65)
  %165 = load i32, i32* @ctx, align 4
  %166 = getelementptr inbounds [65 x i8], [65 x i8]* %16, i64 0, i64 0
  %167 = load i32, i32* @SECP256K1_EC_UNCOMPRESSED, align 4
  %168 = call i32 @secp256k1_ec_pubkey_serialize(i32 %165, i8* %166, i64* %17, i8* %8, i32 %167)
  %169 = icmp eq i32 %168, 1
  %170 = zext i1 %169 to i32
  %171 = call i32 @CHECK(i32 %170)
  %172 = getelementptr inbounds [65 x i8], [65 x i8]* %16, i64 0, i64 0
  %173 = load i64, i64* %17, align 8
  %174 = trunc i64 %173 to i32
  %175 = call i32 @VG_CHECK(i8* %172, i32 %174)
  %176 = load i64, i64* %17, align 8
  %177 = icmp eq i64 %176, 65
  %178 = zext i1 %177 to i32
  %179 = call i32 @CHECK(i32 %178)
  %180 = getelementptr inbounds [65 x i8], [65 x i8]* %16, i64 0, i64 0
  %181 = load i8, i8* %180, align 16
  %182 = zext i8 %181 to i32
  %183 = icmp eq i32 %182, 4
  %184 = zext i1 %183 to i32
  %185 = call i32 @CHECK(i32 %184)
  %186 = getelementptr inbounds [65 x i8], [65 x i8]* %16, i64 0, i64 1
  %187 = load i8*, i8** %4, align 8
  %188 = call i64 @memcmp(i8* %186, i8* %187, i32 64)
  %189 = icmp eq i64 %188, 0
  %190 = zext i1 %189 to i32
  %191 = call i32 @CHECK(i32 %190)
  br label %192

192:                                              ; preds = %146, %140
  %193 = load i32, i32* %11, align 4
  %194 = icmp eq i32 %193, 0
  %195 = zext i1 %194 to i32
  %196 = call i32 @CHECK(i32 %195)
  br label %221

197:                                              ; preds = %93
  %198 = call i32 @memset(i8* %8, i32 254, i32 1)
  store i32 0, i32* %11, align 4
  %199 = call i32 @VG_UNDEF(i8* %8, i32 1)
  %200 = load i32, i32* @ctx, align 4
  %201 = getelementptr inbounds [65 x i8], [65 x i8]* %7, i64 0, i64 0
  %202 = load i64, i64* %10, align 8
  %203 = call i32 @secp256k1_ec_pubkey_parse(i32 %200, i8* %8, i8* %201, i64 %202)
  %204 = icmp eq i32 %203, 0
  %205 = zext i1 %204 to i32
  %206 = call i32 @CHECK(i32 %205)
  %207 = call i32 @VG_CHECK(i8* %8, i32 1)
  %208 = load i32, i32* %11, align 4
  %209 = icmp eq i32 %208, 0
  %210 = zext i1 %209 to i32
  %211 = call i32 @CHECK(i32 %210)
  %212 = load i32, i32* @ctx, align 4
  %213 = call i32 @secp256k1_pubkey_load(i32 %212, i32* %9, i8* %8)
  %214 = icmp eq i32 %213, 0
  %215 = zext i1 %214 to i32
  %216 = call i32 @CHECK(i32 %215)
  %217 = load i32, i32* %11, align 4
  %218 = icmp eq i32 %217, 1
  %219 = zext i1 %218 to i32
  %220 = call i32 @CHECK(i32 %219)
  br label %221

221:                                              ; preds = %197, %192
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %12, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %12, align 4
  br label %34

225:                                              ; preds = %34
  br label %226

226:                                              ; preds = %225
  %227 = load i64, i64* %10, align 8
  %228 = add i64 %227, 1
  store i64 %228, i64* %10, align 8
  br label %21

229:                                              ; preds = %21
  %230 = load i32, i32* @ctx, align 4
  %231 = call i32 @secp256k1_context_set_illegal_callback(i32 %230, i32* null, i32* null)
  ret void
}

declare dso_local i32 @secp256k1_context_set_illegal_callback(i32, i32*, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @VG_UNDEF(i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @secp256k1_ec_pubkey_parse(i32, i8*, i8*, i64) #1

declare dso_local i32 @VG_CHECK(i8*, i32) #1

declare dso_local i32 @secp256k1_ec_pubkey_serialize(i32, i8*, i64*, i8*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @secp256k1_pubkey_load(i32, i32*, i8*) #1

declare dso_local i32 @secp256k1_pubkey_save(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
