; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh4/extr_softfloat.c_addFloat32Sigs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh4/extr_softfloat.c_addFloat32Sigs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @addFloat32Sigs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addFloat32Sigs(i32 %0, i32 %1, i32 %2) #0 {
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
  %27 = shl i32 %26, 6
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %12, align 4
  %29 = shl i32 %28, 6
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp slt i32 0, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %3
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 255
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %4, align 4
  br label %121

37:                                               ; preds = %32
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %14, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %14, align 4
  br label %46

43:                                               ; preds = %37
  %44 = load i32, i32* %12, align 4
  %45 = or i32 %44, 536870912
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @shift32RightJamming(i32 %47, i32 %48, i32* %12)
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %10, align 4
  br label %97

51:                                               ; preds = %3
  %52 = load i32, i32* %14, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %75

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %55, 255
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @packFloat32(i32 %58, i32 255, i32 0)
  store i32 %59, i32* %4, align 4
  br label %121

60:                                               ; preds = %54
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %14, align 4
  br label %69

66:                                               ; preds = %60
  %67 = load i32, i32* %11, align 4
  %68 = or i32 %67, 536870912
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %14, align 4
  %72 = sub nsw i32 0, %71
  %73 = call i32 @shift32RightJamming(i32 %70, i32 %72, i32* %11)
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %10, align 4
  br label %96

75:                                               ; preds = %51
  %76 = load i32, i32* %8, align 4
  %77 = icmp eq i32 %76, 255
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* %5, align 4
  store i32 %79, i32* %4, align 4
  br label %121

80:                                               ; preds = %75
  %81 = load i32, i32* %8, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %85, %86
  %88 = ashr i32 %87, 6
  %89 = call i32 @packFloat32(i32 %84, i32 0, i32 %88)
  store i32 %89, i32* %4, align 4
  br label %121

90:                                               ; preds = %80
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 1073741824, %91
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %92, %93
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %10, align 4
  br label %116

96:                                               ; preds = %69
  br label %97

97:                                               ; preds = %96, %46
  %98 = load i32, i32* %11, align 4
  %99 = or i32 %98, 536870912
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %100, %101
  %103 = shl i32 %102, 1
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %97
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %12, align 4
  %112 = add nsw i32 %110, %111
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %10, align 4
  br label %115

115:                                              ; preds = %109, %97
  br label %116

116:                                              ; preds = %115, %90
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %13, align 4
  %120 = call i32 @roundAndPackFloat32(i32 %117, i32 %118, i32 %119)
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %116, %83, %78, %57, %35
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32 @extractFloat32Frac(i32) #1

declare dso_local i32 @extractFloat32Exp(i32) #1

declare dso_local i32 @shift32RightJamming(i32, i32, i32*) #1

declare dso_local i32 @packFloat32(i32, i32, i32) #1

declare dso_local i32 @roundAndPackFloat32(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
