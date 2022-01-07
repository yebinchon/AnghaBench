; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/net/extr_bpf_jit_comp_64.c_analyze_64bit_constant.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/net/extr_bpf_jit_comp_64.c_analyze_64bit_constant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32*, i32*)* @analyze_64bit_constant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @analyze_64bit_constant(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 -1, i32* %12, align 4
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %54, %5
  %16 = load i32, i32* %11, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %14, align 4
  %21 = ashr i32 %19, %20
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %14, align 4
  store i32 %25, i32* %11, align 4
  br label %26

26:                                               ; preds = %24, %18, %15
  %27 = load i32, i32* %12, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %14, align 4
  %32 = sub nsw i32 32, %31
  %33 = sub nsw i32 %32, 1
  %34 = ashr i32 %30, %33
  %35 = and i32 %34, 1
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load i32, i32* %14, align 4
  %39 = sub nsw i32 64, %38
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %12, align 4
  br label %41

41:                                               ; preds = %37, %29, %26
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %14, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %14, align 4
  %45 = icmp slt i32 %44, 32
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load i32, i32* %12, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %11, align 4
  %51 = icmp eq i32 %50, -1
  br label %52

52:                                               ; preds = %49, %46
  %53 = phi i1 [ true, %46 ], [ %51, %49 ]
  br label %54

54:                                               ; preds = %52, %42
  %55 = phi i1 [ false, %42 ], [ %53, %52 ]
  br i1 %55, label %15, label %56

56:                                               ; preds = %54
  %57 = load i32, i32* %14, align 4
  %58 = icmp eq i32 %57, 32
  br i1 %58, label %59, label %103

59:                                               ; preds = %56
  store i32 0, i32* %14, align 4
  br label %60

60:                                               ; preds = %100, %59
  %61 = load i32, i32* %11, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %14, align 4
  %66 = ashr i32 %64, %65
  %67 = and i32 %66, 1
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, 32
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %69, %63, %60
  %73 = load i32, i32* %12, align 4
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %87

75:                                               ; preds = %72
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %14, align 4
  %78 = sub nsw i32 32, %77
  %79 = sub nsw i32 %78, 1
  %80 = ashr i32 %76, %79
  %81 = and i32 %80, 1
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %75
  %84 = load i32, i32* %14, align 4
  %85 = sub nsw i32 32, %84
  %86 = sub nsw i32 %85, 1
  store i32 %86, i32* %12, align 4
  br label %87

87:                                               ; preds = %83, %75, %72
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %14, align 4
  %91 = icmp slt i32 %90, 32
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = load i32, i32* %12, align 4
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %11, align 4
  %97 = icmp eq i32 %96, -1
  br label %98

98:                                               ; preds = %95, %92
  %99 = phi i1 [ true, %92 ], [ %97, %95 ]
  br label %100

100:                                              ; preds = %98, %88
  %101 = phi i1 [ false, %88 ], [ %99, %98 ]
  br i1 %101, label %60, label %102

102:                                              ; preds = %100
  br label %103

103:                                              ; preds = %102, %56
  store i32 1, i32* %13, align 4
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %14, align 4
  br label %105

105:                                              ; preds = %130, %103
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %12, align 4
  %108 = icmp sle i32 %106, %107
  br i1 %108, label %109, label %133

109:                                              ; preds = %105
  %110 = load i32, i32* %14, align 4
  %111 = icmp slt i32 %110, 32
  br i1 %111, label %112, label %120

112:                                              ; preds = %109
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %14, align 4
  %115 = shl i32 1, %114
  %116 = and i32 %113, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %130

119:                                              ; preds = %112
  br label %129

120:                                              ; preds = %109
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %14, align 4
  %123 = sub nsw i32 %122, 32
  %124 = shl i32 1, %123
  %125 = and i32 %121, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %120
  br label %130

128:                                              ; preds = %120
  br label %129

129:                                              ; preds = %128, %119
  store i32 0, i32* %13, align 4
  br label %133

130:                                              ; preds = %127, %118
  %131 = load i32, i32* %14, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %14, align 4
  br label %105

133:                                              ; preds = %129, %105
  %134 = load i32, i32* %12, align 4
  %135 = load i32*, i32** %8, align 8
  store i32 %134, i32* %135, align 4
  %136 = load i32, i32* %11, align 4
  %137 = load i32*, i32** %9, align 8
  store i32 %136, i32* %137, align 4
  %138 = load i32, i32* %13, align 4
  %139 = load i32*, i32** %10, align 8
  store i32 %138, i32* %139, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
