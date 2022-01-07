; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-libm/extr_ceil.c_ceil.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-libm/extr_ceil.c_ceil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@huge = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone readnone uwtable
define dso_local double @ceil(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__, align 8
  store double %0, double* %3, align 8
  %10 = load double, double* %3, align 8
  %11 = call i32 @__HI(double %10)
  store i32 %11, i32* %4, align 4
  %12 = load double, double* %3, align 8
  %13 = call i32 @__LO(double %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = ashr i32 %14, 20
  %16 = and i32 %15, 2047
  %17 = sub nsw i32 %16, 1023
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 20
  br i1 %19, label %20, label %72

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = load double, double* @huge, align 8
  %25 = load double, double* %3, align 8
  %26 = fadd double %24, %25
  %27 = fcmp ogt double %26, 0.000000e+00
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 -2147483648, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %39

32:                                               ; preds = %28
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 1072693248, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %32
  br label %39

39:                                               ; preds = %38, %31
  br label %40

40:                                               ; preds = %39, %23
  br label %71

41:                                               ; preds = %20
  %42 = load i32, i32* %6, align 4
  %43 = ashr i32 1048575, %42
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %46, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load double, double* %3, align 8
  store double %51, double* %2, align 8
  br label %139

52:                                               ; preds = %41
  %53 = load double, double* @huge, align 8
  %54 = load double, double* %3, align 8
  %55 = fadd double %53, %54
  %56 = fcmp ogt double %55, 0.000000e+00
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = load i32, i32* %4, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i32, i32* %6, align 4
  %62 = ashr i32 1048576, %61
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %60, %57
  %66 = load i32, i32* %7, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %4, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %65, %52
  br label %71

71:                                               ; preds = %70, %40
  br label %130

72:                                               ; preds = %1
  %73 = load i32, i32* %6, align 4
  %74 = icmp sgt i32 %73, 51
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load i32, i32* %6, align 4
  %77 = icmp eq i32 %76, 1024
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load double, double* %3, align 8
  %80 = load double, double* %3, align 8
  %81 = fadd double %79, %80
  store double %81, double* %2, align 8
  br label %139

82:                                               ; preds = %75
  %83 = load double, double* %3, align 8
  store double %83, double* %2, align 8
  br label %139

84:                                               ; preds = %72
  %85 = load i32, i32* %6, align 4
  %86 = sub nsw i32 %85, 20
  %87 = lshr i32 -1, %86
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %7, align 4
  %90 = and i32 %88, %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %84
  %93 = load double, double* %3, align 8
  store double %93, double* %2, align 8
  br label %139

94:                                               ; preds = %84
  %95 = load double, double* @huge, align 8
  %96 = load double, double* %3, align 8
  %97 = fadd double %95, %96
  %98 = fcmp ogt double %97, 0.000000e+00
  br i1 %98, label %99, label %128

99:                                               ; preds = %94
  %100 = load i32, i32* %4, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %123

102:                                              ; preds = %99
  %103 = load i32, i32* %6, align 4
  %104 = icmp eq i32 %103, 20
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* %4, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %4, align 4
  br label %122

108:                                              ; preds = %102
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* %6, align 4
  %111 = sub nsw i32 52, %110
  %112 = shl i32 1, %111
  %113 = add nsw i32 %109, %112
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %5, align 4
  %116 = icmp ult i32 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %108
  %118 = load i32, i32* %4, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %117, %108
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %120, %105
  br label %123

123:                                              ; preds = %122, %99
  %124 = load i32, i32* %7, align 4
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %5, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %123, %94
  br label %129

129:                                              ; preds = %128
  br label %130

130:                                              ; preds = %129, %71
  %131 = load i32, i32* %4, align 4
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  %134 = load i32, i32* %5, align 4
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %138 = load double, double* %137, align 8
  store double %138, double* %2, align 8
  br label %139

139:                                              ; preds = %130, %92, %82, %78, %50
  %140 = load double, double* %2, align 8
  ret double %140
}

declare dso_local i32 @__HI(double) #1

declare dso_local i32 @__LO(double) #1

attributes #0 = { noinline nounwind optnone readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
