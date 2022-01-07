; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-poolman.c_main.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-poolman.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_iters = common dso_local global i64 0, align 8
@TEST_MAX_SUB_ITERS = common dso_local global i64 0, align 8
@TEST_CHUNK_SIZE = common dso_local global i64 0, align 8
@ptrs = common dso_local global i64** null, align 8
@data = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %7 = call i32 (...) @TEST_INIT()
  %8 = call i32 (...) @jmem_init()
  store i64 0, i64* %2, align 8
  br label %9

9:                                                ; preds = %111, %0
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @test_iters, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %114

13:                                               ; preds = %9
  %14 = call i32 (...) @rand()
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* @TEST_MAX_SUB_ITERS, align 8
  %17 = urem i64 %15, %16
  %18 = add i64 %17, 1
  store i64 %18, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %19

19:                                               ; preds = %65, %13
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* %3, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %68

23:                                               ; preds = %19
  %24 = load i64, i64* @TEST_CHUNK_SIZE, align 8
  %25 = call i64 @jmem_pools_alloc(i64 %24)
  %26 = inttoptr i64 %25 to i64*
  %27 = load i64**, i64*** @ptrs, align 8
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds i64*, i64** %27, i64 %28
  store i64* %26, i64** %29, align 8
  %30 = load i64**, i64*** @ptrs, align 8
  %31 = load i64, i64* %4, align 8
  %32 = getelementptr inbounds i64*, i64** %30, i64 %31
  %33 = load i64*, i64** %32, align 8
  %34 = icmp ne i64* %33, null
  br i1 %34, label %35, label %64

35:                                               ; preds = %23
  store i64 0, i64* %5, align 8
  br label %36

36:                                               ; preds = %50, %35
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @TEST_CHUNK_SIZE, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = call i32 (...) @rand()
  %42 = srem i32 %41, 256
  %43 = sext i32 %42 to i64
  %44 = load i64**, i64*** @ptrs, align 8
  %45 = load i64, i64* %4, align 8
  %46 = getelementptr inbounds i64*, i64** %44, i64 %45
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  store i64 %43, i64* %49, align 8
  br label %50

50:                                               ; preds = %40
  %51 = load i64, i64* %5, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %5, align 8
  br label %36

53:                                               ; preds = %36
  %54 = load i32*, i32** @data, align 8
  %55 = load i64, i64* %4, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i64**, i64*** @ptrs, align 8
  %59 = load i64, i64* %4, align 8
  %60 = getelementptr inbounds i64*, i64** %58, i64 %59
  %61 = load i64*, i64** %60, align 8
  %62 = load i64, i64* @TEST_CHUNK_SIZE, align 8
  %63 = call i32 @memcpy(i32 %57, i64* %61, i64 %62)
  br label %64

64:                                               ; preds = %53, %23
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %4, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %4, align 8
  br label %19

68:                                               ; preds = %19
  store i64 0, i64* %6, align 8
  br label %69

69:                                               ; preds = %107, %68
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* %3, align 8
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %73, label %110

73:                                               ; preds = %69
  %74 = call i32 (...) @rand()
  %75 = srem i32 %74, 256
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = call i32 (...) @jmem_pools_collect_empty()
  br label %79

79:                                               ; preds = %77, %73
  %80 = load i64**, i64*** @ptrs, align 8
  %81 = load i64, i64* %6, align 8
  %82 = getelementptr inbounds i64*, i64** %80, i64 %81
  %83 = load i64*, i64** %82, align 8
  %84 = icmp ne i64* %83, null
  br i1 %84, label %85, label %106

85:                                               ; preds = %79
  %86 = load i32*, i32** @data, align 8
  %87 = load i64, i64* %6, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i64**, i64*** @ptrs, align 8
  %91 = load i64, i64* %6, align 8
  %92 = getelementptr inbounds i64*, i64** %90, i64 %91
  %93 = load i64*, i64** %92, align 8
  %94 = load i64, i64* @TEST_CHUNK_SIZE, align 8
  %95 = call i32 @memcmp(i32 %89, i64* %93, i64 %94)
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = call i32 @TEST_ASSERT(i32 %98)
  %100 = load i64**, i64*** @ptrs, align 8
  %101 = load i64, i64* %6, align 8
  %102 = getelementptr inbounds i64*, i64** %100, i64 %101
  %103 = load i64*, i64** %102, align 8
  %104 = load i64, i64* @TEST_CHUNK_SIZE, align 8
  %105 = call i32 @jmem_pools_free(i64* %103, i64 %104)
  br label %106

106:                                              ; preds = %85, %79
  br label %107

107:                                              ; preds = %106
  %108 = load i64, i64* %6, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %6, align 8
  br label %69

110:                                              ; preds = %69
  br label %111

111:                                              ; preds = %110
  %112 = load i64, i64* %2, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* %2, align 8
  br label %9

114:                                              ; preds = %9
  %115 = call i32 (...) @jmem_finalize()
  ret i32 0
}

declare dso_local i32 @TEST_INIT(...) #1

declare dso_local i32 @jmem_init(...) #1

declare dso_local i32 @rand(...) #1

declare dso_local i64 @jmem_pools_alloc(i64) #1

declare dso_local i32 @memcpy(i32, i64*, i64) #1

declare dso_local i32 @jmem_pools_collect_empty(...) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @memcmp(i32, i64*, i64) #1

declare dso_local i32 @jmem_pools_free(i64*, i64) #1

declare dso_local i32 @jmem_finalize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
