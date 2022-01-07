; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Item_TextColor.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Item_TextColor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32, i64*, i64*, %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32, double*, i32 }
%struct.TYPE_8__ = type { double*, double*, i32, i32, i32 }

@qtrue = common dso_local global i32 0, align 4
@WINDOW_HASFOCUS = common dso_local global i32 0, align 4
@DC = common dso_local global %struct.TYPE_10__* null, align 8
@PULSE_DIVISOR = common dso_local global i32 0, align 4
@ITEM_TEXTSTYLE_BLINK = common dso_local global i64 0, align 8
@BLINK_DIVISOR = common dso_local global i32 0, align 4
@CVAR_ENABLE = common dso_local global i32 0, align 4
@CVAR_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Item_TextColor(%struct.TYPE_9__* %0, double** %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca double**, align 8
  %5 = alloca double*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store double** %1, double*** %4, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %6, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load double*, double** %16, align 8
  %18 = getelementptr inbounds double, double* %17, i64 3
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @qtrue, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @Fade(i32* %13, double* %18, i32 %21, i32* %24, i32 %27, i32 %28, i32 %31)
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @WINDOW_HASFOCUS, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %88

40:                                               ; preds = %2
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load double*, double** %42, align 8
  %44 = getelementptr inbounds double, double* %43, i64 0
  %45 = load double, double* %44, align 8
  %46 = fmul double 8.000000e-01, %45
  %47 = load double*, double** %5, align 8
  %48 = getelementptr inbounds double, double* %47, i64 0
  store double %46, double* %48, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load double*, double** %50, align 8
  %52 = getelementptr inbounds double, double* %51, i64 1
  %53 = load double, double* %52, align 8
  %54 = fmul double 8.000000e-01, %53
  %55 = load double*, double** %5, align 8
  %56 = getelementptr inbounds double, double* %55, i64 1
  store double %54, double* %56, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load double*, double** %58, align 8
  %60 = getelementptr inbounds double, double* %59, i64 2
  %61 = load double, double* %60, align 8
  %62 = fmul double 8.000000e-01, %61
  %63 = load double*, double** %5, align 8
  %64 = getelementptr inbounds double, double* %63, i64 2
  store double %62, double* %64, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load double*, double** %66, align 8
  %68 = getelementptr inbounds double, double* %67, i64 3
  %69 = load double, double* %68, align 8
  %70 = fmul double 8.000000e-01, %69
  %71 = load double*, double** %5, align 8
  %72 = getelementptr inbounds double, double* %71, i64 3
  store double %70, double* %72, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load double*, double** %74, align 8
  %76 = load double*, double** %5, align 8
  %77 = load double**, double*** %4, align 8
  %78 = load double*, double** %77, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DC, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @PULSE_DIVISOR, align 4
  %83 = sdiv i32 %81, %82
  %84 = call double @sin(i32 %83)
  %85 = fmul double 5.000000e-01, %84
  %86 = fadd double 5.000000e-01, %85
  %87 = call i32 @LerpColor(double* %75, double* %76, double* %78, double %86)
  br label %162

88:                                               ; preds = %2
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @ITEM_TEXTSTYLE_BLINK, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %155

94:                                               ; preds = %88
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DC, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @BLINK_DIVISOR, align 4
  %99 = sdiv i32 %97, %98
  %100 = and i32 %99, 1
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %155, label %102

102:                                              ; preds = %94
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load double*, double** %105, align 8
  %107 = getelementptr inbounds double, double* %106, i64 0
  %108 = load double, double* %107, align 8
  %109 = fmul double 8.000000e-01, %108
  %110 = load double*, double** %5, align 8
  %111 = getelementptr inbounds double, double* %110, i64 0
  store double %109, double* %111, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load double*, double** %114, align 8
  %116 = getelementptr inbounds double, double* %115, i64 1
  %117 = load double, double* %116, align 8
  %118 = fmul double 8.000000e-01, %117
  %119 = load double*, double** %5, align 8
  %120 = getelementptr inbounds double, double* %119, i64 1
  store double %118, double* %120, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = load double*, double** %123, align 8
  %125 = getelementptr inbounds double, double* %124, i64 2
  %126 = load double, double* %125, align 8
  %127 = fmul double 8.000000e-01, %126
  %128 = load double*, double** %5, align 8
  %129 = getelementptr inbounds double, double* %128, i64 2
  store double %127, double* %129, align 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  %133 = load double*, double** %132, align 8
  %134 = getelementptr inbounds double, double* %133, i64 3
  %135 = load double, double* %134, align 8
  %136 = fmul double 8.000000e-01, %135
  %137 = load double*, double** %5, align 8
  %138 = getelementptr inbounds double, double* %137, i64 3
  store double %136, double* %138, align 8
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  %142 = load double*, double** %141, align 8
  %143 = load double*, double** %5, align 8
  %144 = load double**, double*** %4, align 8
  %145 = load double*, double** %144, align 8
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DC, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @PULSE_DIVISOR, align 4
  %150 = sdiv i32 %148, %149
  %151 = call double @sin(i32 %150)
  %152 = fmul double 5.000000e-01, %151
  %153 = fadd double 5.000000e-01, %152
  %154 = call i32 @LerpColor(double* %142, double* %143, double* %145, double %153)
  br label %161

155:                                              ; preds = %94, %88
  %156 = load double**, double*** %4, align 8
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 4
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 1
  %160 = call i32 @memcpy(double** %156, double** %159, i32 8)
  br label %161

161:                                              ; preds = %155, %102
  br label %162

162:                                              ; preds = %161, %40
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 3
  %165 = load i64*, i64** %164, align 8
  %166 = icmp ne i64* %165, null
  br i1 %166, label %167, label %204

167:                                              ; preds = %162
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 3
  %170 = load i64*, i64** %169, align 8
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %204

173:                                              ; preds = %167
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 2
  %176 = load i64*, i64** %175, align 8
  %177 = icmp ne i64* %176, null
  br i1 %177, label %178, label %204

178:                                              ; preds = %173
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 2
  %181 = load i64*, i64** %180, align 8
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %204

184:                                              ; preds = %178
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @CVAR_ENABLE, align 4
  %189 = load i32, i32* @CVAR_DISABLE, align 4
  %190 = or i32 %188, %189
  %191 = and i32 %187, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %203

193:                                              ; preds = %184
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %195 = load i32, i32* @CVAR_ENABLE, align 4
  %196 = call i32 @Item_EnableShowViaCvar(%struct.TYPE_9__* %194, i32 %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %203, label %198

198:                                              ; preds = %193
  %199 = load double**, double*** %4, align 8
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 1
  %202 = call i32 @memcpy(double** %199, double** %201, i32 8)
  br label %203

203:                                              ; preds = %198, %193, %184
  br label %204

204:                                              ; preds = %203, %178, %173, %167, %162
  ret void
}

declare dso_local i32 @Fade(i32*, double*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @LerpColor(double*, double*, double*, double) #1

declare dso_local double @sin(i32) #1

declare dso_local i32 @memcpy(double**, double**, i32) #1

declare dso_local i32 @Item_EnableShowViaCvar(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
