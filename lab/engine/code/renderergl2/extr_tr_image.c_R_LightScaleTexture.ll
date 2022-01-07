; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_image.c_R_LightScaleTexture.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_image.c_R_LightScaleTexture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@glConfig = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@s_gammatable = common dso_local global i64* null, align 8
@s_intensitytable = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_LightScaleTexture(i64* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %61

17:                                               ; preds = %4
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @glConfig, i32 0, i32 0), align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %60, label %20

20:                                               ; preds = %17
  %21 = load i64*, i64** %5, align 8
  store i64* %21, i64** %11, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = mul nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %54, %20
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %59

29:                                               ; preds = %25
  %30 = load i64*, i64** @s_gammatable, align 8
  %31 = load i64*, i64** %11, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i64, i64* %30, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** %11, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  store i64 %35, i64* %37, align 8
  %38 = load i64*, i64** @s_gammatable, align 8
  %39 = load i64*, i64** %11, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 1
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i64, i64* %38, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %11, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 1
  store i64 %43, i64* %45, align 8
  %46 = load i64*, i64** @s_gammatable, align 8
  %47 = load i64*, i64** %11, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 2
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i64, i64* %46, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** %11, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 2
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %29
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  %57 = load i64*, i64** %11, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 4
  store i64* %58, i64** %11, align 8
  br label %25

59:                                               ; preds = %25
  br label %60

60:                                               ; preds = %59, %17
  br label %150

61:                                               ; preds = %4
  %62 = load i64*, i64** %5, align 8
  store i64* %62, i64** %14, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = mul nsw i32 %63, %64
  store i32 %65, i32* %13, align 4
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @glConfig, i32 0, i32 0), align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %104

68:                                               ; preds = %61
  store i32 0, i32* %12, align 4
  br label %69

69:                                               ; preds = %98, %68
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %103

73:                                               ; preds = %69
  %74 = load i64*, i64** @s_intensitytable, align 8
  %75 = load i64*, i64** %14, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i64, i64* %74, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load i64*, i64** %14, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  store i64 %79, i64* %81, align 8
  %82 = load i64*, i64** @s_intensitytable, align 8
  %83 = load i64*, i64** %14, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 1
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i64, i64* %82, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = load i64*, i64** %14, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 1
  store i64 %87, i64* %89, align 8
  %90 = load i64*, i64** @s_intensitytable, align 8
  %91 = load i64*, i64** %14, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 2
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds i64, i64* %90, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = load i64*, i64** %14, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 2
  store i64 %95, i64* %97, align 8
  br label %98

98:                                               ; preds = %73
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %12, align 4
  %101 = load i64*, i64** %14, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 4
  store i64* %102, i64** %14, align 8
  br label %69

103:                                              ; preds = %69
  br label %149

104:                                              ; preds = %61
  store i32 0, i32* %12, align 4
  br label %105

105:                                              ; preds = %143, %104
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %148

109:                                              ; preds = %105
  %110 = load i64*, i64** @s_gammatable, align 8
  %111 = load i64*, i64** @s_intensitytable, align 8
  %112 = load i64*, i64** %14, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds i64, i64* %111, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i64, i64* %110, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = load i64*, i64** %14, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 0
  store i64 %118, i64* %120, align 8
  %121 = load i64*, i64** @s_gammatable, align 8
  %122 = load i64*, i64** @s_intensitytable, align 8
  %123 = load i64*, i64** %14, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 1
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds i64, i64* %122, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds i64, i64* %121, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = load i64*, i64** %14, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 1
  store i64 %129, i64* %131, align 8
  %132 = load i64*, i64** @s_gammatable, align 8
  %133 = load i64*, i64** @s_intensitytable, align 8
  %134 = load i64*, i64** %14, align 8
  %135 = getelementptr inbounds i64, i64* %134, i64 2
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds i64, i64* %133, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds i64, i64* %132, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = load i64*, i64** %14, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 2
  store i64 %140, i64* %142, align 8
  br label %143

143:                                              ; preds = %109
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %12, align 4
  %146 = load i64*, i64** %14, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 4
  store i64* %147, i64** %14, align 8
  br label %105

148:                                              ; preds = %105
  br label %149

149:                                              ; preds = %148, %103
  br label %150

150:                                              ; preds = %149, %60
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
