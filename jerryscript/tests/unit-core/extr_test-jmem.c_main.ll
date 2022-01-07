; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-jmem.c_main.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-jmem.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BASIC_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %13 = call i32 (...) @TEST_INIT()
  %14 = call i32 (...) @jmem_init()
  %15 = call i32 (...) @ecma_init()
  %16 = load i64, i64* @BASIC_SIZE, align 8
  %17 = call i64 @jmem_heap_alloc_block(i64 %16)
  %18 = inttoptr i64 %17 to i64*
  store i64* %18, i64** %2, align 8
  %19 = load i64, i64* @BASIC_SIZE, align 8
  %20 = call i64 @jmem_heap_alloc_block(i64 %19)
  %21 = inttoptr i64 %20 to i64*
  store i64* %21, i64** %3, align 8
  %22 = load i64, i64* @BASIC_SIZE, align 8
  %23 = call i64 @jmem_heap_alloc_block(i64 %22)
  %24 = inttoptr i64 %23 to i64*
  store i64* %24, i64** %4, align 8
  store i64 0, i64* %5, align 8
  br label %25

25:                                               ; preds = %34, %0
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @BASIC_SIZE, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load i64, i64* %5, align 8
  %31 = load i64*, i64** %3, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  store i64 %30, i64* %33, align 8
  br label %34

34:                                               ; preds = %29
  %35 = load i64, i64* %5, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %5, align 8
  br label %25

37:                                               ; preds = %25
  %38 = load i64*, i64** %3, align 8
  %39 = load i64, i64* @BASIC_SIZE, align 8
  %40 = load i64, i64* @BASIC_SIZE, align 8
  %41 = mul i64 %40, 2
  %42 = call i64* @jmem_heap_realloc_block(i64* %38, i64 %39, i64 %41)
  store i64* %42, i64** %3, align 8
  store i64 0, i64* %6, align 8
  br label %43

43:                                               ; preds = %56, %37
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @BASIC_SIZE, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = load i64*, i64** %3, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @TEST_ASSERT(i32 %54)
  br label %56

56:                                               ; preds = %47
  %57 = load i64, i64* %6, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %6, align 8
  br label %43

59:                                               ; preds = %43
  %60 = load i64, i64* @BASIC_SIZE, align 8
  store i64 %60, i64* %7, align 8
  br label %61

61:                                               ; preds = %71, %59
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* @BASIC_SIZE, align 8
  %64 = mul i64 %63, 2
  %65 = icmp ult i64 %62, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load i64, i64* %7, align 8
  %68 = load i64*, i64** %3, align 8
  %69 = load i64, i64* %7, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  store i64 %67, i64* %70, align 8
  br label %71

71:                                               ; preds = %66
  %72 = load i64, i64* %7, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %7, align 8
  br label %61

74:                                               ; preds = %61
  %75 = load i64, i64* @BASIC_SIZE, align 8
  %76 = mul i64 %75, 2
  %77 = call i64 @jmem_heap_alloc_block(i64 %76)
  %78 = inttoptr i64 %77 to i64*
  store i64* %78, i64** %8, align 8
  %79 = load i64*, i64** %4, align 8
  %80 = load i64, i64* @BASIC_SIZE, align 8
  %81 = call i32 @jmem_heap_free_block(i64* %79, i64 %80)
  %82 = load i64*, i64** %3, align 8
  %83 = load i64, i64* @BASIC_SIZE, align 8
  %84 = mul i64 %83, 2
  %85 = load i64, i64* @BASIC_SIZE, align 8
  %86 = mul i64 %85, 3
  %87 = call i64* @jmem_heap_realloc_block(i64* %82, i64 %84, i64 %86)
  store i64* %87, i64** %3, align 8
  store i64 0, i64* %9, align 8
  br label %88

88:                                               ; preds = %102, %74
  %89 = load i64, i64* %9, align 8
  %90 = load i64, i64* @BASIC_SIZE, align 8
  %91 = mul i64 %90, 2
  %92 = icmp ult i64 %89, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %88
  %94 = load i64*, i64** %3, align 8
  %95 = load i64, i64* %9, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %9, align 8
  %99 = icmp eq i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @TEST_ASSERT(i32 %100)
  br label %102

102:                                              ; preds = %93
  %103 = load i64, i64* %9, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %9, align 8
  br label %88

105:                                              ; preds = %88
  %106 = load i64*, i64** %3, align 8
  %107 = load i64, i64* @BASIC_SIZE, align 8
  %108 = mul i64 %107, 3
  %109 = load i64, i64* @BASIC_SIZE, align 8
  %110 = call i64* @jmem_heap_realloc_block(i64* %106, i64 %108, i64 %109)
  store i64* %110, i64** %3, align 8
  store i64 0, i64* %10, align 8
  br label %111

111:                                              ; preds = %124, %105
  %112 = load i64, i64* %10, align 8
  %113 = load i64, i64* @BASIC_SIZE, align 8
  %114 = icmp ult i64 %112, %113
  br i1 %114, label %115, label %127

115:                                              ; preds = %111
  %116 = load i64*, i64** %3, align 8
  %117 = load i64, i64* %10, align 8
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* %10, align 8
  %121 = icmp eq i64 %119, %120
  %122 = zext i1 %121 to i32
  %123 = call i32 @TEST_ASSERT(i32 %122)
  br label %124

124:                                              ; preds = %115
  %125 = load i64, i64* %10, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %10, align 8
  br label %111

127:                                              ; preds = %111
  store i64 0, i64* %11, align 8
  br label %128

128:                                              ; preds = %137, %127
  %129 = load i64, i64* %11, align 8
  %130 = load i64, i64* @BASIC_SIZE, align 8
  %131 = icmp ult i64 %129, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %128
  %133 = load i64, i64* %11, align 8
  %134 = load i64*, i64** %2, align 8
  %135 = load i64, i64* %11, align 8
  %136 = getelementptr inbounds i64, i64* %134, i64 %135
  store i64 %133, i64* %136, align 8
  br label %137

137:                                              ; preds = %132
  %138 = load i64, i64* %11, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %11, align 8
  br label %128

140:                                              ; preds = %128
  %141 = load i64*, i64** %2, align 8
  %142 = load i64, i64* @BASIC_SIZE, align 8
  %143 = load i64, i64* @BASIC_SIZE, align 8
  %144 = mul i64 %143, 2
  %145 = call i64* @jmem_heap_realloc_block(i64* %141, i64 %142, i64 %144)
  store i64* %145, i64** %2, align 8
  store i64 0, i64* %12, align 8
  br label %146

146:                                              ; preds = %159, %140
  %147 = load i64, i64* %12, align 8
  %148 = load i64, i64* @BASIC_SIZE, align 8
  %149 = icmp ult i64 %147, %148
  br i1 %149, label %150, label %162

150:                                              ; preds = %146
  %151 = load i64*, i64** %2, align 8
  %152 = load i64, i64* %12, align 8
  %153 = getelementptr inbounds i64, i64* %151, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* %12, align 8
  %156 = icmp eq i64 %154, %155
  %157 = zext i1 %156 to i32
  %158 = call i32 @TEST_ASSERT(i32 %157)
  br label %159

159:                                              ; preds = %150
  %160 = load i64, i64* %12, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %12, align 8
  br label %146

162:                                              ; preds = %146
  %163 = load i64*, i64** %2, align 8
  %164 = load i64, i64* @BASIC_SIZE, align 8
  %165 = mul i64 %164, 2
  %166 = call i32 @jmem_heap_free_block(i64* %163, i64 %165)
  %167 = load i64*, i64** %3, align 8
  %168 = load i64, i64* @BASIC_SIZE, align 8
  %169 = call i32 @jmem_heap_free_block(i64* %167, i64 %168)
  %170 = load i64*, i64** %8, align 8
  %171 = load i64, i64* @BASIC_SIZE, align 8
  %172 = mul i64 %171, 2
  %173 = call i32 @jmem_heap_free_block(i64* %170, i64 %172)
  %174 = call i32 (...) @ecma_finalize()
  %175 = call i32 (...) @jmem_finalize()
  ret i32 0
}

declare dso_local i32 @TEST_INIT(...) #1

declare dso_local i32 @jmem_init(...) #1

declare dso_local i32 @ecma_init(...) #1

declare dso_local i64 @jmem_heap_alloc_block(i64) #1

declare dso_local i64* @jmem_heap_realloc_block(i64*, i64, i64) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @jmem_heap_free_block(i64*, i64) #1

declare dso_local i32 @ecma_finalize(...) #1

declare dso_local i32 @jmem_finalize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
