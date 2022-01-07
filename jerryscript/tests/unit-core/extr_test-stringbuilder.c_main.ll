; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-stringbuilder.c_main.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-stringbuilder.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.string_data = internal constant [16 x i8] c"A simple string\00", align 16
@LIT_MAGIC_STRING_STRING = common dso_local global i32 0, align 4
@main.string_data.1 = internal constant [2 x i8] c"a\00", align 1
@LIT_CHAR_LOWERCASE_A = common dso_local global i32 0, align 4
@main.string_data.2 = internal constant [16 x i8] c"A simple string\00", align 16
@LIT_MAGIC_STRING__EMPTY = common dso_local global i32 0, align 4
@main.string_data.3 = internal constant [4 x i8] c"abc\00", align 1
@LIT_CHAR_LOWERCASE_B = common dso_local global i32 0, align 4
@LIT_CHAR_LOWERCASE_C = common dso_local global i32 0, align 4
@LIT_CHAR_1 = common dso_local global i32 0, align 4
@LIT_CHAR_2 = common dso_local global i32 0, align 4
@LIT_CHAR_3 = common dso_local global i32 0, align 4
@main.string_data.4 = internal constant [4 x i8] c"abc\00", align 1
@main.expected_data = internal constant [14 x i8] c"1abc234string\00", align 1
@main.string_data.5 = internal constant [4 x i8] c"abc\00", align 1
@main.string_data.6 = internal constant [17 x i8] c"abcdefghijklmnop\00", align 16
@UINT16_MAX = common dso_local global i32 0, align 4
@main.string_data.7 = internal constant [4 x i8] c"abc\00", align 1
@main.expected_data.8 = internal constant [14 x i8] c"1abc234string\00", align 1
@main.string_data.9 = internal constant [4 x i8] c"abc\00", align 1
@main.expected_data.10 = internal constant [13 x i8] c"234abcstring\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i64, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i32*, align 8
  %40 = alloca i32*, align 8
  %41 = alloca i32, align 4
  %42 = alloca i32*, align 8
  %43 = alloca i32*, align 8
  %44 = alloca i32, align 4
  %45 = alloca i32*, align 8
  %46 = alloca i32*, align 8
  %47 = alloca i32*, align 8
  %48 = alloca i32, align 4
  %49 = alloca i32*, align 8
  %50 = alloca i32*, align 8
  %51 = alloca i32, align 4
  %52 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  %53 = call i32 (...) @TEST_INIT()
  %54 = call i32 (...) @jmem_init()
  %55 = call i32 (...) @ecma_init()
  %56 = call i32 (...) @ecma_stringbuilder_create()
  store i32 %56, i32* %2, align 4
  %57 = call i32 @ecma_stringbuilder_append_raw(i32* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @main.string_data, i64 0, i64 0), i32 15)
  %58 = call i32* @ecma_stringbuilder_finalize(i32* %2)
  store i32* %58, i32** %3, align 8
  %59 = call i32* @ecma_new_ecma_string_from_utf8(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @main.string_data, i64 0, i64 0), i32 15)
  store i32* %59, i32** %4, align 8
  %60 = load i32*, i32** %3, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @ecma_compare_ecma_strings(i32* %60, i32* %61)
  %63 = call i32 @TEST_ASSERT(i32 %62)
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @ecma_deref_ecma_string(i32* %64)
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @ecma_deref_ecma_string(i32* %66)
  %68 = call i32 (...) @ecma_stringbuilder_create()
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* @LIT_MAGIC_STRING_STRING, align 4
  %70 = call i32 @ecma_stringbuilder_append_magic(i32* %5, i32 %69)
  %71 = call i32* @ecma_stringbuilder_finalize(i32* %5)
  store i32* %71, i32** %6, align 8
  %72 = load i32, i32* @LIT_MAGIC_STRING_STRING, align 4
  %73 = call i32* @ecma_get_magic_string(i32 %72)
  store i32* %73, i32** %7, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @ecma_compare_ecma_strings(i32* %74, i32* %75)
  %77 = call i32 @TEST_ASSERT(i32 %76)
  %78 = call i32 (...) @ecma_stringbuilder_create()
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* @LIT_CHAR_LOWERCASE_A, align 4
  %80 = call i32 @ecma_stringbuilder_append_char(i32* %8, i32 %79)
  %81 = call i32* @ecma_stringbuilder_finalize(i32* %8)
  store i32* %81, i32** %9, align 8
  %82 = call i32* @ecma_new_ecma_string_from_utf8(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @main.string_data.1, i64 0, i64 0), i32 1)
  store i32* %82, i32** %10, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = call i32 @ecma_compare_ecma_strings(i32* %83, i32* %84)
  %86 = call i32 @TEST_ASSERT(i32 %85)
  %87 = load i32*, i32** %9, align 8
  %88 = call i32 @ecma_deref_ecma_string(i32* %87)
  %89 = load i32*, i32** %10, align 8
  %90 = call i32 @ecma_deref_ecma_string(i32* %89)
  %91 = call i32* @ecma_new_ecma_string_from_utf8(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @main.string_data.2, i64 0, i64 0), i32 15)
  store i32* %91, i32** %11, align 8
  %92 = call i32 (...) @ecma_stringbuilder_create()
  store i32 %92, i32* %12, align 4
  %93 = load i32*, i32** %11, align 8
  %94 = call i32 @ecma_stringbuilder_append(i32* %12, i32* %93)
  %95 = call i32* @ecma_stringbuilder_finalize(i32* %12)
  store i32* %95, i32** %13, align 8
  %96 = load i32*, i32** %13, align 8
  %97 = load i32*, i32** %11, align 8
  %98 = call i32 @ecma_compare_ecma_strings(i32* %96, i32* %97)
  %99 = call i32 @TEST_ASSERT(i32 %98)
  %100 = load i32*, i32** %13, align 8
  %101 = call i32 @ecma_deref_ecma_string(i32* %100)
  %102 = load i32*, i32** %11, align 8
  %103 = call i32 @ecma_deref_ecma_string(i32* %102)
  %104 = load i32, i32* @LIT_MAGIC_STRING__EMPTY, align 4
  %105 = call i32* @ecma_get_magic_string(i32 %104)
  store i32* %105, i32** %14, align 8
  %106 = call i32 (...) @ecma_stringbuilder_create()
  store i32 %106, i32* %15, align 4
  %107 = call i32* @ecma_stringbuilder_finalize(i32* %15)
  store i32* %107, i32** %16, align 8
  %108 = load i32*, i32** %16, align 8
  %109 = load i32*, i32** %14, align 8
  %110 = call i32 @ecma_compare_ecma_strings(i32* %108, i32* %109)
  %111 = call i32 @TEST_ASSERT(i32 %110)
  %112 = call i32 (...) @ecma_stringbuilder_create()
  store i32 %112, i32* %17, align 4
  %113 = load i32, i32* @LIT_CHAR_LOWERCASE_A, align 4
  %114 = call i32 @ecma_stringbuilder_append_char(i32* %17, i32 %113)
  %115 = load i32, i32* @LIT_CHAR_LOWERCASE_B, align 4
  %116 = call i32 @ecma_stringbuilder_append_char(i32* %17, i32 %115)
  %117 = load i32, i32* @LIT_CHAR_LOWERCASE_C, align 4
  %118 = call i32 @ecma_stringbuilder_append_char(i32* %17, i32 %117)
  %119 = call i32* @ecma_stringbuilder_finalize(i32* %17)
  store i32* %119, i32** %18, align 8
  %120 = call i32* @ecma_new_ecma_string_from_utf8(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @main.string_data.3, i64 0, i64 0), i32 3)
  store i32* %120, i32** %19, align 8
  %121 = load i32*, i32** %18, align 8
  %122 = load i32*, i32** %19, align 8
  %123 = call i32 @ecma_compare_ecma_strings(i32* %121, i32* %122)
  %124 = call i32 @TEST_ASSERT(i32 %123)
  %125 = load i32*, i32** %18, align 8
  %126 = call i32 @ecma_deref_ecma_string(i32* %125)
  %127 = load i32*, i32** %19, align 8
  %128 = call i32 @ecma_deref_ecma_string(i32* %127)
  %129 = call i32 (...) @ecma_stringbuilder_create()
  store i32 %129, i32* %20, align 4
  %130 = load i32, i32* @LIT_CHAR_1, align 4
  %131 = call i32 @ecma_stringbuilder_append_char(i32* %20, i32 %130)
  %132 = load i32, i32* @LIT_CHAR_2, align 4
  %133 = call i32 @ecma_stringbuilder_append_char(i32* %20, i32 %132)
  %134 = load i32, i32* @LIT_CHAR_3, align 4
  %135 = call i32 @ecma_stringbuilder_append_char(i32* %20, i32 %134)
  %136 = call i32* @ecma_stringbuilder_finalize(i32* %20)
  store i32* %136, i32** %21, align 8
  %137 = call i32* @ecma_new_ecma_string_from_uint32(i32 123)
  store i32* %137, i32** %22, align 8
  %138 = load i32*, i32** %21, align 8
  %139 = load i32*, i32** %22, align 8
  %140 = call i32 @ecma_compare_ecma_strings(i32* %138, i32* %139)
  %141 = call i32 @TEST_ASSERT(i32 %140)
  %142 = load i32*, i32** %21, align 8
  %143 = call i32 @ecma_deref_ecma_string(i32* %142)
  %144 = load i32*, i32** %22, align 8
  %145 = call i32 @ecma_deref_ecma_string(i32* %144)
  %146 = call i32* @ecma_new_ecma_string_from_uint32(i32 234)
  store i32* %146, i32** %23, align 8
  %147 = call i32 (...) @ecma_stringbuilder_create()
  store i32 %147, i32* %24, align 4
  %148 = load i32, i32* @LIT_CHAR_1, align 4
  %149 = call i32 @ecma_stringbuilder_append_char(i32* %24, i32 %148)
  %150 = call i32 @ecma_stringbuilder_append_raw(i32* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @main.string_data.4, i64 0, i64 0), i32 3)
  %151 = load i32*, i32** %23, align 8
  %152 = call i32 @ecma_stringbuilder_append(i32* %24, i32* %151)
  %153 = load i32, i32* @LIT_MAGIC_STRING_STRING, align 4
  %154 = call i32 @ecma_stringbuilder_append_magic(i32* %24, i32 %153)
  %155 = call i32* @ecma_stringbuilder_finalize(i32* %24)
  store i32* %155, i32** %25, align 8
  %156 = call i32* @ecma_new_ecma_string_from_utf8(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @main.expected_data, i64 0, i64 0), i32 13)
  store i32* %156, i32** %26, align 8
  %157 = load i32*, i32** %25, align 8
  %158 = load i32*, i32** %26, align 8
  %159 = call i32 @ecma_compare_ecma_strings(i32* %157, i32* %158)
  %160 = call i32 @TEST_ASSERT(i32 %159)
  %161 = load i32*, i32** %25, align 8
  %162 = call i32 @ecma_deref_ecma_string(i32* %161)
  %163 = load i32*, i32** %26, align 8
  %164 = call i32 @ecma_deref_ecma_string(i32* %163)
  %165 = call i32* @ecma_new_ecma_string_from_uint32(i32 234)
  store i32* %165, i32** %27, align 8
  %166 = call i32 (...) @ecma_stringbuilder_create()
  store i32 %166, i32* %28, align 4
  %167 = load i32, i32* @LIT_CHAR_1, align 4
  %168 = call i32 @ecma_stringbuilder_append_char(i32* %28, i32 %167)
  %169 = call i32 @ecma_stringbuilder_append_raw(i32* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @main.string_data.5, i64 0, i64 0), i32 3)
  %170 = load i32*, i32** %27, align 8
  %171 = call i32 @ecma_stringbuilder_append(i32* %28, i32* %170)
  %172 = load i32, i32* @LIT_MAGIC_STRING_STRING, align 4
  %173 = call i32 @ecma_stringbuilder_append_magic(i32* %28, i32 %172)
  %174 = call i32 @ecma_stringbuilder_destroy(i32* %28)
  %175 = load i32, i32* @UINT16_MAX, align 4
  %176 = sext i32 %175 to i64
  %177 = udiv i64 %176, 16
  %178 = add i64 %177, 1
  store i64 %178, i64* %29, align 8
  %179 = call i32 (...) @ecma_stringbuilder_create()
  store i32 %179, i32* %30, align 4
  store i64 0, i64* %31, align 8
  br label %180

180:                                              ; preds = %186, %0
  %181 = load i64, i64* %31, align 8
  %182 = load i64, i64* %29, align 8
  %183 = icmp ult i64 %181, %182
  br i1 %183, label %184, label %189

184:                                              ; preds = %180
  %185 = call i32 @ecma_stringbuilder_append_raw(i32* %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @main.string_data.6, i64 0, i64 0), i32 16)
  br label %186

186:                                              ; preds = %184
  %187 = load i64, i64* %31, align 8
  %188 = add i64 %187, 1
  store i64 %188, i64* %31, align 8
  br label %180

189:                                              ; preds = %180
  %190 = call i32* @ecma_stringbuilder_finalize(i32* %30)
  store i32* %190, i32** %32, align 8
  %191 = load i32, i32* @LIT_MAGIC_STRING__EMPTY, align 4
  %192 = call i32* @ecma_get_magic_string(i32 %191)
  store i32* %192, i32** %33, align 8
  store i64 0, i64* %34, align 8
  br label %193

193:                                              ; preds = %200, %189
  %194 = load i64, i64* %34, align 8
  %195 = load i64, i64* %29, align 8
  %196 = icmp ult i64 %194, %195
  br i1 %196, label %197, label %203

197:                                              ; preds = %193
  %198 = load i32*, i32** %33, align 8
  %199 = call i32* @ecma_append_chars_to_string(i32* %198, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @main.string_data.6, i64 0, i64 0), i32 16, i32 16)
  store i32* %199, i32** %33, align 8
  br label %200

200:                                              ; preds = %197
  %201 = load i64, i64* %34, align 8
  %202 = add i64 %201, 1
  store i64 %202, i64* %34, align 8
  br label %193

203:                                              ; preds = %193
  %204 = load i32*, i32** %32, align 8
  %205 = load i32*, i32** %33, align 8
  %206 = call i32 @ecma_compare_ecma_strings(i32* %204, i32* %205)
  %207 = call i32 @TEST_ASSERT(i32 %206)
  %208 = load i32*, i32** %32, align 8
  %209 = call i32 @ecma_deref_ecma_string(i32* %208)
  %210 = load i32*, i32** %33, align 8
  %211 = call i32 @ecma_deref_ecma_string(i32* %210)
  %212 = call i32* @ecma_new_ecma_string_from_uint32(i32 234)
  store i32* %212, i32** %35, align 8
  %213 = call i32 (...) @ecma_stringbuilder_create()
  store i32 %213, i32* %36, align 4
  %214 = load i32, i32* @LIT_CHAR_1, align 4
  %215 = call i32 @ecma_stringbuilder_append_char(i32* %36, i32 %214)
  %216 = call i32 @ecma_stringbuilder_append_raw(i32* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @main.string_data.7, i64 0, i64 0), i32 3)
  %217 = call i32* @ecma_new_ecma_string_from_utf8(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @main.string_data.7, i64 0, i64 0), i32 3)
  store i32* %217, i32** %37, align 8
  %218 = load i32*, i32** %35, align 8
  %219 = call i32 @ecma_stringbuilder_append(i32* %36, i32* %218)
  %220 = load i32, i32* @LIT_MAGIC_STRING_STRING, align 4
  %221 = call i32 @ecma_stringbuilder_append_magic(i32* %36, i32 %220)
  %222 = call i32* @ecma_stringbuilder_finalize(i32* %36)
  store i32* %222, i32** %38, align 8
  %223 = call i32* @ecma_new_ecma_string_from_utf8(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @main.expected_data.8, i64 0, i64 0), i32 13)
  store i32* %223, i32** %39, align 8
  %224 = load i32*, i32** %38, align 8
  %225 = load i32*, i32** %39, align 8
  %226 = call i32 @ecma_compare_ecma_strings(i32* %224, i32* %225)
  %227 = call i32 @TEST_ASSERT(i32 %226)
  %228 = load i32*, i32** %38, align 8
  %229 = call i32 @ecma_deref_ecma_string(i32* %228)
  %230 = load i32*, i32** %39, align 8
  %231 = call i32 @ecma_deref_ecma_string(i32* %230)
  %232 = load i32*, i32** %37, align 8
  %233 = call i32 @ecma_deref_ecma_string(i32* %232)
  %234 = call i32* @ecma_new_ecma_string_from_uint32(i32 234)
  store i32* %234, i32** %40, align 8
  %235 = load i32*, i32** %40, align 8
  %236 = call i32 @ecma_stringbuilder_create_from(i32* %235)
  store i32 %236, i32* %41, align 4
  %237 = call i32 @ecma_stringbuilder_append_raw(i32* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @main.string_data.9, i64 0, i64 0), i32 3)
  %238 = load i32, i32* @LIT_MAGIC_STRING_STRING, align 4
  %239 = call i32 @ecma_stringbuilder_append_magic(i32* %41, i32 %238)
  %240 = call i32* @ecma_stringbuilder_finalize(i32* %41)
  store i32* %240, i32** %42, align 8
  %241 = call i32* @ecma_new_ecma_string_from_utf8(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @main.expected_data.10, i64 0, i64 0), i32 12)
  store i32* %241, i32** %43, align 8
  %242 = load i32*, i32** %42, align 8
  %243 = load i32*, i32** %43, align 8
  %244 = call i32 @ecma_compare_ecma_strings(i32* %242, i32* %243)
  %245 = call i32 @TEST_ASSERT(i32 %244)
  %246 = load i32*, i32** %42, align 8
  %247 = call i32 @ecma_deref_ecma_string(i32* %246)
  %248 = load i32*, i32** %43, align 8
  %249 = call i32 @ecma_deref_ecma_string(i32* %248)
  %250 = call i32 (...) @ecma_stringbuilder_create()
  store i32 %250, i32* %44, align 4
  %251 = call i32* @ecma_stringbuilder_finalize(i32* %44)
  store i32* %251, i32** %45, align 8
  %252 = load i32, i32* @LIT_MAGIC_STRING__EMPTY, align 4
  %253 = call i32* @ecma_get_magic_string(i32 %252)
  store i32* %253, i32** %46, align 8
  %254 = load i32*, i32** %45, align 8
  %255 = load i32*, i32** %46, align 8
  %256 = call i32 @ecma_compare_ecma_strings(i32* %254, i32* %255)
  %257 = call i32 @TEST_ASSERT(i32 %256)
  %258 = load i32*, i32** %45, align 8
  %259 = call i32 @ecma_deref_ecma_string(i32* %258)
  %260 = load i32*, i32** %46, align 8
  %261 = call i32 @ecma_deref_ecma_string(i32* %260)
  %262 = load i32, i32* @LIT_MAGIC_STRING__EMPTY, align 4
  %263 = call i32* @ecma_get_magic_string(i32 %262)
  store i32* %263, i32** %47, align 8
  %264 = load i32*, i32** %47, align 8
  %265 = call i32 @ecma_stringbuilder_create_from(i32* %264)
  store i32 %265, i32* %48, align 4
  %266 = call i32* @ecma_stringbuilder_finalize(i32* %48)
  store i32* %266, i32** %49, align 8
  %267 = load i32*, i32** %49, align 8
  %268 = load i32*, i32** %47, align 8
  %269 = call i32 @ecma_compare_ecma_strings(i32* %267, i32* %268)
  %270 = call i32 @TEST_ASSERT(i32 %269)
  %271 = load i32*, i32** %49, align 8
  %272 = call i32 @ecma_deref_ecma_string(i32* %271)
  %273 = load i32*, i32** %47, align 8
  %274 = call i32 @ecma_deref_ecma_string(i32* %273)
  %275 = load i32, i32* @LIT_MAGIC_STRING_STRING, align 4
  %276 = call i32* @ecma_get_magic_string(i32 %275)
  store i32* %276, i32** %50, align 8
  %277 = load i32*, i32** %50, align 8
  %278 = call i32 @ecma_stringbuilder_create_from(i32* %277)
  store i32 %278, i32* %51, align 4
  %279 = call i32* @ecma_stringbuilder_finalize(i32* %51)
  store i32* %279, i32** %52, align 8
  %280 = load i32*, i32** %52, align 8
  %281 = load i32*, i32** %50, align 8
  %282 = call i32 @ecma_compare_ecma_strings(i32* %280, i32* %281)
  %283 = call i32 @TEST_ASSERT(i32 %282)
  %284 = load i32*, i32** %52, align 8
  %285 = call i32 @ecma_deref_ecma_string(i32* %284)
  %286 = load i32*, i32** %50, align 8
  %287 = call i32 @ecma_deref_ecma_string(i32* %286)
  %288 = call i32 (...) @ecma_finalize()
  %289 = call i32 (...) @jmem_finalize()
  ret i32 0
}

declare dso_local i32 @TEST_INIT(...) #1

declare dso_local i32 @jmem_init(...) #1

declare dso_local i32 @ecma_init(...) #1

declare dso_local i32 @ecma_stringbuilder_create(...) #1

declare dso_local i32 @ecma_stringbuilder_append_raw(i32*, i8*, i32) #1

declare dso_local i32* @ecma_stringbuilder_finalize(i32*) #1

declare dso_local i32* @ecma_new_ecma_string_from_utf8(i8*, i32) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @ecma_compare_ecma_strings(i32*, i32*) #1

declare dso_local i32 @ecma_deref_ecma_string(i32*) #1

declare dso_local i32 @ecma_stringbuilder_append_magic(i32*, i32) #1

declare dso_local i32* @ecma_get_magic_string(i32) #1

declare dso_local i32 @ecma_stringbuilder_append_char(i32*, i32) #1

declare dso_local i32 @ecma_stringbuilder_append(i32*, i32*) #1

declare dso_local i32* @ecma_new_ecma_string_from_uint32(i32) #1

declare dso_local i32 @ecma_stringbuilder_destroy(i32*) #1

declare dso_local i32* @ecma_append_chars_to_string(i32*, i8*, i32, i32) #1

declare dso_local i32 @ecma_stringbuilder_create_from(i32*) #1

declare dso_local i32 @ecma_finalize(...) #1

declare dso_local i32 @jmem_finalize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
