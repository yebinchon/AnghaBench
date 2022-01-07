; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_x11_window.c_writeTargetToProperty.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_x11_window.c_writeTargetToProperty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i8*, i8*, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_6__ = type { i64, i64, i64, i32 }

@_glfw = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@XA_STRING = common dso_local global i64 0, align 8
@None = common dso_local global i64 0, align 8
@XA_ATOM = common dso_local global i64 0, align 8
@PropModeReplace = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*)* @writeTargetToProperty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @writeTargetToProperty(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca [2 x i64], align 16
  %7 = alloca i32, align 4
  %8 = alloca [4 x i64], align 16
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* null, i8** %5, align 8
  %13 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 0), align 8
  store i64 %14, i64* %13, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 1
  %16 = load i64, i64* @XA_STRING, align 8
  store i64 %16, i64* %15, align 8
  store i32 2, i32* %7, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 1), align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 2), align 8
  store i8* %23, i8** %5, align 8
  br label %26

24:                                               ; preds = %1
  %25 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 3), align 8
  store i8* %25, i8** %5, align 8
  br label %26

26:                                               ; preds = %24, %22
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @None, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i64, i64* @None, align 8
  store i64 %33, i64* %2, align 8
  br label %212

34:                                               ; preds = %26
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 4), align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %34
  %41 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 4), align 8
  store i64 %42, i64* %41, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 1
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 5), align 8
  store i64 %44, i64* %43, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 1
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 0), align 8
  store i64 %46, i64* %45, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 1
  %48 = load i64, i64* @XA_STRING, align 8
  store i64 %48, i64* %47, align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 9), align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @XA_ATOM, align 8
  %57 = load i32, i32* @PropModeReplace, align 4
  %58 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0
  %59 = bitcast i64* %58 to i8*
  %60 = call i32 @XChangeProperty(i32 %49, i32 %52, i64 %55, i64 %56, i32 32, i32 %57, i8* %59, i64 4)
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %2, align 8
  br label %212

64:                                               ; preds = %34
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 5), align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %154

70:                                               ; preds = %64
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 6), align 8
  %78 = bitcast i64** %9 to i8**
  %79 = call i64 @_glfwGetWindowPropertyX11(i32 %73, i64 %76, i64 %77, i8** %78)
  store i64 %79, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %80

80:                                               ; preds = %132, %70
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* %11, align 8
  %83 = icmp ult i64 %81, %82
  br i1 %83, label %84, label %135

84:                                               ; preds = %80
  store i32 0, i32* %12, align 4
  br label %85

85:                                               ; preds = %100, %84
  %86 = load i32, i32* %12, align 4
  %87 = icmp slt i32 %86, 2
  br i1 %87, label %88, label %103

88:                                               ; preds = %85
  %89 = load i64*, i64** %9, align 8
  %90 = load i64, i64* %10, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %92, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %88
  br label %103

99:                                               ; preds = %88
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %12, align 4
  br label %85

103:                                              ; preds = %98, %85
  %104 = load i32, i32* %12, align 4
  %105 = icmp slt i32 %104, 2
  br i1 %105, label %106, label %125

106:                                              ; preds = %103
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 9), align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load i64*, i64** %9, align 8
  %112 = load i64, i64* %10, align 8
  %113 = add i64 %112, 1
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = load i64*, i64** %9, align 8
  %117 = load i64, i64* %10, align 8
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* @PropModeReplace, align 4
  %121 = load i8*, i8** %5, align 8
  %122 = load i8*, i8** %5, align 8
  %123 = call i64 @strlen(i8* %122)
  %124 = call i32 @XChangeProperty(i32 %107, i32 %110, i64 %115, i64 %119, i32 8, i32 %120, i8* %121, i64 %123)
  br label %131

125:                                              ; preds = %103
  %126 = load i64, i64* @None, align 8
  %127 = load i64*, i64** %9, align 8
  %128 = load i64, i64* %10, align 8
  %129 = add i64 %128, 1
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  store i64 %126, i64* %130, align 8
  br label %131

131:                                              ; preds = %125, %106
  br label %132

132:                                              ; preds = %131
  %133 = load i64, i64* %10, align 8
  %134 = add i64 %133, 2
  store i64 %134, i64* %10, align 8
  br label %80

135:                                              ; preds = %80
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 9), align 8
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 6), align 8
  %144 = load i32, i32* @PropModeReplace, align 4
  %145 = load i64*, i64** %9, align 8
  %146 = bitcast i64* %145 to i8*
  %147 = load i64, i64* %11, align 8
  %148 = call i32 @XChangeProperty(i32 %136, i32 %139, i64 %142, i64 %143, i32 32, i32 %144, i8* %146, i64 %147)
  %149 = load i64*, i64** %9, align 8
  %150 = call i32 @XFree(i64* %149)
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  store i64 %153, i64* %2, align 8
  br label %212

154:                                              ; preds = %64
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 7), align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %174

160:                                              ; preds = %154
  %161 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 9), align 8
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 8), align 8
  %169 = load i32, i32* @PropModeReplace, align 4
  %170 = call i32 @XChangeProperty(i32 %161, i32 %164, i64 %167, i64 %168, i32 32, i32 %169, i8* null, i64 0)
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  store i64 %173, i64* %2, align 8
  br label %212

174:                                              ; preds = %154
  store i32 0, i32* %4, align 4
  br label %175

175:                                              ; preds = %207, %174
  %176 = load i32, i32* %4, align 4
  %177 = icmp slt i32 %176, 2
  br i1 %177, label %178, label %210

178:                                              ; preds = %175
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = load i32, i32* %4, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = icmp eq i64 %181, %185
  br i1 %186, label %187, label %206

187:                                              ; preds = %178
  %188 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 9), align 8
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = load i32, i32* @PropModeReplace, align 4
  %199 = load i8*, i8** %5, align 8
  %200 = load i8*, i8** %5, align 8
  %201 = call i64 @strlen(i8* %200)
  %202 = call i32 @XChangeProperty(i32 %188, i32 %191, i64 %194, i64 %197, i32 8, i32 %198, i8* %199, i64 %201)
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  store i64 %205, i64* %2, align 8
  br label %212

206:                                              ; preds = %178
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %4, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %4, align 4
  br label %175

210:                                              ; preds = %175
  %211 = load i64, i64* @None, align 8
  store i64 %211, i64* %2, align 8
  br label %212

212:                                              ; preds = %210, %187, %160, %135, %40, %32
  %213 = load i64, i64* %2, align 8
  ret i64 %213
}

declare dso_local i32 @XChangeProperty(i32, i32, i64, i64, i32, i32, i8*, i64) #1

declare dso_local i64 @_glfwGetWindowPropertyX11(i32, i64, i64, i8**) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @XFree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
