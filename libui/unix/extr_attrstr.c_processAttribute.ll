; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_attrstr.c_processAttribute.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_attrstr.c_processAttribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.foreachParams = type { i32 }
%struct.TYPE_4__ = type { i32 }

@PANGO_UNDERLINE_NONE = common dso_local global i32 0, align 4
@PANGO_UNDERLINE_SINGLE = common dso_local global i32 0, align 4
@PANGO_UNDERLINE_DOUBLE = common dso_local global i32 0, align 4
@PANGO_UNDERLINE_ERROR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@uiForEachContinue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64, i64, i8*)* @processAttribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @processAttribute(i32* %0, i32* %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.foreachParams*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = bitcast i8* %20 to %struct.foreachParams*
  store %struct.foreachParams* %21, %struct.foreachParams** %11, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @uiAttributeGetType(i32* %22)
  switch i32 %23, label %194 [
    i32 143, label %24
    i32 140, label %32
    i32 136, label %41
    i32 141, label %50
    i32 139, label %59
    i32 144, label %68
    i32 145, label %93
    i32 138, label %118
    i32 137, label %136
    i32 142, label %174
  ]

24:                                               ; preds = %5
  %25 = load %struct.foreachParams*, %struct.foreachParams** %11, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @uiAttributeFamily(i32* %28)
  %30 = call i32 @pango_attr_family_new(i32 %29)
  %31 = call i32 @addattr(%struct.foreachParams* %25, i64 %26, i64 %27, i32 %30)
  br label %195

32:                                               ; preds = %5
  %33 = load %struct.foreachParams*, %struct.foreachParams** %11, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @uiAttributeSize(i32* %36)
  %38 = call i32 @cairoToPango(i32 %37)
  %39 = call i32 @pango_attr_size_new(i32 %38)
  %40 = call i32 @addattr(%struct.foreachParams* %33, i64 %34, i64 %35, i32 %39)
  br label %195

41:                                               ; preds = %5
  %42 = load %struct.foreachParams*, %struct.foreachParams** %11, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @uiAttributeWeight(i32* %45)
  %47 = call i32 @uiprivWeightToPangoWeight(i32 %46)
  %48 = call i32 @pango_attr_weight_new(i32 %47)
  %49 = call i32 @addattr(%struct.foreachParams* %42, i64 %43, i64 %44, i32 %48)
  br label %195

50:                                               ; preds = %5
  %51 = load %struct.foreachParams*, %struct.foreachParams** %11, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @uiAttributeItalic(i32* %54)
  %56 = call i32 @uiprivItalicToPangoStyle(i32 %55)
  %57 = call i32 @pango_attr_style_new(i32 %56)
  %58 = call i32 @addattr(%struct.foreachParams* %51, i64 %52, i64 %53, i32 %57)
  br label %195

59:                                               ; preds = %5
  %60 = load %struct.foreachParams*, %struct.foreachParams** %11, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @uiAttributeStretch(i32* %63)
  %65 = call i32 @uiprivStretchToPangoStretch(i32 %64)
  %66 = call i32 @pango_attr_stretch_new(i32 %65)
  %67 = call i32 @addattr(%struct.foreachParams* %60, i64 %61, i64 %62, i32 %66)
  br label %195

68:                                               ; preds = %5
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @uiAttributeColor(i32* %69, double* %12, double* %13, double* %14, double* %15)
  %71 = load %struct.foreachParams*, %struct.foreachParams** %11, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* %9, align 8
  %74 = load double, double* %12, align 8
  %75 = fmul double %74, 6.553500e+04
  %76 = fptosi double %75 to i32
  %77 = load double, double* %13, align 8
  %78 = fmul double %77, 6.553500e+04
  %79 = fptosi double %78 to i32
  %80 = load double, double* %14, align 8
  %81 = fmul double %80, 6.553500e+04
  %82 = fptosi double %81 to i32
  %83 = call i32 @pango_attr_foreground_new(i32 %76, i32 %79, i32 %82)
  %84 = call i32 @addattr(%struct.foreachParams* %71, i64 %72, i64 %73, i32 %83)
  %85 = load %struct.foreachParams*, %struct.foreachParams** %11, align 8
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* %9, align 8
  %88 = load double, double* %15, align 8
  %89 = fmul double %88, 6.553500e+04
  %90 = fptosi double %89 to i32
  %91 = call i32 @uiprivFUTURE_pango_attr_foreground_alpha_new(i32 %90)
  %92 = call i32 @addattr(%struct.foreachParams* %85, i64 %86, i64 %87, i32 %91)
  br label %195

93:                                               ; preds = %5
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @uiAttributeColor(i32* %94, double* %12, double* %13, double* %14, double* %15)
  %96 = load %struct.foreachParams*, %struct.foreachParams** %11, align 8
  %97 = load i64, i64* %8, align 8
  %98 = load i64, i64* %9, align 8
  %99 = load double, double* %12, align 8
  %100 = fmul double %99, 6.553500e+04
  %101 = fptosi double %100 to i32
  %102 = load double, double* %13, align 8
  %103 = fmul double %102, 6.553500e+04
  %104 = fptosi double %103 to i32
  %105 = load double, double* %14, align 8
  %106 = fmul double %105, 6.553500e+04
  %107 = fptosi double %106 to i32
  %108 = call i32 @pango_attr_background_new(i32 %101, i32 %104, i32 %107)
  %109 = call i32 @addattr(%struct.foreachParams* %96, i64 %97, i64 %98, i32 %108)
  %110 = load %struct.foreachParams*, %struct.foreachParams** %11, align 8
  %111 = load i64, i64* %8, align 8
  %112 = load i64, i64* %9, align 8
  %113 = load double, double* %15, align 8
  %114 = fmul double %113, 6.553500e+04
  %115 = fptosi double %114 to i32
  %116 = call i32 @uiprivFUTURE_pango_attr_background_alpha_new(i32 %115)
  %117 = call i32 @addattr(%struct.foreachParams* %110, i64 %111, i64 %112, i32 %116)
  br label %195

118:                                              ; preds = %5
  %119 = load i32*, i32** %7, align 8
  %120 = call i32 @uiAttributeUnderline(i32* %119)
  switch i32 %120, label %129 [
    i32 130, label %121
    i32 129, label %123
    i32 131, label %125
    i32 128, label %127
  ]

121:                                              ; preds = %118
  %122 = load i32, i32* @PANGO_UNDERLINE_NONE, align 4
  store i32 %122, i32* %16, align 4
  br label %129

123:                                              ; preds = %118
  %124 = load i32, i32* @PANGO_UNDERLINE_SINGLE, align 4
  store i32 %124, i32* %16, align 4
  br label %129

125:                                              ; preds = %118
  %126 = load i32, i32* @PANGO_UNDERLINE_DOUBLE, align 4
  store i32 %126, i32* %16, align 4
  br label %129

127:                                              ; preds = %118
  %128 = load i32, i32* @PANGO_UNDERLINE_ERROR, align 4
  store i32 %128, i32* %16, align 4
  br label %129

129:                                              ; preds = %118, %127, %125, %123, %121
  %130 = load %struct.foreachParams*, %struct.foreachParams** %11, align 8
  %131 = load i64, i64* %8, align 8
  %132 = load i64, i64* %9, align 8
  %133 = load i32, i32* %16, align 4
  %134 = call i32 @pango_attr_underline_new(i32 %133)
  %135 = call i32 @addattr(%struct.foreachParams* %130, i64 %131, i64 %132, i32 %134)
  br label %195

136:                                              ; preds = %5
  %137 = load i32*, i32** %7, align 8
  %138 = call i32 @uiAttributeUnderlineColor(i32* %137, i32* %17, double* %12, double* %13, double* %14, double* %15)
  %139 = load i32, i32* %17, align 4
  switch i32 %139, label %173 [
    i32 134, label %140
    i32 132, label %155
    i32 133, label %161
    i32 135, label %167
  ]

140:                                              ; preds = %136
  %141 = load %struct.foreachParams*, %struct.foreachParams** %11, align 8
  %142 = load i64, i64* %8, align 8
  %143 = load i64, i64* %9, align 8
  %144 = load double, double* %12, align 8
  %145 = fmul double %144, 6.553500e+04
  %146 = fptosi double %145 to i32
  %147 = load double, double* %13, align 8
  %148 = fmul double %147, 6.553500e+04
  %149 = fptosi double %148 to i32
  %150 = load double, double* %14, align 8
  %151 = fmul double %150, 6.553500e+04
  %152 = fptosi double %151 to i32
  %153 = call i32 @pango_attr_underline_color_new(i32 %146, i32 %149, i32 %152)
  %154 = call i32 @addattr(%struct.foreachParams* %141, i64 %142, i64 %143, i32 %153)
  br label %173

155:                                              ; preds = %136
  %156 = load %struct.foreachParams*, %struct.foreachParams** %11, align 8
  %157 = load i64, i64* %8, align 8
  %158 = load i64, i64* %9, align 8
  %159 = call i32 @pango_attr_underline_color_new(i32 65535, i32 0, i32 0)
  %160 = call i32 @addattr(%struct.foreachParams* %156, i64 %157, i64 %158, i32 %159)
  br label %173

161:                                              ; preds = %136
  %162 = load %struct.foreachParams*, %struct.foreachParams** %11, align 8
  %163 = load i64, i64* %8, align 8
  %164 = load i64, i64* %9, align 8
  %165 = call i32 @pango_attr_underline_color_new(i32 0, i32 65535, i32 0)
  %166 = call i32 @addattr(%struct.foreachParams* %162, i64 %163, i64 %164, i32 %165)
  br label %173

167:                                              ; preds = %136
  %168 = load %struct.foreachParams*, %struct.foreachParams** %11, align 8
  %169 = load i64, i64* %8, align 8
  %170 = load i64, i64* %9, align 8
  %171 = call i32 @pango_attr_underline_color_new(i32 0, i32 0, i32 65535)
  %172 = call i32 @addattr(%struct.foreachParams* %168, i64 %169, i64 %170, i32 %171)
  br label %173

173:                                              ; preds = %136, %167, %161, %155, %140
  br label %195

174:                                              ; preds = %5
  %175 = load i32*, i32** %7, align 8
  %176 = call i32* @uiAttributeFeatures(i32* %175)
  store i32* %176, i32** %18, align 8
  %177 = load i32*, i32** %18, align 8
  %178 = icmp eq i32* %177, null
  br i1 %178, label %179, label %180

179:                                              ; preds = %174
  br label %195

180:                                              ; preds = %174
  %181 = load i32*, i32** %18, align 8
  %182 = call %struct.TYPE_4__* @uiprivOpenTypeFeaturesToPangoCSSFeaturesString(i32* %181)
  store %struct.TYPE_4__* %182, %struct.TYPE_4__** %19, align 8
  %183 = load %struct.foreachParams*, %struct.foreachParams** %11, align 8
  %184 = load i64, i64* %8, align 8
  %185 = load i64, i64* %9, align 8
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @uiprivFUTURE_pango_attr_font_features_new(i32 %188)
  %190 = call i32 @addattr(%struct.foreachParams* %183, i64 %184, i64 %185, i32 %189)
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %192 = load i32, i32* @TRUE, align 4
  %193 = call i32 @g_string_free(%struct.TYPE_4__* %191, i32 %192)
  br label %195

194:                                              ; preds = %5
  br label %195

195:                                              ; preds = %194, %180, %179, %173, %129, %93, %68, %59, %50, %41, %32, %24
  %196 = load i32, i32* @uiForEachContinue, align 4
  ret i32 %196
}

declare dso_local i32 @uiAttributeGetType(i32*) #1

declare dso_local i32 @addattr(%struct.foreachParams*, i64, i64, i32) #1

declare dso_local i32 @pango_attr_family_new(i32) #1

declare dso_local i32 @uiAttributeFamily(i32*) #1

declare dso_local i32 @pango_attr_size_new(i32) #1

declare dso_local i32 @cairoToPango(i32) #1

declare dso_local i32 @uiAttributeSize(i32*) #1

declare dso_local i32 @pango_attr_weight_new(i32) #1

declare dso_local i32 @uiprivWeightToPangoWeight(i32) #1

declare dso_local i32 @uiAttributeWeight(i32*) #1

declare dso_local i32 @pango_attr_style_new(i32) #1

declare dso_local i32 @uiprivItalicToPangoStyle(i32) #1

declare dso_local i32 @uiAttributeItalic(i32*) #1

declare dso_local i32 @pango_attr_stretch_new(i32) #1

declare dso_local i32 @uiprivStretchToPangoStretch(i32) #1

declare dso_local i32 @uiAttributeStretch(i32*) #1

declare dso_local i32 @uiAttributeColor(i32*, double*, double*, double*, double*) #1

declare dso_local i32 @pango_attr_foreground_new(i32, i32, i32) #1

declare dso_local i32 @uiprivFUTURE_pango_attr_foreground_alpha_new(i32) #1

declare dso_local i32 @pango_attr_background_new(i32, i32, i32) #1

declare dso_local i32 @uiprivFUTURE_pango_attr_background_alpha_new(i32) #1

declare dso_local i32 @uiAttributeUnderline(i32*) #1

declare dso_local i32 @pango_attr_underline_new(i32) #1

declare dso_local i32 @uiAttributeUnderlineColor(i32*, i32*, double*, double*, double*, double*) #1

declare dso_local i32 @pango_attr_underline_color_new(i32, i32, i32) #1

declare dso_local i32* @uiAttributeFeatures(i32*) #1

declare dso_local %struct.TYPE_4__* @uiprivOpenTypeFeaturesToPangoCSSFeaturesString(i32*) #1

declare dso_local i32 @uiprivFUTURE_pango_attr_font_features_new(i32) #1

declare dso_local i32 @g_string_free(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
