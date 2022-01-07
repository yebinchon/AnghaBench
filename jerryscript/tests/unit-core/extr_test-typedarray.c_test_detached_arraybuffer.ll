; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-typedarray.c_test_detached_arraybuffer.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-typedarray.c_test_detached_arraybuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_detached_arraybuffer.types = internal global [9 x i32] [i32 129, i32 128, i32 132, i32 131, i32 134, i32 130, i32 133, i32 136, i32 135], align 16
@JERRY_ERROR_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_detached_arraybuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_detached_arraybuffer() #0 {
  %1 = alloca [1 x i32], align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [1 x i32], align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i64 1, i64* %2, align 8
  %15 = getelementptr inbounds [1 x i32], [1 x i32]* %1, i64 0, i64 0
  %16 = call i32 @jerry_create_arraybuffer_external(i64 1, i32* %15, i32* null)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @jerry_value_is_error(i32 %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @TEST_ASSERT(i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @jerry_value_is_arraybuffer(i32 %23)
  %25 = call i32 @TEST_ASSERT(i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = call i64 @jerry_get_arraybuffer_byte_length(i32 %26)
  %28 = icmp eq i64 %27, 1
  %29 = zext i1 %28 to i32
  %30 = call i32 @TEST_ASSERT(i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @jerry_is_arraybuffer_detachable(i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @jerry_value_is_error(i32 %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @TEST_ASSERT(i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @jerry_get_boolean_value(i32 %39)
  %41 = call i32 @TEST_ASSERT(i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @jerry_release_value(i32 %42)
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @jerry_detach_arraybuffer(i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @jerry_value_is_error(i32 %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @TEST_ASSERT(i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @jerry_release_value(i32 %52)
  store i64 0, i64* %6, align 8
  br label %54

54:                                               ; preds = %74, %0
  %55 = load i64, i64* %6, align 8
  %56 = icmp ult i64 %55, 9
  br i1 %56, label %57, label %77

57:                                               ; preds = %54
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds [9 x i32], [9 x i32]* @test_detached_arraybuffer.types, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @jerry_create_typedarray_for_arraybuffer_sz(i32 %60, i32 %61, i32 0, i32 4)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @jerry_value_is_error(i32 %63)
  %65 = call i32 @TEST_ASSERT(i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = call i64 @jerry_get_error_type(i32 %66)
  %68 = load i64, i64* @JERRY_ERROR_TYPE, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @TEST_ASSERT(i32 %70)
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @jerry_release_value(i32 %72)
  br label %74

74:                                               ; preds = %57
  %75 = load i64, i64* %6, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %6, align 8
  br label %54

77:                                               ; preds = %54
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @jerry_release_value(i32 %78)
  store i64 1, i64* %9, align 8
  %80 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %81 = call i32 @jerry_create_arraybuffer_external(i64 1, i32* %80, i32* null)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @jerry_value_is_error(i32 %82)
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = call i32 @TEST_ASSERT(i32 %86)
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @jerry_value_is_arraybuffer(i32 %88)
  %90 = call i32 @TEST_ASSERT(i32 %89)
  %91 = load i32, i32* %10, align 4
  %92 = call i64 @jerry_get_arraybuffer_byte_length(i32 %91)
  %93 = icmp eq i64 %92, 1
  %94 = zext i1 %93 to i32
  %95 = call i32 @TEST_ASSERT(i32 %94)
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @jerry_is_arraybuffer_detachable(i32 %96)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @jerry_value_is_error(i32 %98)
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = call i32 @TEST_ASSERT(i32 %102)
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @jerry_get_boolean_value(i32 %104)
  %106 = call i32 @TEST_ASSERT(i32 %105)
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @jerry_release_value(i32 %107)
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @jerry_detach_arraybuffer(i32 %109)
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @jerry_value_is_error(i32 %111)
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = call i32 @TEST_ASSERT(i32 %115)
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @jerry_release_value(i32 %117)
  store i64 0, i64* %13, align 8
  br label %119

119:                                              ; preds = %139, %77
  %120 = load i64, i64* %13, align 8
  %121 = icmp ult i64 %120, 9
  br i1 %121, label %122, label %142

122:                                              ; preds = %119
  %123 = load i64, i64* %13, align 8
  %124 = getelementptr inbounds [9 x i32], [9 x i32]* @test_detached_arraybuffer.types, i64 0, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @jerry_create_typedarray_for_arraybuffer(i32 %125, i32 %126)
  store i32 %127, i32* %14, align 4
  %128 = load i32, i32* %14, align 4
  %129 = call i32 @jerry_value_is_error(i32 %128)
  %130 = call i32 @TEST_ASSERT(i32 %129)
  %131 = load i32, i32* %14, align 4
  %132 = call i64 @jerry_get_error_type(i32 %131)
  %133 = load i64, i64* @JERRY_ERROR_TYPE, align 8
  %134 = icmp eq i64 %132, %133
  %135 = zext i1 %134 to i32
  %136 = call i32 @TEST_ASSERT(i32 %135)
  %137 = load i32, i32* %14, align 4
  %138 = call i32 @jerry_release_value(i32 %137)
  br label %139

139:                                              ; preds = %122
  %140 = load i64, i64* %13, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %13, align 8
  br label %119

142:                                              ; preds = %119
  %143 = load i32, i32* %10, align 4
  %144 = call i32 @jerry_release_value(i32 %143)
  ret void
}

declare dso_local i32 @jerry_create_arraybuffer_external(i64, i32*, i32*) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @jerry_value_is_error(i32) #1

declare dso_local i32 @jerry_value_is_arraybuffer(i32) #1

declare dso_local i64 @jerry_get_arraybuffer_byte_length(i32) #1

declare dso_local i32 @jerry_is_arraybuffer_detachable(i32) #1

declare dso_local i32 @jerry_get_boolean_value(i32) #1

declare dso_local i32 @jerry_release_value(i32) #1

declare dso_local i32 @jerry_detach_arraybuffer(i32) #1

declare dso_local i32 @jerry_create_typedarray_for_arraybuffer_sz(i32, i32, i32, i32) #1

declare dso_local i64 @jerry_get_error_type(i32) #1

declare dso_local i32 @jerry_create_typedarray_for_arraybuffer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
