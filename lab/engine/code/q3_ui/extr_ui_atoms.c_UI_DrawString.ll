; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_atoms.c_UI_DrawString.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_atoms.c_UI_DrawString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@UI_BLINK = common dso_local global i32 0, align 4
@uis = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@BLINK_DIVISOR = common dso_local global i32 0, align 4
@UI_SMALLFONT = common dso_local global i32 0, align 4
@SMALLCHAR_WIDTH = common dso_local global i32 0, align 4
@SMALLCHAR_HEIGHT = common dso_local global i32 0, align 4
@UI_GIANTFONT = common dso_local global i32 0, align 4
@GIANTCHAR_WIDTH = common dso_local global i32 0, align 4
@GIANTCHAR_HEIGHT = common dso_local global i32 0, align 4
@BIGCHAR_WIDTH = common dso_local global i32 0, align 4
@BIGCHAR_HEIGHT = common dso_local global i32 0, align 4
@UI_PULSE = common dso_local global i32 0, align 4
@PULSE_DIVISOR = common dso_local global i32 0, align 4
@UI_FORMATMASK = common dso_local global i32 0, align 4
@UI_DROPSHADOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UI_DrawString(i32 %0, i32 %1, i8* %2, i32 %3, double* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double*, align 8
  %15 = alloca double*, align 8
  %16 = alloca float*, align 8
  %17 = alloca double*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store double* %4, double** %10, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  br label %155

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @UI_BLINK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uis, i32 0, i32 0), align 4
  %28 = load i32, i32* @BLINK_DIVISOR, align 4
  %29 = sdiv i32 %27, %28
  %30 = and i32 %29, 1
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %155

33:                                               ; preds = %26, %21
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @UI_SMALLFONT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* @SMALLCHAR_HEIGHT, align 4
  store i32 %40, i32* %13, align 4
  br label %53

41:                                               ; preds = %33
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @UI_GIANTFONT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @GIANTCHAR_WIDTH, align 4
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* @GIANTCHAR_HEIGHT, align 4
  store i32 %48, i32* %13, align 4
  br label %52

49:                                               ; preds = %41
  %50 = load i32, i32* @BIGCHAR_WIDTH, align 4
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* @BIGCHAR_HEIGHT, align 4
  store i32 %51, i32* %13, align 4
  br label %52

52:                                               ; preds = %49, %46
  br label %53

53:                                               ; preds = %52, %38
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @UI_PULSE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %95

58:                                               ; preds = %53
  %59 = load double*, double** %10, align 8
  %60 = getelementptr inbounds double, double* %59, i64 0
  %61 = load double, double* %60, align 8
  %62 = fmul double 8.000000e-01, %61
  %63 = load double*, double** %15, align 8
  %64 = getelementptr inbounds double, double* %63, i64 0
  store double %62, double* %64, align 8
  %65 = load double*, double** %10, align 8
  %66 = getelementptr inbounds double, double* %65, i64 1
  %67 = load double, double* %66, align 8
  %68 = fmul double 8.000000e-01, %67
  %69 = load double*, double** %15, align 8
  %70 = getelementptr inbounds double, double* %69, i64 1
  store double %68, double* %70, align 8
  %71 = load double*, double** %10, align 8
  %72 = getelementptr inbounds double, double* %71, i64 2
  %73 = load double, double* %72, align 8
  %74 = fmul double 8.000000e-01, %73
  %75 = load double*, double** %15, align 8
  %76 = getelementptr inbounds double, double* %75, i64 2
  store double %74, double* %76, align 8
  %77 = load double*, double** %10, align 8
  %78 = getelementptr inbounds double, double* %77, i64 3
  %79 = load double, double* %78, align 8
  %80 = fmul double 8.000000e-01, %79
  %81 = load double*, double** %15, align 8
  %82 = getelementptr inbounds double, double* %81, i64 3
  store double %80, double* %82, align 8
  %83 = load double*, double** %10, align 8
  %84 = load double*, double** %15, align 8
  %85 = load double*, double** %14, align 8
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uis, i32 0, i32 0), align 4
  %87 = load i32, i32* @PULSE_DIVISOR, align 4
  %88 = sdiv i32 %86, %87
  %89 = call double @sin(i32 %88)
  %90 = fmul double 5.000000e-01, %89
  %91 = fadd double 5.000000e-01, %90
  %92 = call i32 @UI_LerpColor(double* %83, double* %84, double* %85, double %91)
  %93 = load double*, double** %14, align 8
  %94 = bitcast double* %93 to float*
  store float* %94, float** %16, align 8
  br label %98

95:                                               ; preds = %53
  %96 = load double*, double** %10, align 8
  %97 = bitcast double* %96 to float*
  store float* %97, float** %16, align 8
  br label %98

98:                                               ; preds = %95, %58
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @UI_FORMATMASK, align 4
  %101 = and i32 %99, %100
  switch i32 %101, label %119 [
    i32 129, label %102
    i32 128, label %111
  ]

102:                                              ; preds = %98
  %103 = load i8*, i8** %8, align 8
  %104 = call i32 @strlen(i8* %103)
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %12, align 4
  %108 = mul nsw i32 %106, %107
  %109 = sdiv i32 %108, 2
  %110 = sub nsw i32 %105, %109
  store i32 %110, i32* %6, align 4
  br label %120

111:                                              ; preds = %98
  %112 = load i8*, i8** %8, align 8
  %113 = call i32 @strlen(i8* %112)
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %12, align 4
  %117 = mul nsw i32 %115, %116
  %118 = sub nsw i32 %114, %117
  store i32 %118, i32* %6, align 4
  br label %120

119:                                              ; preds = %98
  br label %120

120:                                              ; preds = %119, %111, %102
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @UI_DROPSHADOW, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %147

125:                                              ; preds = %120
  %126 = load double*, double** %17, align 8
  %127 = getelementptr inbounds double, double* %126, i64 2
  store double 0.000000e+00, double* %127, align 8
  %128 = load double*, double** %17, align 8
  %129 = getelementptr inbounds double, double* %128, i64 1
  store double 0.000000e+00, double* %129, align 8
  %130 = load double*, double** %17, align 8
  %131 = getelementptr inbounds double, double* %130, i64 0
  store double 0.000000e+00, double* %131, align 8
  %132 = load float*, float** %16, align 8
  %133 = getelementptr inbounds float, float* %132, i64 3
  %134 = load float, float* %133, align 4
  %135 = fpext float %134 to double
  %136 = load double*, double** %17, align 8
  %137 = getelementptr inbounds double, double* %136, i64 3
  store double %135, double* %137, align 8
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, 2
  %140 = load i32, i32* %7, align 4
  %141 = add nsw i32 %140, 2
  %142 = load i8*, i8** %8, align 8
  %143 = load double*, double** %17, align 8
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* %13, align 4
  %146 = call i32 (i32, i32, i8*, ...) @UI_DrawString2(i32 %139, i32 %141, i8* %142, double* %143, i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %125, %120
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* %7, align 4
  %150 = load i8*, i8** %8, align 8
  %151 = load float*, float** %16, align 8
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* %13, align 4
  %154 = call i32 (i32, i32, i8*, ...) @UI_DrawString2(i32 %148, i32 %149, i8* %150, float* %151, i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %147, %32, %20
  ret void
}

declare dso_local i32 @UI_LerpColor(double*, double*, double*, double) #1

declare dso_local double @sin(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @UI_DrawString2(i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
