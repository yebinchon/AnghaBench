; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/nwfpe/extr_softfloat.c_addFloat32Sigs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/nwfpe/extr_softfloat.c_addFloat32Sigs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roundingData = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.roundingData*, i32, i32, i32)* @addFloat32Sigs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addFloat32Sigs(%struct.roundingData* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.roundingData*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.roundingData* %0, %struct.roundingData** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @extractFloat32Frac(i32 %17)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @extractFloat32Exp(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @extractFloat32Frac(i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @extractFloat32Exp(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = sub nsw i32 %25, %26
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %13, align 4
  %29 = shl i32 %28, 6
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %14, align 4
  %31 = shl i32 %30, 6
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %16, align 4
  %33 = icmp slt i32 0, %32
  br i1 %33, label %34, label %60

34:                                               ; preds = %4
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %35, 255
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @propagateFloat32NaN(i32 %41, i32 %42)
  store i32 %43, i32* %5, align 4
  br label %147

44:                                               ; preds = %37
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %5, align 4
  br label %147

46:                                               ; preds = %34
  %47 = load i32, i32* %11, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* %16, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %16, align 4
  br label %55

52:                                               ; preds = %46
  %53 = load i32, i32* %14, align 4
  %54 = or i32 %53, 536870912
  store i32 %54, i32* %14, align 4
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %16, align 4
  %58 = call i32 @shift32RightJamming(i32 %56, i32 %57, i32* %14)
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %12, align 4
  br label %122

60:                                               ; preds = %4
  %61 = load i32, i32* %16, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %91

63:                                               ; preds = %60
  %64 = load i32, i32* %11, align 4
  %65 = icmp eq i32 %64, 255
  br i1 %65, label %66, label %76

66:                                               ; preds = %63
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @propagateFloat32NaN(i32 %70, i32 %71)
  store i32 %72, i32* %5, align 4
  br label %147

73:                                               ; preds = %66
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @packFloat32(i32 %74, i32 255, i32 0)
  store i32 %75, i32* %5, align 4
  br label %147

76:                                               ; preds = %63
  %77 = load i32, i32* %10, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* %16, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %16, align 4
  br label %85

82:                                               ; preds = %76
  %83 = load i32, i32* %13, align 4
  %84 = or i32 %83, 536870912
  store i32 %84, i32* %13, align 4
  br label %85

85:                                               ; preds = %82, %79
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %16, align 4
  %88 = sub nsw i32 0, %87
  %89 = call i32 @shift32RightJamming(i32 %86, i32 %88, i32* %13)
  %90 = load i32, i32* %11, align 4
  store i32 %90, i32* %12, align 4
  br label %121

91:                                               ; preds = %60
  %92 = load i32, i32* %10, align 4
  %93 = icmp eq i32 %92, 255
  br i1 %93, label %94, label %105

94:                                               ; preds = %91
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %14, align 4
  %97 = or i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @propagateFloat32NaN(i32 %100, i32 %101)
  store i32 %102, i32* %5, align 4
  br label %147

103:                                              ; preds = %94
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %5, align 4
  br label %147

105:                                              ; preds = %91
  %106 = load i32, i32* %10, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %105
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %14, align 4
  %112 = add nsw i32 %110, %111
  %113 = ashr i32 %112, 6
  %114 = call i32 @packFloat32(i32 %109, i32 0, i32 %113)
  store i32 %114, i32* %5, align 4
  br label %147

115:                                              ; preds = %105
  %116 = load i32, i32* %13, align 4
  %117 = add nsw i32 1073741824, %116
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %117, %118
  store i32 %119, i32* %15, align 4
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %12, align 4
  br label %141

121:                                              ; preds = %85
  br label %122

122:                                              ; preds = %121, %55
  %123 = load i32, i32* %13, align 4
  %124 = or i32 %123, 536870912
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %14, align 4
  %127 = add nsw i32 %125, %126
  %128 = shl i32 %127, 1
  store i32 %128, i32* %15, align 4
  %129 = load i32, i32* %12, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %12, align 4
  %131 = load i32, i32* %15, align 4
  %132 = sext i32 %131 to i64
  %133 = icmp slt i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %122
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* %14, align 4
  %137 = add nsw i32 %135, %136
  store i32 %137, i32* %15, align 4
  %138 = load i32, i32* %12, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %12, align 4
  br label %140

140:                                              ; preds = %134, %122
  br label %141

141:                                              ; preds = %140, %115
  %142 = load %struct.roundingData*, %struct.roundingData** %6, align 8
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* %15, align 4
  %146 = call i32 @roundAndPackFloat32(%struct.roundingData* %142, i32 %143, i32 %144, i32 %145)
  store i32 %146, i32* %5, align 4
  br label %147

147:                                              ; preds = %141, %108, %103, %99, %73, %69, %44, %40
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local i32 @extractFloat32Frac(i32) #1

declare dso_local i32 @extractFloat32Exp(i32) #1

declare dso_local i32 @propagateFloat32NaN(i32, i32) #1

declare dso_local i32 @shift32RightJamming(i32, i32, i32*) #1

declare dso_local i32 @packFloat32(i32, i32, i32) #1

declare dso_local i32 @roundAndPackFloat32(%struct.roundingData*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
