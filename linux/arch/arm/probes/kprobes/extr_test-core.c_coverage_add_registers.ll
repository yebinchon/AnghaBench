; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/probes/kprobes/extr_test-core.c_coverage_add_registers.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/probes/kprobes/extr_test-core.c_coverage_add_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coverage_entry = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@DECODE_TYPE_BITS = common dso_local global i32 0, align 4
@COVERAGE_SP = common dso_local global i32 0, align 4
@COVERAGE_PC = common dso_local global i32 0, align 4
@COVERAGE_ANY_REG = common dso_local global i32 0, align 4
@COVERAGE_PCWB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coverage_entry*, i32)* @coverage_add_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coverage_add_registers(%struct.coverage_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.coverage_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.coverage_entry* %0, %struct.coverage_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.coverage_entry*, %struct.coverage_entry** %3, align 8
  %11 = getelementptr inbounds %struct.coverage_entry, %struct.coverage_entry* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @DECODE_TYPE_BITS, align 4
  %17 = ashr i32 %15, %16
  store i32 %17, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %104, %2
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 20
  br i1 %20, label %21, label %107

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = ashr i32 %22, %23
  %25 = and i32 %24, 15
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %6, align 4
  %28 = ashr i32 %26, %27
  %29 = and i32 %28, 15
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  br label %104

33:                                               ; preds = %21
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %34, 13
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @COVERAGE_SP, align 4
  store i32 %37, i32* %9, align 4
  br label %46

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, 15
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @COVERAGE_PC, align 4
  store i32 %42, i32* %9, align 4
  br label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @COVERAGE_ANY_REG, align 4
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %43, %41
  br label %46

46:                                               ; preds = %45, %36
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %6, align 4
  %49 = shl i32 %47, %48
  %50 = xor i32 %49, -1
  %51 = load %struct.coverage_entry*, %struct.coverage_entry** %3, align 8
  %52 = getelementptr inbounds %struct.coverage_entry, %struct.coverage_entry* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load i32, i32* %7, align 4
  switch i32 %55, label %103 [
    i32 137, label %56
    i32 138, label %56
    i32 129, label %56
    i32 128, label %57
    i32 130, label %62
    i32 133, label %67
    i32 132, label %72
    i32 131, label %72
    i32 135, label %80
    i32 136, label %98
    i32 134, label %98
  ]

56:                                               ; preds = %46, %46, %46
  br label %103

57:                                               ; preds = %46
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 13
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %107

61:                                               ; preds = %57
  br label %103

62:                                               ; preds = %46
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 15
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %107

66:                                               ; preds = %62
  br label %103

67:                                               ; preds = %46
  %68 = load i32, i32* %8, align 4
  %69 = icmp eq i32 %68, 13
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %107

71:                                               ; preds = %67
  br label %103

72:                                               ; preds = %46, %46
  %73 = load i32, i32* %8, align 4
  %74 = icmp eq i32 %73, 13
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %8, align 4
  %77 = icmp eq i32 %76, 15
  br i1 %77, label %78, label %79

78:                                               ; preds = %75, %72
  br label %107

79:                                               ; preds = %75
  br label %103

80:                                               ; preds = %46
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @is_writeback(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  br label %103

85:                                               ; preds = %80
  %86 = load i32, i32* %8, align 4
  %87 = icmp eq i32 %86, 15
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = load i32, i32* @COVERAGE_PCWB, align 4
  %90 = load i32, i32* %6, align 4
  %91 = shl i32 %89, %90
  %92 = xor i32 %91, -1
  %93 = load %struct.coverage_entry*, %struct.coverage_entry** %3, align 8
  %94 = getelementptr inbounds %struct.coverage_entry, %struct.coverage_entry* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = and i32 %95, %92
  store i32 %96, i32* %94, align 8
  br label %107

97:                                               ; preds = %85
  br label %103

98:                                               ; preds = %46, %46
  %99 = load i32, i32* %8, align 4
  %100 = icmp eq i32 %99, 15
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  br label %107

102:                                              ; preds = %98
  br label %103

103:                                              ; preds = %46, %102, %97, %84, %79, %71, %66, %61, %56
  br label %104

104:                                              ; preds = %103, %32
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 4
  store i32 %106, i32* %6, align 4
  br label %18

107:                                              ; preds = %60, %65, %70, %78, %88, %101, %18
  ret void
}

declare dso_local i32 @is_writeback(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
