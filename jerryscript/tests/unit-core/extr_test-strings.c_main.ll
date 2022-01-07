; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-strings.c_main.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-strings.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@max_bytes_in_string = common dso_local global i32 0, align 4
@max_code_units_in_string = common dso_local global i32 0, align 4
@test_iters = common dso_local global i32 0, align 4
@test_subiters = common dso_local global i32 0, align 4
@__const.main.invalid_cesu8_string_1 = private unnamed_addr constant [2 x i32] [i32 192, i32 130], align 4
@__const.main.invalid_cesu8_string_2 = private unnamed_addr constant [3 x i32] [i32 224, i32 128, i32 129], align 4
@__const.main.invalid_cesu8_string_3 = private unnamed_addr constant [6 x i32] [i32 237, i32 164, i32 129, i32 237, i32 191, i32 176], align 16
@__const.main.valid_utf8_string_1 = private unnamed_addr constant [3 x i32] [i32 237, i32 164, i32 129], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca [2 x i32], align 4
  %19 = alloca [3 x i32], align 4
  %20 = alloca [6 x i32], align 16
  %21 = alloca [3 x i32], align 4
  %22 = alloca [3 x i32], align 4
  %23 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %24 = call i32 (...) @TEST_INIT()
  %25 = call i32 (...) @jmem_init()
  %26 = call i32 (...) @ecma_init()
  %27 = load i32, i32* @max_bytes_in_string, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %2, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %3, align 8
  %31 = load i32, i32* @max_code_units_in_string, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i64, i64 %32, align 16
  store i64 %32, i64* %4, align 8
  %34 = load i32, i32* @max_code_units_in_string, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i32*, i64 %35, align 16
  store i64 %35, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %192, %0
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @test_iters, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %195

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %49

45:                                               ; preds = %41
  %46 = call i32 (...) @rand()
  %47 = load i32, i32* @max_bytes_in_string, align 4
  %48 = srem i32 %46, %47
  br label %49

49:                                               ; preds = %45, %44
  %50 = phi i32 [ 0, %44 ], [ %48, %45 ]
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i64 @generate_cesu8_string(i32* %30, i32 %51)
  store i64 %52, i64* %8, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32* @ecma_new_ecma_string_from_utf8(i32* %30, i32 %53)
  store i32* %54, i32** %9, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = call i64 @ecma_string_get_length(i32* %55)
  store i64 %56, i64* %10, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %8, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @TEST_ASSERT(i32 %60)
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @ecma_deref_ecma_string(i32* %62)
  %64 = load i32, i32* %7, align 4
  %65 = call i64 @lit_utf8_string_length(i32* %30, i32 %64)
  %66 = load i64, i64* %8, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @TEST_ASSERT(i32 %68)
  store i32* %30, i32** %11, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %30, i64 %71
  store i32* %72, i32** %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %73

73:                                               ; preds = %77, %49
  %74 = load i32*, i32** %11, align 8
  %75 = load i32*, i32** %12, align 8
  %76 = icmp ult i32* %74, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %73
  %78 = load i32*, i32** %11, align 8
  %79 = call i64 @lit_utf8_peek_next(i32* %78)
  %80 = load i64, i64* %14, align 8
  %81 = getelementptr inbounds i64, i64* %33, i64 %80
  store i64 %79, i64* %81, align 8
  %82 = load i32*, i32** %11, align 8
  %83 = load i64, i64* %14, align 8
  %84 = getelementptr inbounds i32*, i32** %36, i64 %83
  store i32* %82, i32** %84, align 8
  %85 = load i64, i64* %14, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %14, align 8
  %87 = load i64, i64* %13, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %13, align 8
  %89 = call i32 @lit_utf8_incr(i32** %11)
  br label %73

90:                                               ; preds = %73
  %91 = load i64, i64* %8, align 8
  %92 = load i64, i64* %13, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @TEST_ASSERT(i32 %94)
  %96 = load i64, i64* %14, align 8
  %97 = icmp ugt i64 %96, 0
  br i1 %97, label %98, label %123

98:                                               ; preds = %90
  store i32 0, i32* %15, align 4
  br label %99

99:                                               ; preds = %119, %98
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* @test_subiters, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %122

103:                                              ; preds = %99
  %104 = call i32 (...) @rand()
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %14, align 8
  %107 = urem i64 %105, %106
  store i64 %107, i64* %16, align 8
  %108 = load i64, i64* %16, align 8
  %109 = getelementptr inbounds i32*, i32** %36, i64 %108
  %110 = load i32*, i32** %109, align 8
  store i32* %110, i32** %11, align 8
  %111 = load i32*, i32** %11, align 8
  %112 = call i64 @lit_utf8_peek_next(i32* %111)
  %113 = load i64, i64* %16, align 8
  %114 = getelementptr inbounds i64, i64* %33, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %112, %115
  %117 = zext i1 %116 to i32
  %118 = call i32 @TEST_ASSERT(i32 %117)
  br label %119

119:                                              ; preds = %103
  %120 = load i32, i32* %15, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %15, align 4
  br label %99

122:                                              ; preds = %99
  br label %123

123:                                              ; preds = %122, %90
  %124 = load i32*, i32** %12, align 8
  store i32* %124, i32** %11, align 8
  br label %125

125:                                              ; preds = %128, %123
  %126 = load i32*, i32** %11, align 8
  %127 = icmp ugt i32* %126, %30
  br i1 %127, label %128, label %144

128:                                              ; preds = %125
  %129 = load i64, i64* %14, align 8
  %130 = icmp ugt i64 %129, 0
  %131 = zext i1 %130 to i32
  %132 = call i32 @TEST_ASSERT(i32 %131)
  %133 = load i64, i64* %13, align 8
  %134 = add i64 %133, -1
  store i64 %134, i64* %13, align 8
  %135 = load i64, i64* %13, align 8
  %136 = getelementptr inbounds i64, i64* %33, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = load i32*, i32** %11, align 8
  %139 = call i64 @lit_utf8_peek_prev(i32* %138)
  %140 = icmp eq i64 %137, %139
  %141 = zext i1 %140 to i32
  %142 = call i32 @TEST_ASSERT(i32 %141)
  %143 = call i32 @lit_utf8_decr(i32** %11)
  br label %125

144:                                              ; preds = %125
  %145 = load i64, i64* %13, align 8
  %146 = icmp eq i64 %145, 0
  %147 = zext i1 %146 to i32
  %148 = call i32 @TEST_ASSERT(i32 %147)
  br label %149

149:                                              ; preds = %153, %144
  %150 = load i32*, i32** %11, align 8
  %151 = load i32*, i32** %12, align 8
  %152 = icmp ult i32* %150, %151
  br i1 %152, label %153, label %164

153:                                              ; preds = %149
  %154 = call i64 @lit_utf8_read_next(i32** %11)
  store i64 %154, i64* %17, align 8
  %155 = load i64, i64* %17, align 8
  %156 = load i64, i64* %13, align 8
  %157 = getelementptr inbounds i64, i64* %33, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %155, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 @TEST_ASSERT(i32 %160)
  %162 = load i64, i64* %13, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %13, align 8
  br label %149

164:                                              ; preds = %149
  %165 = load i64, i64* %8, align 8
  %166 = load i64, i64* %13, align 8
  %167 = icmp eq i64 %165, %166
  %168 = zext i1 %167 to i32
  %169 = call i32 @TEST_ASSERT(i32 %168)
  br label %170

170:                                              ; preds = %173, %164
  %171 = load i32*, i32** %11, align 8
  %172 = icmp ugt i32* %171, %30
  br i1 %172, label %173, label %187

173:                                              ; preds = %170
  %174 = load i64, i64* %14, align 8
  %175 = icmp ugt i64 %174, 0
  %176 = zext i1 %175 to i32
  %177 = call i32 @TEST_ASSERT(i32 %176)
  %178 = load i64, i64* %13, align 8
  %179 = add i64 %178, -1
  store i64 %179, i64* %13, align 8
  %180 = load i64, i64* %13, align 8
  %181 = getelementptr inbounds i64, i64* %33, i64 %180
  %182 = load i64, i64* %181, align 8
  %183 = call i64 @lit_utf8_read_prev(i32** %11)
  %184 = icmp eq i64 %182, %183
  %185 = zext i1 %184 to i32
  %186 = call i32 @TEST_ASSERT(i32 %185)
  br label %170

187:                                              ; preds = %170
  %188 = load i64, i64* %13, align 8
  %189 = icmp eq i64 %188, 0
  %190 = zext i1 %189 to i32
  %191 = call i32 @TEST_ASSERT(i32 %190)
  br label %192

192:                                              ; preds = %187
  %193 = load i32, i32* %6, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %6, align 4
  br label %37

195:                                              ; preds = %37
  %196 = bitcast [2 x i32]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %196, i8* align 4 bitcast ([2 x i32]* @__const.main.invalid_cesu8_string_1 to i8*), i64 8, i1 false)
  %197 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  %198 = call i32 @lit_is_valid_cesu8_string(i32* %197, i32 8)
  %199 = icmp ne i32 %198, 0
  %200 = xor i1 %199, true
  %201 = zext i1 %200 to i32
  %202 = call i32 @TEST_ASSERT(i32 %201)
  %203 = bitcast [3 x i32]* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %203, i8* align 4 bitcast ([3 x i32]* @__const.main.invalid_cesu8_string_2 to i8*), i64 12, i1 false)
  %204 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %205 = call i32 @lit_is_valid_cesu8_string(i32* %204, i32 12)
  %206 = icmp ne i32 %205, 0
  %207 = xor i1 %206, true
  %208 = zext i1 %207 to i32
  %209 = call i32 @TEST_ASSERT(i32 %208)
  %210 = bitcast [6 x i32]* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %210, i8* align 16 bitcast ([6 x i32]* @__const.main.invalid_cesu8_string_3 to i8*), i64 24, i1 false)
  %211 = getelementptr inbounds [6 x i32], [6 x i32]* %20, i64 0, i64 0
  %212 = call i32 @lit_is_valid_cesu8_string(i32* %211, i32 24)
  %213 = call i32 @TEST_ASSERT(i32 %212)
  %214 = bitcast [3 x i32]* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %214, i8* align 4 bitcast ([3 x i32]* @__const.main.valid_utf8_string_1 to i8*), i64 12, i1 false)
  %215 = getelementptr inbounds [3 x i32], [3 x i32]* %21, i64 0, i64 0
  %216 = call i32 @lit_is_valid_cesu8_string(i32* %215, i32 12)
  %217 = call i32 @TEST_ASSERT(i32 %216)
  %218 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  %219 = call i32 @lit_code_unit_to_utf8(i32 115, i32* %218)
  store i32 %219, i32* %23, align 4
  %220 = load i32, i32* %23, align 4
  %221 = icmp eq i32 %220, 1
  %222 = zext i1 %221 to i32
  %223 = call i32 @TEST_ASSERT(i32 %222)
  %224 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  %225 = load i32, i32* %224, align 4
  %226 = icmp eq i32 %225, 115
  %227 = zext i1 %226 to i32
  %228 = call i32 @TEST_ASSERT(i32 %227)
  %229 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  %230 = call i32 @lit_code_unit_to_utf8(i32 1050, i32* %229)
  store i32 %230, i32* %23, align 4
  %231 = load i32, i32* %23, align 4
  %232 = icmp eq i32 %231, 2
  %233 = zext i1 %232 to i32
  %234 = call i32 @TEST_ASSERT(i32 %233)
  %235 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  %236 = load i32, i32* %235, align 4
  %237 = icmp eq i32 %236, 208
  %238 = zext i1 %237 to i32
  %239 = call i32 @TEST_ASSERT(i32 %238)
  %240 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 1
  %241 = load i32, i32* %240, align 4
  %242 = icmp eq i32 %241, 154
  %243 = zext i1 %242 to i32
  %244 = call i32 @TEST_ASSERT(i32 %243)
  %245 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  %246 = call i32 @lit_code_unit_to_utf8(i32 55295, i32* %245)
  store i32 %246, i32* %23, align 4
  %247 = load i32, i32* %23, align 4
  %248 = icmp eq i32 %247, 3
  %249 = zext i1 %248 to i32
  %250 = call i32 @TEST_ASSERT(i32 %249)
  %251 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  %252 = load i32, i32* %251, align 4
  %253 = icmp eq i32 %252, 237
  %254 = zext i1 %253 to i32
  %255 = call i32 @TEST_ASSERT(i32 %254)
  %256 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 1
  %257 = load i32, i32* %256, align 4
  %258 = icmp eq i32 %257, 159
  %259 = zext i1 %258 to i32
  %260 = call i32 @TEST_ASSERT(i32 %259)
  %261 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 2
  %262 = load i32, i32* %261, align 4
  %263 = icmp eq i32 %262, 191
  %264 = zext i1 %263 to i32
  %265 = call i32 @TEST_ASSERT(i32 %264)
  %266 = call i32 (...) @ecma_finalize()
  %267 = call i32 (...) @jmem_finalize()
  store i32 0, i32* %1, align 4
  %268 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %268)
  %269 = load i32, i32* %1, align 4
  ret i32 %269
}

declare dso_local i32 @TEST_INIT(...) #1

declare dso_local i32 @jmem_init(...) #1

declare dso_local i32 @ecma_init(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @rand(...) #1

declare dso_local i64 @generate_cesu8_string(i32*, i32) #1

declare dso_local i32* @ecma_new_ecma_string_from_utf8(i32*, i32) #1

declare dso_local i64 @ecma_string_get_length(i32*) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @ecma_deref_ecma_string(i32*) #1

declare dso_local i64 @lit_utf8_string_length(i32*, i32) #1

declare dso_local i64 @lit_utf8_peek_next(i32*) #1

declare dso_local i32 @lit_utf8_incr(i32**) #1

declare dso_local i64 @lit_utf8_peek_prev(i32*) #1

declare dso_local i32 @lit_utf8_decr(i32**) #1

declare dso_local i64 @lit_utf8_read_next(i32**) #1

declare dso_local i64 @lit_utf8_read_prev(i32**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @lit_is_valid_cesu8_string(i32*, i32) #1

declare dso_local i32 @lit_code_unit_to_utf8(i32, i32*) #1

declare dso_local i32 @ecma_finalize(...) #1

declare dso_local i32 @jmem_finalize(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
