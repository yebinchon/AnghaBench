; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh4/extr_softfloat.c_subFloat32Sigs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh4/extr_softfloat.c_subFloat32Sigs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FPSCR_RM_ZERO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @subFloat32Sigs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subFloat32Sigs(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @extractFloat32Frac(i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @extractFloat32Exp(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @extractFloat32Frac(i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @extractFloat32Exp(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = sub nsw i32 %23, %24
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %11, align 4
  %27 = shl i32 %26, 7
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %12, align 4
  %29 = shl i32 %28, 7
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp slt i32 0, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  br label %87

33:                                               ; preds = %3
  %34 = load i32, i32* %14, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %57

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %107

46:                                               ; preds = %41
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %80

51:                                               ; preds = %46
  %52 = call i64 (...) @float_rounding_mode()
  %53 = load i64, i64* @FPSCR_RM_ZERO, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @packFloat32(i32 %55, i32 0, i32 0)
  store i32 %56, i32* %4, align 4
  br label %119

57:                                               ; preds = %36
  %58 = load i32, i32* %9, align 4
  %59 = icmp eq i32 %58, 255
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* %7, align 4
  %62 = xor i32 %61, 1
  %63 = call i32 @packFloat32(i32 %62, i32 255, i32 0)
  store i32 %63, i32* %4, align 4
  br label %119

64:                                               ; preds = %57
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %14, align 4
  br label %73

70:                                               ; preds = %64
  %71 = load i32, i32* %11, align 4
  %72 = or i32 %71, 1073741824
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %14, align 4
  %76 = sub nsw i32 0, %75
  %77 = call i32 @shift32RightJamming(i32 %74, i32 %76, i32* %11)
  %78 = load i32, i32* %12, align 4
  %79 = or i32 %78, 1073741824
  store i32 %79, i32* %12, align 4
  br label %80

80:                                               ; preds = %73, %50
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %11, align 4
  %83 = sub nsw i32 %81, %82
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %7, align 4
  %86 = xor i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %112

87:                                               ; preds = %32
  %88 = load i32, i32* %8, align 4
  %89 = icmp eq i32 %88, 255
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i32, i32* %5, align 4
  store i32 %91, i32* %4, align 4
  br label %119

92:                                               ; preds = %87
  %93 = load i32, i32* %9, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %14, align 4
  br label %101

98:                                               ; preds = %92
  %99 = load i32, i32* %12, align 4
  %100 = or i32 %99, 1073741824
  store i32 %100, i32* %12, align 4
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %14, align 4
  %104 = call i32 @shift32RightJamming(i32 %102, i32 %103, i32* %12)
  %105 = load i32, i32* %11, align 4
  %106 = or i32 %105, 1073741824
  store i32 %106, i32* %11, align 4
  br label %107

107:                                              ; preds = %101, %45
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %12, align 4
  %110 = sub nsw i32 %108, %109
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %10, align 4
  br label %112

112:                                              ; preds = %107, %80
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @normalizeRoundAndPackFloat32(i32 %115, i32 %116, i32 %117)
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %112, %90, %60, %51
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @extractFloat32Frac(i32) #1

declare dso_local i32 @extractFloat32Exp(i32) #1

declare dso_local i32 @packFloat32(i32, i32, i32) #1

declare dso_local i64 @float_rounding_mode(...) #1

declare dso_local i32 @shift32RightJamming(i32, i32, i32*) #1

declare dso_local i32 @normalizeRoundAndPackFloat32(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
