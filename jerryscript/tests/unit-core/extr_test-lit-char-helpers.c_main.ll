; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-lit-char-helpers.c_main.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-lit-char-helpers.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main._1_byte_long1 = private unnamed_addr constant [7 x i8] c"\\u007F\00", align 1
@__const.main._1_byte_long2 = private unnamed_addr constant [7 x i8] c"\\u0000\00", align 1
@__const.main._1_byte_long3 = private unnamed_addr constant [7 x i8] c"\\u0065\00", align 1
@__const.main._2_byte_long1 = private unnamed_addr constant [7 x i8] c"\\u008F\00", align 1
@__const.main._2_byte_long2 = private unnamed_addr constant [7 x i8] c"\\u00FF\00", align 1
@__const.main._2_byte_long3 = private unnamed_addr constant [7 x i8] c"\\u07FF\00", align 1
@__const.main._3_byte_long1 = private unnamed_addr constant [7 x i8] c"\\u08FF\00", align 1
@__const.main._3_byte_long2 = private unnamed_addr constant [7 x i8] c"\\u0FFF\00", align 1
@__const.main._3_byte_long3 = private unnamed_addr constant [7 x i8] c"\\uFFFF\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [7 x i8], align 1
  %3 = alloca [7 x i8], align 1
  %4 = alloca [7 x i8], align 1
  %5 = alloca [7 x i8], align 1
  %6 = alloca [7 x i8], align 1
  %7 = alloca [7 x i8], align 1
  %8 = alloca [7 x i8], align 1
  %9 = alloca [7 x i8], align 1
  %10 = alloca [7 x i8], align 1
  %11 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %12 = call i32 (...) @TEST_INIT()
  %13 = call i32 (...) @jmem_init()
  %14 = call i32 (...) @ecma_init()
  %15 = bitcast [7 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.main._1_byte_long1, i32 0, i32 0), i64 7, i1 false)
  %16 = bitcast [7 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.main._1_byte_long2, i32 0, i32 0), i64 7, i1 false)
  %17 = bitcast [7 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.main._1_byte_long3, i32 0, i32 0), i64 7, i1 false)
  %18 = bitcast [7 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.main._2_byte_long1, i32 0, i32 0), i64 7, i1 false)
  %19 = bitcast [7 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %19, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.main._2_byte_long2, i32 0, i32 0), i64 7, i1 false)
  %20 = bitcast [7 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %20, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.main._2_byte_long3, i32 0, i32 0), i64 7, i1 false)
  %21 = bitcast [7 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %21, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.main._3_byte_long1, i32 0, i32 0), i64 7, i1 false)
  %22 = bitcast [7 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %22, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.main._3_byte_long2, i32 0, i32 0), i64 7, i1 false)
  %23 = bitcast [7 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %23, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.main._3_byte_long3, i32 0, i32 0), i64 7, i1 false)
  %24 = getelementptr inbounds [7 x i8], [7 x i8]* %2, i64 0, i64 0
  %25 = getelementptr inbounds i8, i8* %24, i64 2
  %26 = call i32 @lexer_hex_to_character(i32 0, i8* %25, i32 4)
  %27 = call i64 @lit_char_get_utf8_length(i32 %26)
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %11, align 8
  %29 = icmp eq i64 %28, 1
  %30 = zext i1 %29 to i32
  %31 = call i32 @TEST_ASSERT(i32 %30)
  %32 = getelementptr inbounds [7 x i8], [7 x i8]* %3, i64 0, i64 0
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  %34 = call i32 @lexer_hex_to_character(i32 0, i8* %33, i32 4)
  %35 = call i64 @lit_char_get_utf8_length(i32 %34)
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %11, align 8
  %37 = icmp eq i64 %36, 1
  %38 = zext i1 %37 to i32
  %39 = call i32 @TEST_ASSERT(i32 %38)
  %40 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 0, i64 0
  %41 = getelementptr inbounds i8, i8* %40, i64 2
  %42 = call i32 @lexer_hex_to_character(i32 0, i8* %41, i32 4)
  %43 = call i64 @lit_char_get_utf8_length(i32 %42)
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* %11, align 8
  %45 = icmp eq i64 %44, 1
  %46 = zext i1 %45 to i32
  %47 = call i32 @TEST_ASSERT(i32 %46)
  %48 = getelementptr inbounds [7 x i8], [7 x i8]* %5, i64 0, i64 0
  %49 = getelementptr inbounds i8, i8* %48, i64 2
  %50 = call i32 @lexer_hex_to_character(i32 0, i8* %49, i32 4)
  %51 = call i64 @lit_char_get_utf8_length(i32 %50)
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* %11, align 8
  %53 = icmp eq i64 %52, 2
  %54 = zext i1 %53 to i32
  %55 = call i32 @TEST_ASSERT(i32 %54)
  %56 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0
  %57 = getelementptr inbounds i8, i8* %56, i64 2
  %58 = call i32 @lexer_hex_to_character(i32 0, i8* %57, i32 4)
  %59 = call i64 @lit_char_get_utf8_length(i32 %58)
  store i64 %59, i64* %11, align 8
  %60 = load i64, i64* %11, align 8
  %61 = icmp eq i64 %60, 2
  %62 = zext i1 %61 to i32
  %63 = call i32 @TEST_ASSERT(i32 %62)
  %64 = getelementptr inbounds [7 x i8], [7 x i8]* %7, i64 0, i64 0
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  %66 = call i32 @lexer_hex_to_character(i32 0, i8* %65, i32 4)
  %67 = call i64 @lit_char_get_utf8_length(i32 %66)
  store i64 %67, i64* %11, align 8
  %68 = load i64, i64* %11, align 8
  %69 = icmp eq i64 %68, 2
  %70 = zext i1 %69 to i32
  %71 = call i32 @TEST_ASSERT(i32 %70)
  %72 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 0
  %73 = getelementptr inbounds i8, i8* %72, i64 2
  %74 = call i32 @lexer_hex_to_character(i32 0, i8* %73, i32 4)
  %75 = call i64 @lit_char_get_utf8_length(i32 %74)
  store i64 %75, i64* %11, align 8
  %76 = load i64, i64* %11, align 8
  %77 = icmp ne i64 %76, 2
  %78 = zext i1 %77 to i32
  %79 = call i32 @TEST_ASSERT(i32 %78)
  %80 = getelementptr inbounds [7 x i8], [7 x i8]* %9, i64 0, i64 0
  %81 = getelementptr inbounds i8, i8* %80, i64 2
  %82 = call i32 @lexer_hex_to_character(i32 0, i8* %81, i32 4)
  %83 = call i64 @lit_char_get_utf8_length(i32 %82)
  store i64 %83, i64* %11, align 8
  %84 = load i64, i64* %11, align 8
  %85 = icmp eq i64 %84, 3
  %86 = zext i1 %85 to i32
  %87 = call i32 @TEST_ASSERT(i32 %86)
  %88 = getelementptr inbounds [7 x i8], [7 x i8]* %10, i64 0, i64 0
  %89 = getelementptr inbounds i8, i8* %88, i64 2
  %90 = call i32 @lexer_hex_to_character(i32 0, i8* %89, i32 4)
  %91 = call i64 @lit_char_get_utf8_length(i32 %90)
  store i64 %91, i64* %11, align 8
  %92 = load i64, i64* %11, align 8
  %93 = icmp eq i64 %92, 3
  %94 = zext i1 %93 to i32
  %95 = call i32 @TEST_ASSERT(i32 %94)
  %96 = call i32 (...) @ecma_finalize()
  %97 = call i32 (...) @jmem_finalize()
  ret i32 0
}

declare dso_local i32 @TEST_INIT(...) #1

declare dso_local i32 @jmem_init(...) #1

declare dso_local i32 @ecma_init(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @lit_char_get_utf8_length(i32) #1

declare dso_local i32 @lexer_hex_to_character(i32, i8*, i32) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @ecma_finalize(...) #1

declare dso_local i32 @jmem_finalize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
