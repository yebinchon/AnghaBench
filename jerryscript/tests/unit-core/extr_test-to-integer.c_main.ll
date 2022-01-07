; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-to-integer.c_main.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-to-integer.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"I am a neat little error message\00", align 1
@error_value = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %13 = call i32 (...) @TEST_INIT()
  %14 = call i32 (...) @jmem_init()
  %15 = call i32 (...) @ecma_init()
  %16 = call i32 @ecma_make_int32_value(i32 123)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @ecma_op_to_integer(i32 %17, i32* %2)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @ecma_free_value(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @ECMA_IS_VALUE_ERROR(i32 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @TEST_ASSERT(i32 %25)
  %27 = load i32, i32* %2, align 4
  %28 = icmp eq i32 %27, 123
  %29 = zext i1 %28 to i32
  %30 = call i32 @TEST_ASSERT(i32 %29)
  %31 = call i32 @ECMA_ERR_MSG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %32 = call i32 @ecma_raise_type_error(i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @ecma_op_to_integer(i32 %33, i32* %2)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @error_value, align 4
  %36 = call i32 @JERRY_CONTEXT(i32 %35)
  %37 = call i32 @ecma_free_value(i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @ECMA_IS_VALUE_ERROR(i32 %38)
  %40 = call i32 @TEST_ASSERT(i32 %39)
  %41 = call i32 (...) @ecma_make_nan_value()
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @ecma_op_to_integer(i32 %42, i32* %2)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @ecma_free_value(i32 %44)
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @ECMA_IS_VALUE_ERROR(i32 %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @TEST_ASSERT(i32 %50)
  %52 = load i32, i32* %2, align 4
  %53 = icmp eq i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @TEST_ASSERT(i32 %54)
  %56 = call i32 @ecma_make_number_value(double -0.000000e+00)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @ecma_op_to_integer(i32 %57, i32* %2)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @ecma_free_value(i32 %59)
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @ECMA_IS_VALUE_ERROR(i32 %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @TEST_ASSERT(i32 %65)
  %67 = load i32, i32* %2, align 4
  %68 = sitofp i32 %67 to float
  %69 = fdiv float 1.000000e+00, %68
  %70 = call i32 @ecma_number_make_infinity(i32 1)
  %71 = sitofp i32 %70 to float
  %72 = fcmp oeq float %69, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @TEST_ASSERT(i32 %73)
  %75 = call i32 @ecma_make_number_value(double 0.000000e+00)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @ecma_op_to_integer(i32 %76, i32* %2)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @ecma_free_value(i32 %78)
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @ECMA_IS_VALUE_ERROR(i32 %80)
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i32 @TEST_ASSERT(i32 %84)
  %86 = load i32, i32* %2, align 4
  %87 = sitofp i32 %86 to float
  %88 = fdiv float 1.000000e+00, %87
  %89 = call i32 @ecma_number_make_infinity(i32 0)
  %90 = sitofp i32 %89 to float
  %91 = fcmp oeq float %88, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @TEST_ASSERT(i32 %92)
  %94 = call i32 @ecma_number_make_infinity(i32 1)
  %95 = sitofp i32 %94 to double
  %96 = call i32 @ecma_make_number_value(double %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @ecma_op_to_integer(i32 %97, i32* %2)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @ecma_free_value(i32 %99)
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @ECMA_IS_VALUE_ERROR(i32 %101)
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = call i32 @TEST_ASSERT(i32 %105)
  %107 = load i32, i32* %2, align 4
  %108 = call i32 @ecma_number_make_infinity(i32 1)
  %109 = icmp eq i32 %107, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 @TEST_ASSERT(i32 %110)
  %112 = call i32 @ecma_number_make_infinity(i32 0)
  %113 = sitofp i32 %112 to double
  %114 = call i32 @ecma_make_number_value(double %113)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @ecma_op_to_integer(i32 %115, i32* %2)
  store i32 %116, i32* %4, align 4
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @ecma_free_value(i32 %117)
  %119 = load i32, i32* %4, align 4
  %120 = call i32 @ECMA_IS_VALUE_ERROR(i32 %119)
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  %124 = call i32 @TEST_ASSERT(i32 %123)
  %125 = load i32, i32* %2, align 4
  %126 = call i32 @ecma_number_make_infinity(i32 0)
  %127 = icmp eq i32 %125, %126
  %128 = zext i1 %127 to i32
  %129 = call i32 @TEST_ASSERT(i32 %128)
  %130 = call i32 @ecma_make_number_value(double 0x4008020C40000000)
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @ecma_op_to_integer(i32 %131, i32* %2)
  store i32 %132, i32* %4, align 4
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @ecma_free_value(i32 %133)
  %135 = load i32, i32* %4, align 4
  %136 = call i32 @ECMA_IS_VALUE_ERROR(i32 %135)
  %137 = icmp ne i32 %136, 0
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  %140 = call i32 @TEST_ASSERT(i32 %139)
  %141 = load i32, i32* %2, align 4
  %142 = icmp eq i32 %141, 3
  %143 = zext i1 %142 to i32
  %144 = call i32 @TEST_ASSERT(i32 %143)
  %145 = call i32 @ecma_make_number_value(double -2.659730e+01)
  store i32 %145, i32* %12, align 4
  %146 = load i32, i32* %12, align 4
  %147 = call i32 @ecma_op_to_integer(i32 %146, i32* %2)
  store i32 %147, i32* %4, align 4
  %148 = load i32, i32* %12, align 4
  %149 = call i32 @ecma_free_value(i32 %148)
  %150 = load i32, i32* %4, align 4
  %151 = call i32 @ECMA_IS_VALUE_ERROR(i32 %150)
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  %154 = zext i1 %153 to i32
  %155 = call i32 @TEST_ASSERT(i32 %154)
  %156 = load i32, i32* %2, align 4
  %157 = icmp eq i32 %156, -26
  %158 = zext i1 %157 to i32
  %159 = call i32 @TEST_ASSERT(i32 %158)
  %160 = call i32 (...) @ecma_finalize()
  %161 = call i32 (...) @jmem_finalize()
  ret i32 0
}

declare dso_local i32 @TEST_INIT(...) #1

declare dso_local i32 @jmem_init(...) #1

declare dso_local i32 @ecma_init(...) #1

declare dso_local i32 @ecma_make_int32_value(i32) #1

declare dso_local i32 @ecma_op_to_integer(i32, i32*) #1

declare dso_local i32 @ecma_free_value(i32) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @ECMA_IS_VALUE_ERROR(i32) #1

declare dso_local i32 @ecma_raise_type_error(i32) #1

declare dso_local i32 @ECMA_ERR_MSG(i8*) #1

declare dso_local i32 @JERRY_CONTEXT(i32) #1

declare dso_local i32 @ecma_make_nan_value(...) #1

declare dso_local i32 @ecma_make_number_value(double) #1

declare dso_local i32 @ecma_number_make_infinity(i32) #1

declare dso_local i32 @ecma_finalize(...) #1

declare dso_local i32 @jmem_finalize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
