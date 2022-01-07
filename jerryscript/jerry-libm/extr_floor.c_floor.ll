; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-libm/extr_floor.c_floor.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-libm/extr_floor.c_floor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@huge = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone readnone uwtable
define dso_local double @floor(double %0) #0 {
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
  br i1 %19, label %20, label %73

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %20
  %24 = load double, double* @huge, align 8
  %25 = load double, double* %3, align 8
  %26 = fadd double %24, %25
  %27 = fcmp ogt double %26, 0.000000e+00
  br i1 %27, label %28, label %41

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %40

32:                                               ; preds = %28
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, 2147483647
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 -1074790400, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %32
  br label %40

40:                                               ; preds = %39, %31
  br label %41

41:                                               ; preds = %40, %23
  br label %72

42:                                               ; preds = %20
  %43 = load i32, i32* %6, align 4
  %44 = ashr i32 1048575, %43
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %47, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load double, double* %3, align 8
  store double %52, double* %2, align 8
  br label %140

53:                                               ; preds = %42
  %54 = load double, double* @huge, align 8
  %55 = load double, double* %3, align 8
  %56 = fadd double %54, %55
  %57 = fcmp ogt double %56, 0.000000e+00
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = load i32, i32* %4, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  %63 = ashr i32 1048576, %62
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %61, %58
  %67 = load i32, i32* %7, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %4, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %66, %53
  br label %72

72:                                               ; preds = %71, %41
  br label %131

73:                                               ; preds = %1
  %74 = load i32, i32* %6, align 4
  %75 = icmp sgt i32 %74, 51
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load i32, i32* %6, align 4
  %78 = icmp eq i32 %77, 1024
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load double, double* %3, align 8
  %81 = load double, double* %3, align 8
  %82 = fadd double %80, %81
  store double %82, double* %2, align 8
  br label %140

83:                                               ; preds = %76
  %84 = load double, double* %3, align 8
  store double %84, double* %2, align 8
  br label %140

85:                                               ; preds = %73
  %86 = load i32, i32* %6, align 4
  %87 = sub nsw i32 %86, 20
  %88 = lshr i32 -1, %87
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %7, align 4
  %91 = and i32 %89, %90
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %85
  %94 = load double, double* %3, align 8
  store double %94, double* %2, align 8
  br label %140

95:                                               ; preds = %85
  %96 = load double, double* @huge, align 8
  %97 = load double, double* %3, align 8
  %98 = fadd double %96, %97
  %99 = fcmp ogt double %98, 0.000000e+00
  br i1 %99, label %100, label %129

100:                                              ; preds = %95
  %101 = load i32, i32* %4, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %124

103:                                              ; preds = %100
  %104 = load i32, i32* %6, align 4
  %105 = icmp eq i32 %104, 20
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32, i32* %4, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %4, align 4
  br label %123

109:                                              ; preds = %103
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* %6, align 4
  %112 = sub nsw i32 52, %111
  %113 = shl i32 1, %112
  %114 = add nsw i32 %110, %113
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %5, align 4
  %117 = icmp ult i32 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %109
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %118, %109
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %121, %106
  br label %124

124:                                              ; preds = %123, %100
  %125 = load i32, i32* %7, align 4
  %126 = xor i32 %125, -1
  %127 = load i32, i32* %5, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %124, %95
  br label %130

130:                                              ; preds = %129
  br label %131

131:                                              ; preds = %130, %72
  %132 = load i32, i32* %4, align 4
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load i32, i32* %5, align 4
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %139 = load double, double* %138, align 8
  store double %139, double* %2, align 8
  br label %140

140:                                              ; preds = %131, %93, %83, %79, %51
  %141 = load double, double* %2, align 8
  ret double %141
}

declare dso_local i32 @__HI(double) #1

declare dso_local i32 @__LO(double) #1

attributes #0 = { noinline nounwind optnone readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
