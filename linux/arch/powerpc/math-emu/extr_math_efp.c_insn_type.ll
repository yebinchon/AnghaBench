; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/math-emu/extr_math_efp.c_insn_type.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/math-emu/extr_math_efp.c_insn_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NOTYPE = common dso_local global i64 0, align 8
@XA = common dso_local global i64 0, align 8
@AB = common dso_local global i64 0, align 8
@XB = common dso_local global i64 0, align 8
@XCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @insn_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @insn_type(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* @NOTYPE, align 8
  store i64 %4, i64* %3, align 8
  %5 = load i64, i64* %2, align 8
  %6 = and i64 %5, 2047
  switch i64 %6, label %113 [
    i64 161, label %7
    i64 160, label %9
    i64 159, label %11
    i64 157, label %13
    i64 156, label %15
    i64 155, label %17
    i64 154, label %19
    i64 153, label %21
    i64 152, label %23
    i64 151, label %25
    i64 150, label %27
    i64 149, label %29
    i64 148, label %31
    i64 147, label %33
    i64 146, label %35
    i64 145, label %37
    i64 144, label %39
    i64 158, label %41
    i64 143, label %43
    i64 142, label %45
    i64 141, label %47
    i64 140, label %49
    i64 139, label %51
    i64 138, label %53
    i64 137, label %55
    i64 136, label %57
    i64 135, label %59
    i64 134, label %61
    i64 133, label %63
    i64 132, label %65
    i64 131, label %67
    i64 130, label %69
    i64 129, label %71
    i64 128, label %73
    i64 180, label %75
    i64 179, label %77
    i64 178, label %79
    i64 177, label %81
    i64 176, label %83
    i64 175, label %85
    i64 174, label %87
    i64 173, label %89
    i64 172, label %91
    i64 171, label %93
    i64 170, label %95
    i64 169, label %97
    i64 168, label %99
    i64 167, label %101
    i64 166, label %103
    i64 165, label %105
    i64 164, label %107
    i64 163, label %109
    i64 162, label %111
  ]

7:                                                ; preds = %1
  %8 = load i64, i64* @XA, align 8
  store i64 %8, i64* %3, align 8
  br label %113

9:                                                ; preds = %1
  %10 = load i64, i64* @AB, align 8
  store i64 %10, i64* %3, align 8
  br label %113

11:                                               ; preds = %1
  %12 = load i64, i64* @XB, align 8
  store i64 %12, i64* %3, align 8
  br label %113

13:                                               ; preds = %1
  %14 = load i64, i64* @XCR, align 8
  store i64 %14, i64* %3, align 8
  br label %113

15:                                               ; preds = %1
  %16 = load i64, i64* @XCR, align 8
  store i64 %16, i64* %3, align 8
  br label %113

17:                                               ; preds = %1
  %18 = load i64, i64* @XCR, align 8
  store i64 %18, i64* %3, align 8
  br label %113

19:                                               ; preds = %1
  %20 = load i64, i64* @XB, align 8
  store i64 %20, i64* %3, align 8
  br label %113

21:                                               ; preds = %1
  %22 = load i64, i64* @XB, align 8
  store i64 %22, i64* %3, align 8
  br label %113

23:                                               ; preds = %1
  %24 = load i64, i64* @XB, align 8
  store i64 %24, i64* %3, align 8
  br label %113

25:                                               ; preds = %1
  %26 = load i64, i64* @XB, align 8
  store i64 %26, i64* %3, align 8
  br label %113

27:                                               ; preds = %1
  %28 = load i64, i64* @XB, align 8
  store i64 %28, i64* %3, align 8
  br label %113

29:                                               ; preds = %1
  %30 = load i64, i64* @XB, align 8
  store i64 %30, i64* %3, align 8
  br label %113

31:                                               ; preds = %1
  %32 = load i64, i64* @AB, align 8
  store i64 %32, i64* %3, align 8
  br label %113

33:                                               ; preds = %1
  %34 = load i64, i64* @AB, align 8
  store i64 %34, i64* %3, align 8
  br label %113

35:                                               ; preds = %1
  %36 = load i64, i64* @XA, align 8
  store i64 %36, i64* %3, align 8
  br label %113

37:                                               ; preds = %1
  %38 = load i64, i64* @XA, align 8
  store i64 %38, i64* %3, align 8
  br label %113

39:                                               ; preds = %1
  %40 = load i64, i64* @AB, align 8
  store i64 %40, i64* %3, align 8
  br label %113

41:                                               ; preds = %1
  %42 = load i64, i64* @XB, align 8
  store i64 %42, i64* %3, align 8
  br label %113

43:                                               ; preds = %1
  %44 = load i64, i64* @XA, align 8
  store i64 %44, i64* %3, align 8
  br label %113

45:                                               ; preds = %1
  %46 = load i64, i64* @AB, align 8
  store i64 %46, i64* %3, align 8
  br label %113

47:                                               ; preds = %1
  %48 = load i64, i64* @XCR, align 8
  store i64 %48, i64* %3, align 8
  br label %113

49:                                               ; preds = %1
  %50 = load i64, i64* @XCR, align 8
  store i64 %50, i64* %3, align 8
  br label %113

51:                                               ; preds = %1
  %52 = load i64, i64* @XCR, align 8
  store i64 %52, i64* %3, align 8
  br label %113

53:                                               ; preds = %1
  %54 = load i64, i64* @XB, align 8
  store i64 %54, i64* %3, align 8
  br label %113

55:                                               ; preds = %1
  %56 = load i64, i64* @XB, align 8
  store i64 %56, i64* %3, align 8
  br label %113

57:                                               ; preds = %1
  %58 = load i64, i64* @XB, align 8
  store i64 %58, i64* %3, align 8
  br label %113

59:                                               ; preds = %1
  %60 = load i64, i64* @XB, align 8
  store i64 %60, i64* %3, align 8
  br label %113

61:                                               ; preds = %1
  %62 = load i64, i64* @XB, align 8
  store i64 %62, i64* %3, align 8
  br label %113

63:                                               ; preds = %1
  %64 = load i64, i64* @XB, align 8
  store i64 %64, i64* %3, align 8
  br label %113

65:                                               ; preds = %1
  %66 = load i64, i64* @AB, align 8
  store i64 %66, i64* %3, align 8
  br label %113

67:                                               ; preds = %1
  %68 = load i64, i64* @AB, align 8
  store i64 %68, i64* %3, align 8
  br label %113

69:                                               ; preds = %1
  %70 = load i64, i64* @XA, align 8
  store i64 %70, i64* %3, align 8
  br label %113

71:                                               ; preds = %1
  %72 = load i64, i64* @XA, align 8
  store i64 %72, i64* %3, align 8
  br label %113

73:                                               ; preds = %1
  %74 = load i64, i64* @AB, align 8
  store i64 %74, i64* %3, align 8
  br label %113

75:                                               ; preds = %1
  %76 = load i64, i64* @XA, align 8
  store i64 %76, i64* %3, align 8
  br label %113

77:                                               ; preds = %1
  %78 = load i64, i64* @AB, align 8
  store i64 %78, i64* %3, align 8
  br label %113

79:                                               ; preds = %1
  %80 = load i64, i64* @XB, align 8
  store i64 %80, i64* %3, align 8
  br label %113

81:                                               ; preds = %1
  %82 = load i64, i64* @XCR, align 8
  store i64 %82, i64* %3, align 8
  br label %113

83:                                               ; preds = %1
  %84 = load i64, i64* @XCR, align 8
  store i64 %84, i64* %3, align 8
  br label %113

85:                                               ; preds = %1
  %86 = load i64, i64* @XCR, align 8
  store i64 %86, i64* %3, align 8
  br label %113

87:                                               ; preds = %1
  %88 = load i64, i64* @XB, align 8
  store i64 %88, i64* %3, align 8
  br label %113

89:                                               ; preds = %1
  %90 = load i64, i64* @XB, align 8
  store i64 %90, i64* %3, align 8
  br label %113

91:                                               ; preds = %1
  %92 = load i64, i64* @XB, align 8
  store i64 %92, i64* %3, align 8
  br label %113

93:                                               ; preds = %1
  %94 = load i64, i64* @XB, align 8
  store i64 %94, i64* %3, align 8
  br label %113

95:                                               ; preds = %1
  %96 = load i64, i64* @XB, align 8
  store i64 %96, i64* %3, align 8
  br label %113

97:                                               ; preds = %1
  %98 = load i64, i64* @XB, align 8
  store i64 %98, i64* %3, align 8
  br label %113

99:                                               ; preds = %1
  %100 = load i64, i64* @XB, align 8
  store i64 %100, i64* %3, align 8
  br label %113

101:                                              ; preds = %1
  %102 = load i64, i64* @XB, align 8
  store i64 %102, i64* %3, align 8
  br label %113

103:                                              ; preds = %1
  %104 = load i64, i64* @AB, align 8
  store i64 %104, i64* %3, align 8
  br label %113

105:                                              ; preds = %1
  %106 = load i64, i64* @AB, align 8
  store i64 %106, i64* %3, align 8
  br label %113

107:                                              ; preds = %1
  %108 = load i64, i64* @XA, align 8
  store i64 %108, i64* %3, align 8
  br label %113

109:                                              ; preds = %1
  %110 = load i64, i64* @XA, align 8
  store i64 %110, i64* %3, align 8
  br label %113

111:                                              ; preds = %1
  %112 = load i64, i64* @AB, align 8
  store i64 %112, i64* %3, align 8
  br label %113

113:                                              ; preds = %1, %111, %109, %107, %105, %103, %101, %99, %97, %95, %93, %91, %89, %87, %85, %83, %81, %79, %77, %75, %73, %71, %69, %67, %65, %63, %61, %59, %57, %55, %53, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7
  %114 = load i64, i64* %3, align 8
  ret i64 %114
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
