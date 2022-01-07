; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-libm/extr_nextafter.c_nextafter.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-libm/extr_nextafter.c_nextafter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @nextafter(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  %13 = load double, double* %4, align 8
  %14 = call i32 @__HI(double %13)
  store i32 %14, i32* %6, align 4
  %15 = load double, double* %4, align 8
  %16 = call i32 @__LO(double %15)
  store i32 %16, i32* %10, align 4
  %17 = load double, double* %5, align 8
  %18 = call i32 @__HI(double %17)
  store i32 %18, i32* %7, align 4
  %19 = load double, double* %5, align 8
  %20 = call i32 @__LO(double %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 2147483647
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, 2147483647
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp sge i32 %25, 2146435072
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load i32, i32* %8, align 4
  %29 = sub nsw i32 %28, 2146435072
  %30 = load i32, i32* %10, align 4
  %31 = or i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %27, %2
  %34 = load i32, i32* %9, align 4
  %35 = icmp sge i32 %34, 2146435072
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 %37, 2146435072
  %39 = load i32, i32* %11, align 4
  %40 = or i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36, %27
  %43 = load double, double* %4, align 8
  %44 = load double, double* %5, align 8
  %45 = fadd double %43, %44
  store double %45, double* %3, align 8
  br label %184

46:                                               ; preds = %36, %33
  %47 = load double, double* %4, align 8
  %48 = load double, double* %5, align 8
  %49 = fcmp oeq double %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load double, double* %4, align 8
  store double %51, double* %3, align 8
  br label %184

52:                                               ; preds = %46
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %10, align 4
  %55 = or i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %78

57:                                               ; preds = %52
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %58, -2147483648
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %65 = load double, double* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %67 = load double, double* %66, align 8
  %68 = fmul double %65, %67
  store double %68, double* %5, align 8
  %69 = load double, double* %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %71 = load double, double* %70, align 8
  %72 = fcmp oeq double %69, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %57
  %74 = load double, double* %5, align 8
  store double %74, double* %3, align 8
  br label %184

75:                                               ; preds = %57
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %77 = load double, double* %76, align 8
  store double %77, double* %3, align 8
  br label %184

78:                                               ; preds = %52
  %79 = load i32, i32* %6, align 4
  %80 = icmp sge i32 %79, 0
  br i1 %80, label %81, label %112

81:                                               ; preds = %78
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %93, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %102

89:                                               ; preds = %85
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp ugt i32 %90, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %89, %81
  %94 = load i32, i32* %10, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* %6, align 4
  %98 = sub nsw i32 %97, 1
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %96, %93
  %100 = load i32, i32* %10, align 4
  %101 = sub i32 %100, 1
  store i32 %101, i32* %10, align 4
  br label %111

102:                                              ; preds = %89, %85
  %103 = load i32, i32* %10, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %107, %102
  br label %111

111:                                              ; preds = %110, %99
  br label %146

112:                                              ; preds = %78
  %113 = load i32, i32* %7, align 4
  %114 = icmp sge i32 %113, 0
  br i1 %114, label %127, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp sgt i32 %116, %117
  br i1 %118, label %127, label %119

119:                                              ; preds = %115
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %136

123:                                              ; preds = %119
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %11, align 4
  %126 = icmp ugt i32 %124, %125
  br i1 %126, label %127, label %136

127:                                              ; preds = %123, %115, %112
  %128 = load i32, i32* %10, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i32, i32* %6, align 4
  %132 = sub nsw i32 %131, 1
  store i32 %132, i32* %6, align 4
  br label %133

133:                                              ; preds = %130, %127
  %134 = load i32, i32* %10, align 4
  %135 = sub i32 %134, 1
  store i32 %135, i32* %10, align 4
  br label %145

136:                                              ; preds = %123, %119
  %137 = load i32, i32* %10, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %10, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load i32, i32* %6, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %6, align 4
  br label %144

144:                                              ; preds = %141, %136
  br label %145

145:                                              ; preds = %144, %133
  br label %146

146:                                              ; preds = %145, %111
  %147 = load i32, i32* %6, align 4
  %148 = and i32 %147, 2146435072
  store i32 %148, i32* %7, align 4
  %149 = load i32, i32* %7, align 4
  %150 = icmp sge i32 %149, 2146435072
  br i1 %150, label %151, label %155

151:                                              ; preds = %146
  %152 = load double, double* %4, align 8
  %153 = load double, double* %4, align 8
  %154 = fadd double %152, %153
  store double %154, double* %3, align 8
  br label %184

155:                                              ; preds = %146
  %156 = load i32, i32* %7, align 4
  %157 = icmp slt i32 %156, 1048576
  br i1 %157, label %158, label %175

158:                                              ; preds = %155
  %159 = load double, double* %4, align 8
  %160 = load double, double* %4, align 8
  %161 = fmul double %159, %160
  store double %161, double* %5, align 8
  %162 = load double, double* %5, align 8
  %163 = load double, double* %4, align 8
  %164 = fcmp une double %162, %163
  br i1 %164, label %165, label %174

165:                                              ; preds = %158
  %166 = load i32, i32* %6, align 4
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 8
  %169 = load i32, i32* %10, align 4
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %173 = load double, double* %172, align 8
  store double %173, double* %3, align 8
  br label %184

174:                                              ; preds = %158
  br label %175

175:                                              ; preds = %174, %155
  %176 = load i32, i32* %6, align 4
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 8
  %179 = load i32, i32* %10, align 4
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 4
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %183 = load double, double* %182, align 8
  store double %183, double* %3, align 8
  br label %184

184:                                              ; preds = %175, %165, %151, %75, %73, %50, %42
  %185 = load double, double* %3, align 8
  ret double %185
}

declare dso_local i32 @__HI(double) #1

declare dso_local i32 @__LO(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
