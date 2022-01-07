; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_picotls.c_test_ffx.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_picotls.c_test_ffx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@test_ffx.ffx_test_source = internal global [32 x i8] c"0123456789abcdefghijklmnopqrstuv", align 16
@test_ffx.ffx_test_key = internal global [32 x i8] c"\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1B\1C\1D\1E\1F \00", align 16
@test_ffx.ffx_test_bad_key = internal global [32 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1B\1C\1D\1E\1F\00", align 16
@test_ffx.ffx_test_iv = internal global [16 x i8] c"\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19", align 16
@test_ffx.ffx_test_bad_iv = internal global [16 x i8] c"\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A", align 16
@test_ffx.ffx_test_mask = internal global [8 x i8] c"\00\01\03\07\0F\1F?\7F", align 1
@ffx_variants = common dso_local global %struct.TYPE_2__* null, align 8
@ptls_minicrypto_aes128ctr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ffx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ffx() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [32 x i8], align 16
  %5 = alloca [32 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %162, %0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ffx_variants, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %165

17:                                               ; preds = %9
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ffx_variants, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i32* @ptls_cipher_new(i32* %23, i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @test_ffx.ffx_test_key, i64 0, i64 0))
  store i32* %24, i32** %1, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ffx_variants, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i32* @ptls_cipher_new(i32* %30, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @test_ffx.ffx_test_key, i64 0, i64 0))
  store i32* %31, i32** %2, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ffx_variants, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = call i32* @ptls_cipher_new(i32* %37, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @test_ffx.ffx_test_bad_key, i64 0, i64 0))
  store i32* %38, i32** %3, align 8
  %39 = load i32*, i32** %1, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %17
  %42 = load i32*, i32** %2, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32*, i32** %3, align 8
  %46 = icmp ne i32* %45, null
  br label %47

47:                                               ; preds = %44, %41, %17
  %48 = phi i1 [ false, %41 ], [ false, %17 ], [ %46, %44 ]
  %49 = zext i1 %48 to i32
  %50 = call i32 @ok(i32 %49)
  %51 = load i32*, i32** %1, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %143

53:                                               ; preds = %47
  %54 = load i32*, i32** %2, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %143

56:                                               ; preds = %53
  %57 = load i32*, i32** %3, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %143

59:                                               ; preds = %56
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ffx_variants, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 7
  %68 = sdiv i32 %67, 8
  store i32 %68, i32* %8, align 4
  %69 = load i32*, i32** %1, align 8
  %70 = call i32 @ptls_cipher_init(i32* %69, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_ffx.ffx_test_iv, i64 0, i64 0))
  %71 = load i32*, i32** %1, align 8
  %72 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @ptls_cipher_encrypt(i32* %71, i8* %72, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @test_ffx.ffx_test_source, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = load i32, i32* %7, align 4
  %82 = srem i32 %81, 8
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [8 x i8], [8 x i8]* @test_ffx.ffx_test_mask, i64 0, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = and i32 %80, %86
  %88 = load i32, i32* %8, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [32 x i8], [32 x i8]* @test_ffx.ffx_test_source, i64 0, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = load i32, i32* %7, align 4
  %95 = srem i32 %94, 8
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [8 x i8], [8 x i8]* @test_ffx.ffx_test_mask, i64 0, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = and i32 %93, %99
  %101 = icmp eq i32 %87, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @ok(i32 %102)
  %104 = load i32*, i32** %2, align 8
  %105 = call i32 @ptls_cipher_init(i32* %104, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_ffx.ffx_test_iv, i64 0, i64 0))
  %106 = load i32*, i32** %2, align 8
  %107 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %108 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @ptls_cipher_encrypt(i32* %106, i8* %107, i8* %108, i32 %109)
  %111 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %112 = load i32, i32* %8, align 4
  %113 = call i64 @memcmp(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @test_ffx.ffx_test_source, i64 0, i64 0), i8* %111, i32 %112)
  %114 = icmp eq i64 %113, 0
  %115 = zext i1 %114 to i32
  %116 = call i32 @ok(i32 %115)
  %117 = load i32*, i32** %2, align 8
  %118 = call i32 @ptls_cipher_init(i32* %117, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_ffx.ffx_test_bad_iv, i64 0, i64 0))
  %119 = load i32*, i32** %2, align 8
  %120 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %121 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @ptls_cipher_encrypt(i32* %119, i8* %120, i8* %121, i32 %122)
  %124 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %125 = load i32, i32* %8, align 4
  %126 = call i64 @memcmp(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @test_ffx.ffx_test_source, i64 0, i64 0), i8* %124, i32 %125)
  %127 = icmp ne i64 %126, 0
  %128 = zext i1 %127 to i32
  %129 = call i32 @ok(i32 %128)
  %130 = load i32*, i32** %3, align 8
  %131 = call i32 @ptls_cipher_init(i32* %130, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_ffx.ffx_test_iv, i64 0, i64 0))
  %132 = load i32*, i32** %3, align 8
  %133 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %134 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @ptls_cipher_encrypt(i32* %132, i8* %133, i8* %134, i32 %135)
  %137 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %138 = load i32, i32* %8, align 4
  %139 = call i64 @memcmp(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @test_ffx.ffx_test_source, i64 0, i64 0), i8* %137, i32 %138)
  %140 = icmp ne i64 %139, 0
  %141 = zext i1 %140 to i32
  %142 = call i32 @ok(i32 %141)
  br label %143

143:                                              ; preds = %59, %56, %53, %47
  %144 = load i32*, i32** %1, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i32*, i32** %1, align 8
  %148 = call i32 @ptls_cipher_free(i32* %147)
  br label %149

149:                                              ; preds = %146, %143
  %150 = load i32*, i32** %2, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i32*, i32** %2, align 8
  %154 = call i32 @ptls_cipher_free(i32* %153)
  br label %155

155:                                              ; preds = %152, %149
  %156 = load i32*, i32** %3, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load i32*, i32** %3, align 8
  %160 = call i32 @ptls_cipher_free(i32* %159)
  br label %161

161:                                              ; preds = %158, %155
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %6, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %6, align 4
  br label %9

165:                                              ; preds = %9
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ffx_variants, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i64 2
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp eq i32 %169, 53
  %171 = zext i1 %170 to i32
  %172 = call i32 @assert(i32 %171)
  %173 = call i32* @ptls_ffx_new(i32* @ptls_minicrypto_aes128ctr, i32 1, i32 4, i32 53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @test_ffx.ffx_test_key, i64 0, i64 0))
  store i32* %173, i32** %1, align 8
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ffx_variants, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i64 2
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = call i32* @ptls_cipher_new(i32* %177, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @test_ffx.ffx_test_key, i64 0, i64 0))
  store i32* %178, i32** %2, align 8
  %179 = load i32*, i32** %1, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %184

181:                                              ; preds = %165
  %182 = load i32*, i32** %2, align 8
  %183 = icmp ne i32* %182, null
  br label %184

184:                                              ; preds = %181, %165
  %185 = phi i1 [ false, %165 ], [ %183, %181 ]
  %186 = zext i1 %185 to i32
  %187 = call i32 @ok(i32 %186)
  %188 = load i32*, i32** %1, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %190, label %210

190:                                              ; preds = %184
  %191 = load i32*, i32** %2, align 8
  %192 = icmp ne i32* %191, null
  br i1 %192, label %193, label %210

193:                                              ; preds = %190
  %194 = load i32*, i32** %1, align 8
  %195 = call i32 @ptls_cipher_init(i32* %194, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_ffx.ffx_test_iv, i64 0, i64 0))
  %196 = load i32*, i32** %1, align 8
  %197 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %198 = call i32 @ptls_cipher_encrypt(i32* %196, i8* %197, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @test_ffx.ffx_test_source, i64 0, i64 0), i32 7)
  %199 = load i32*, i32** %2, align 8
  %200 = call i32 @ptls_cipher_init(i32* %199, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_ffx.ffx_test_iv, i64 0, i64 0))
  %201 = load i32*, i32** %2, align 8
  %202 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %203 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %204 = call i32 @ptls_cipher_encrypt(i32* %201, i8* %202, i8* %203, i32 7)
  %205 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %206 = call i64 @memcmp(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @test_ffx.ffx_test_source, i64 0, i64 0), i8* %205, i32 7)
  %207 = icmp eq i64 %206, 0
  %208 = zext i1 %207 to i32
  %209 = call i32 @ok(i32 %208)
  br label %210

210:                                              ; preds = %193, %190, %184
  %211 = load i32*, i32** %1, align 8
  %212 = icmp ne i32* %211, null
  br i1 %212, label %213, label %216

213:                                              ; preds = %210
  %214 = load i32*, i32** %1, align 8
  %215 = call i32 @ptls_cipher_free(i32* %214)
  br label %216

216:                                              ; preds = %213, %210
  %217 = load i32*, i32** %2, align 8
  %218 = icmp ne i32* %217, null
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = load i32*, i32** %2, align 8
  %221 = call i32 @ptls_cipher_free(i32* %220)
  br label %222

222:                                              ; preds = %219, %216
  ret void
}

declare dso_local i32* @ptls_cipher_new(i32*, i32, i8*) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @ptls_cipher_init(i32*, i8*) #1

declare dso_local i32 @ptls_cipher_encrypt(i32*, i8*, i8*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @ptls_cipher_free(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @ptls_ffx_new(i32*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
