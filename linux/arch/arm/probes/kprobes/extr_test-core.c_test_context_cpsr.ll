; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/probes/kprobes/extr_test-core.c_test_context_cpsr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/probes/kprobes/extr_test-core.c_test_context_cpsr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@probe_should_run = common dso_local global i32 0, align 4
@test_case_is_thumb = common dso_local global i32 0, align 4
@current_instruction = common dso_local global i32 0, align 4
@is_last_scenario = common dso_local global i32 0, align 4
@kprobe_test_flags = common dso_local global i32 0, align 4
@TEST_FLAG_NO_ITBLOCK = common dso_local global i32 0, align 4
@kprobe_test_cc_position = common dso_local global i32 0, align 4
@TEST_FLAG_FULL_ITBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @test_context_cpsr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @test_context_cpsr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* @probe_should_run, align 4
  %9 = load i32, i32* %2, align 4
  %10 = and i32 %9, 15
  %11 = shl i32 %10, 28
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %3, align 8
  %13 = load i32, i32* %2, align 4
  %14 = and i32 %13, 15
  %15 = shl i32 %14, 16
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* %3, align 8
  %18 = or i64 %17, %16
  store i64 %18, i64* %3, align 8
  %19 = load i32, i32* %2, align 4
  %20 = and i32 %19, 1
  %21 = shl i32 %20, 27
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* %3, align 8
  %24 = or i64 %23, %22
  store i64 %24, i64* %3, align 8
  %25 = load i32, i32* @test_case_is_thumb, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @current_instruction, align 4
  %29 = ashr i32 %28, 28
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %3, align 8
  %33 = call i64 @test_check_cc(i64 %31, i64 %32)
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i32
  store i32 %35, i32* @probe_should_run, align 4
  %36 = load i32, i32* %2, align 4
  %37 = icmp eq i32 %36, 15
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  store i32 1, i32* @is_last_scenario, align 4
  br label %39

39:                                               ; preds = %38, %27
  br label %137

40:                                               ; preds = %1
  %41 = load i32, i32* @kprobe_test_flags, align 4
  %42 = load i32, i32* @TEST_FLAG_NO_ITBLOCK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %40
  %46 = load i32, i32* @kprobe_test_cc_position, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load i32, i32* @current_instruction, align 4
  %50 = load i32, i32* @kprobe_test_cc_position, align 4
  %51 = ashr i32 %49, %50
  %52 = and i32 %51, 15
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %3, align 8
  %56 = call i64 @test_check_cc(i64 %54, i64 %55)
  %57 = icmp ne i64 %56, 0
  %58 = zext i1 %57 to i32
  store i32 %58, i32* @probe_should_run, align 4
  br label %59

59:                                               ; preds = %48, %45
  %60 = load i32, i32* %2, align 4
  %61 = icmp eq i32 %60, 15
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 1, i32* @is_last_scenario, align 4
  br label %63

63:                                               ; preds = %62, %59
  br label %136

64:                                               ; preds = %40
  %65 = load i32, i32* @kprobe_test_flags, align 4
  %66 = load i32, i32* @TEST_FLAG_FULL_ITBLOCK, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %128

69:                                               ; preds = %64
  %70 = load i32, i32* %2, align 4
  %71 = ashr i32 %70, 4
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = urem i32 %72, 7
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %6, align 4
  %75 = udiv i32 %74, 7
  %76 = add i32 %75, 2
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ugt i32 %77, 31
  br i1 %78, label %79, label %85

79:                                               ; preds = %69
  store i32 7, i32* %7, align 4
  store i32 4, i32* %8, align 4
  %80 = load i32, i32* %2, align 4
  %81 = and i32 %80, 15
  %82 = icmp eq i32 %81, 15
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i32 1, i32* @is_last_scenario, align 4
  br label %84

84:                                               ; preds = %83, %79
  br label %85

85:                                               ; preds = %84, %69
  %86 = load i32, i32* %7, align 4
  %87 = shl i32 %86, 13
  %88 = zext i32 %87 to i64
  %89 = load i64, i64* %3, align 8
  %90 = or i64 %89, %88
  store i64 %90, i64* %3, align 8
  %91 = load i32, i32* %8, align 4
  %92 = and i32 %91, 1
  %93 = shl i32 %92, 12
  %94 = zext i32 %93 to i64
  %95 = load i64, i64* %3, align 8
  %96 = or i64 %95, %94
  store i64 %96, i64* %3, align 8
  %97 = load i32, i32* %8, align 4
  %98 = and i32 %97, 2
  %99 = shl i32 %98, 10
  %100 = zext i32 %99 to i64
  %101 = load i64, i64* %3, align 8
  %102 = or i64 %101, %100
  store i64 %102, i64* %3, align 8
  %103 = load i32, i32* %8, align 4
  %104 = and i32 %103, 4
  %105 = shl i32 %104, 8
  %106 = zext i32 %105 to i64
  %107 = load i64, i64* %3, align 8
  %108 = or i64 %107, %106
  store i64 %108, i64* %3, align 8
  %109 = load i32, i32* %8, align 4
  %110 = and i32 %109, 8
  %111 = shl i32 %110, 23
  %112 = zext i32 %111 to i64
  %113 = load i64, i64* %3, align 8
  %114 = or i64 %113, %112
  store i64 %114, i64* %3, align 8
  %115 = load i32, i32* %8, align 4
  %116 = and i32 %115, 16
  %117 = shl i32 %116, 21
  %118 = zext i32 %117 to i64
  %119 = load i64, i64* %3, align 8
  %120 = or i64 %119, %118
  store i64 %120, i64* %3, align 8
  %121 = load i64, i64* %3, align 8
  %122 = lshr i64 %121, 12
  %123 = and i64 %122, 15
  %124 = load i64, i64* %3, align 8
  %125 = call i64 @test_check_cc(i64 %123, i64 %124)
  %126 = icmp ne i64 %125, 0
  %127 = zext i1 %126 to i32
  store i32 %127, i32* @probe_should_run, align 4
  br label %135

128:                                              ; preds = %64
  %129 = load i32, i32* %2, align 4
  switch i32 %129, label %134 [
    i32 16, label %130
    i32 17, label %131
    i32 18, label %132
    i32 19, label %133
  ]

130:                                              ; preds = %128
  store i64 2048, i64* %3, align 8
  store i32 0, i32* @probe_should_run, align 4
  br label %134

131:                                              ; preds = %128
  store i64 4026562560, i64* %3, align 8
  store i32 0, i32* @probe_should_run, align 4
  br label %134

132:                                              ; preds = %128
  store i64 38912, i64* %3, align 8
  br label %134

133:                                              ; preds = %128
  store i64 4026542080, i64* %3, align 8
  store i32 1, i32* @is_last_scenario, align 4
  br label %134

134:                                              ; preds = %128, %133, %132, %131, %130
  br label %135

135:                                              ; preds = %134, %85
  br label %136

136:                                              ; preds = %135, %63
  br label %137

137:                                              ; preds = %136, %39
  %138 = load i64, i64* %3, align 8
  ret i64 %138
}

declare dso_local i64 @test_check_cc(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
