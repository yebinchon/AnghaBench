; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_backend.c_GL_State.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_backend.c_GL_State.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (i32, i8*)* }

@glState = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@GLS_DEPTHFUNC_EQUAL = common dso_local global i64 0, align 8
@GL_EQUAL = common dso_local global i32 0, align 4
@GL_LEQUAL = common dso_local global i32 0, align 4
@GLS_SRCBLEND_BITS = common dso_local global i64 0, align 8
@GLS_DSTBLEND_BITS = common dso_local global i64 0, align 8
@GL_ONE = common dso_local global i32 0, align 4
@GL_ZERO = common dso_local global i32 0, align 4
@GL_DST_COLOR = common dso_local global i32 0, align 4
@GL_ONE_MINUS_DST_COLOR = common dso_local global i32 0, align 4
@GL_SRC_ALPHA = common dso_local global i32 0, align 4
@GL_ONE_MINUS_SRC_ALPHA = common dso_local global i32 0, align 4
@GL_DST_ALPHA = common dso_local global i32 0, align 4
@GL_ONE_MINUS_DST_ALPHA = common dso_local global i32 0, align 4
@GL_SRC_ALPHA_SATURATE = common dso_local global i32 0, align 4
@ri = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"GL_State: invalid src blend state bits\00", align 1
@GL_SRC_COLOR = common dso_local global i32 0, align 4
@GL_ONE_MINUS_SRC_COLOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"GL_State: invalid dst blend state bits\00", align 1
@GL_BLEND = common dso_local global i32 0, align 4
@GLS_DEPTHMASK_TRUE = common dso_local global i64 0, align 8
@GL_TRUE = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i32 0, align 4
@GLS_POLYMODE_LINE = common dso_local global i64 0, align 8
@GL_FRONT_AND_BACK = common dso_local global i32 0, align 4
@GL_LINE = common dso_local global i32 0, align 4
@GL_FILL = common dso_local global i32 0, align 4
@GLS_DEPTHTEST_DISABLE = common dso_local global i64 0, align 8
@GL_DEPTH_TEST = common dso_local global i32 0, align 4
@GLS_ATEST_BITS = common dso_local global i64 0, align 8
@GL_ALPHA_TEST = common dso_local global i32 0, align 4
@GL_GREATER = common dso_local global i32 0, align 4
@GL_LESS = common dso_local global i32 0, align 4
@GL_GEQUAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GL_State(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glState, i32 0, i32 0), align 8
  %8 = xor i64 %6, %7
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %190

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @GLS_DEPTHFUNC_EQUAL, align 8
  %15 = and i64 %13, %14
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = load i64, i64* %2, align 8
  %19 = load i64, i64* @GLS_DEPTHFUNC_EQUAL, align 8
  %20 = and i64 %18, %19
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @GL_EQUAL, align 4
  %24 = call i32 @qglDepthFunc(i32 %23)
  br label %28

25:                                               ; preds = %17
  %26 = load i32, i32* @GL_LEQUAL, align 4
  %27 = call i32 @qglDepthFunc(i32 %26)
  br label %28

28:                                               ; preds = %25, %22
  br label %29

29:                                               ; preds = %28, %12
  %30 = load i64, i64* %3, align 8
  %31 = load i64, i64* @GLS_SRCBLEND_BITS, align 8
  %32 = load i64, i64* @GLS_DSTBLEND_BITS, align 8
  %33 = or i64 %31, %32
  %34 = and i64 %30, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %105

36:                                               ; preds = %29
  %37 = load i32, i32* @GL_ONE, align 4
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* @GL_ONE, align 4
  store i32 %38, i32* %5, align 4
  %39 = load i64, i64* %2, align 8
  %40 = load i64, i64* @GLS_SRCBLEND_BITS, align 8
  %41 = load i64, i64* @GLS_DSTBLEND_BITS, align 8
  %42 = or i64 %40, %41
  %43 = and i64 %39, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %101

45:                                               ; preds = %36
  %46 = load i64, i64* %2, align 8
  %47 = load i64, i64* @GLS_SRCBLEND_BITS, align 8
  %48 = and i64 %46, %47
  switch i64 %48, label %67 [
    i64 128, label %49
    i64 133, label %51
    i64 134, label %53
    i64 131, label %55
    i64 129, label %57
    i64 130, label %59
    i64 135, label %61
    i64 132, label %63
    i64 136, label %65
  ]

49:                                               ; preds = %45
  %50 = load i32, i32* @GL_ZERO, align 4
  store i32 %50, i32* %4, align 4
  br label %71

51:                                               ; preds = %45
  %52 = load i32, i32* @GL_ONE, align 4
  store i32 %52, i32* %4, align 4
  br label %71

53:                                               ; preds = %45
  %54 = load i32, i32* @GL_DST_COLOR, align 4
  store i32 %54, i32* %4, align 4
  br label %71

55:                                               ; preds = %45
  %56 = load i32, i32* @GL_ONE_MINUS_DST_COLOR, align 4
  store i32 %56, i32* %4, align 4
  br label %71

57:                                               ; preds = %45
  %58 = load i32, i32* @GL_SRC_ALPHA, align 4
  store i32 %58, i32* %4, align 4
  br label %71

59:                                               ; preds = %45
  %60 = load i32, i32* @GL_ONE_MINUS_SRC_ALPHA, align 4
  store i32 %60, i32* %4, align 4
  br label %71

61:                                               ; preds = %45
  %62 = load i32, i32* @GL_DST_ALPHA, align 4
  store i32 %62, i32* %4, align 4
  br label %71

63:                                               ; preds = %45
  %64 = load i32, i32* @GL_ONE_MINUS_DST_ALPHA, align 4
  store i32 %64, i32* %4, align 4
  br label %71

65:                                               ; preds = %45
  %66 = load i32, i32* @GL_SRC_ALPHA_SATURATE, align 4
  store i32 %66, i32* %4, align 4
  br label %71

67:                                               ; preds = %45
  %68 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ri, i32 0, i32 0), align 8
  %69 = load i32, i32* @ERR_DROP, align 4
  %70 = call i32 %68(i32 %69, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %67, %65, %63, %61, %59, %57, %55, %53, %51, %49
  %72 = load i64, i64* %2, align 8
  %73 = load i64, i64* @GLS_DSTBLEND_BITS, align 8
  %74 = and i64 %72, %73
  switch i64 %74, label %91 [
    i64 137, label %75
    i64 143, label %77
    i64 138, label %79
    i64 140, label %81
    i64 139, label %83
    i64 141, label %85
    i64 144, label %87
    i64 142, label %89
  ]

75:                                               ; preds = %71
  %76 = load i32, i32* @GL_ZERO, align 4
  store i32 %76, i32* %5, align 4
  br label %95

77:                                               ; preds = %71
  %78 = load i32, i32* @GL_ONE, align 4
  store i32 %78, i32* %5, align 4
  br label %95

79:                                               ; preds = %71
  %80 = load i32, i32* @GL_SRC_COLOR, align 4
  store i32 %80, i32* %5, align 4
  br label %95

81:                                               ; preds = %71
  %82 = load i32, i32* @GL_ONE_MINUS_SRC_COLOR, align 4
  store i32 %82, i32* %5, align 4
  br label %95

83:                                               ; preds = %71
  %84 = load i32, i32* @GL_SRC_ALPHA, align 4
  store i32 %84, i32* %5, align 4
  br label %95

85:                                               ; preds = %71
  %86 = load i32, i32* @GL_ONE_MINUS_SRC_ALPHA, align 4
  store i32 %86, i32* %5, align 4
  br label %95

87:                                               ; preds = %71
  %88 = load i32, i32* @GL_DST_ALPHA, align 4
  store i32 %88, i32* %5, align 4
  br label %95

89:                                               ; preds = %71
  %90 = load i32, i32* @GL_ONE_MINUS_DST_ALPHA, align 4
  store i32 %90, i32* %5, align 4
  br label %95

91:                                               ; preds = %71
  %92 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ri, i32 0, i32 0), align 8
  %93 = load i32, i32* @ERR_DROP, align 4
  %94 = call i32 %92(i32 %93, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %95

95:                                               ; preds = %91, %89, %87, %85, %83, %81, %79, %77, %75
  %96 = load i32, i32* @GL_BLEND, align 4
  %97 = call i32 @qglEnable(i32 %96)
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @qglBlendFunc(i32 %98, i32 %99)
  br label %104

101:                                              ; preds = %36
  %102 = load i32, i32* @GL_BLEND, align 4
  %103 = call i32 @qglDisable(i32 %102)
  br label %104

104:                                              ; preds = %101, %95
  br label %105

105:                                              ; preds = %104, %29
  %106 = load i64, i64* %3, align 8
  %107 = load i64, i64* @GLS_DEPTHMASK_TRUE, align 8
  %108 = and i64 %106, %107
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %105
  %111 = load i64, i64* %2, align 8
  %112 = load i64, i64* @GLS_DEPTHMASK_TRUE, align 8
  %113 = and i64 %111, %112
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i32, i32* @GL_TRUE, align 4
  %117 = call i32 @qglDepthMask(i32 %116)
  br label %121

118:                                              ; preds = %110
  %119 = load i32, i32* @GL_FALSE, align 4
  %120 = call i32 @qglDepthMask(i32 %119)
  br label %121

121:                                              ; preds = %118, %115
  br label %122

122:                                              ; preds = %121, %105
  %123 = load i64, i64* %3, align 8
  %124 = load i64, i64* @GLS_POLYMODE_LINE, align 8
  %125 = and i64 %123, %124
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %141

127:                                              ; preds = %122
  %128 = load i64, i64* %2, align 8
  %129 = load i64, i64* @GLS_POLYMODE_LINE, align 8
  %130 = and i64 %128, %129
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load i32, i32* @GL_FRONT_AND_BACK, align 4
  %134 = load i32, i32* @GL_LINE, align 4
  %135 = call i32 @qglPolygonMode(i32 %133, i32 %134)
  br label %140

136:                                              ; preds = %127
  %137 = load i32, i32* @GL_FRONT_AND_BACK, align 4
  %138 = load i32, i32* @GL_FILL, align 4
  %139 = call i32 @qglPolygonMode(i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %136, %132
  br label %141

141:                                              ; preds = %140, %122
  %142 = load i64, i64* %3, align 8
  %143 = load i64, i64* @GLS_DEPTHTEST_DISABLE, align 8
  %144 = and i64 %142, %143
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %141
  %147 = load i64, i64* %2, align 8
  %148 = load i64, i64* @GLS_DEPTHTEST_DISABLE, align 8
  %149 = and i64 %147, %148
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load i32, i32* @GL_DEPTH_TEST, align 4
  %153 = call i32 @qglDisable(i32 %152)
  br label %157

154:                                              ; preds = %146
  %155 = load i32, i32* @GL_DEPTH_TEST, align 4
  %156 = call i32 @qglEnable(i32 %155)
  br label %157

157:                                              ; preds = %154, %151
  br label %158

158:                                              ; preds = %157, %141
  %159 = load i64, i64* %3, align 8
  %160 = load i64, i64* @GLS_ATEST_BITS, align 8
  %161 = and i64 %159, %160
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %188

163:                                              ; preds = %158
  %164 = load i64, i64* %2, align 8
  %165 = load i64, i64* @GLS_ATEST_BITS, align 8
  %166 = and i64 %164, %165
  switch i64 %166, label %185 [
    i64 0, label %167
    i64 146, label %170
    i64 145, label %175
    i64 147, label %180
  ]

167:                                              ; preds = %163
  %168 = load i32, i32* @GL_ALPHA_TEST, align 4
  %169 = call i32 @qglDisable(i32 %168)
  br label %187

170:                                              ; preds = %163
  %171 = load i32, i32* @GL_ALPHA_TEST, align 4
  %172 = call i32 @qglEnable(i32 %171)
  %173 = load i32, i32* @GL_GREATER, align 4
  %174 = call i32 @qglAlphaFunc(i32 %173, float 0.000000e+00)
  br label %187

175:                                              ; preds = %163
  %176 = load i32, i32* @GL_ALPHA_TEST, align 4
  %177 = call i32 @qglEnable(i32 %176)
  %178 = load i32, i32* @GL_LESS, align 4
  %179 = call i32 @qglAlphaFunc(i32 %178, float 5.000000e-01)
  br label %187

180:                                              ; preds = %163
  %181 = load i32, i32* @GL_ALPHA_TEST, align 4
  %182 = call i32 @qglEnable(i32 %181)
  %183 = load i32, i32* @GL_GEQUAL, align 4
  %184 = call i32 @qglAlphaFunc(i32 %183, float 5.000000e-01)
  br label %187

185:                                              ; preds = %163
  %186 = call i32 @assert(i32 0)
  br label %187

187:                                              ; preds = %185, %180, %175, %170, %167
  br label %188

188:                                              ; preds = %187, %158
  %189 = load i64, i64* %2, align 8
  store i64 %189, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glState, i32 0, i32 0), align 8
  br label %190

190:                                              ; preds = %188, %11
  ret void
}

declare dso_local i32 @qglDepthFunc(i32) #1

declare dso_local i32 @qglEnable(i32) #1

declare dso_local i32 @qglBlendFunc(i32, i32) #1

declare dso_local i32 @qglDisable(i32) #1

declare dso_local i32 @qglDepthMask(i32) #1

declare dso_local i32 @qglPolygonMode(i32, i32) #1

declare dso_local i32 @qglAlphaFunc(i32, float) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
