; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_backend.c_GL_State.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_backend.c_GL_State.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32 (i32, i8*)* }

@glState = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@GLS_DEPTHFUNC_BITS = common dso_local global i64 0, align 8
@GLS_DEPTHFUNC_EQUAL = common dso_local global i64 0, align 8
@GL_EQUAL = common dso_local global i32 0, align 4
@GLS_DEPTHFUNC_GREATER = common dso_local global i64 0, align 8
@GL_GREATER = common dso_local global i32 0, align 4
@GL_LEQUAL = common dso_local global i32 0, align 4
@GLS_SRCBLEND_BITS = common dso_local global i64 0, align 8
@GLS_DSTBLEND_BITS = common dso_local global i64 0, align 8
@GL_BLEND = common dso_local global i32 0, align 4
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
@GLS_DEPTHMASK_TRUE = common dso_local global i64 0, align 8
@GL_TRUE = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i32 0, align 4
@GLS_POLYMODE_LINE = common dso_local global i64 0, align 8
@GL_FRONT_AND_BACK = common dso_local global i32 0, align 4
@GL_LINE = common dso_local global i32 0, align 4
@GL_FILL = common dso_local global i32 0, align 4
@GLS_DEPTHTEST_DISABLE = common dso_local global i64 0, align 8
@GL_DEPTH_TEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GL_State(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glState, i32 0, i32 0), align 8
  %11 = xor i64 %9, %10
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* %3, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %204

15:                                               ; preds = %1
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @GLS_DEPTHFUNC_BITS, align 8
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %15
  %21 = load i64, i64* %2, align 8
  %22 = load i64, i64* @GLS_DEPTHFUNC_EQUAL, align 8
  %23 = and i64 %21, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @GL_EQUAL, align 4
  %27 = call i32 @qglDepthFunc(i32 %26)
  br label %40

28:                                               ; preds = %20
  %29 = load i64, i64* %2, align 8
  %30 = load i64, i64* @GLS_DEPTHFUNC_GREATER, align 8
  %31 = and i64 %29, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @GL_GREATER, align 4
  %35 = call i32 @qglDepthFunc(i32 %34)
  br label %39

36:                                               ; preds = %28
  %37 = load i32, i32* @GL_LEQUAL, align 4
  %38 = call i32 @qglDepthFunc(i32 %37)
  br label %39

39:                                               ; preds = %36, %33
  br label %40

40:                                               ; preds = %39, %25
  br label %41

41:                                               ; preds = %40, %15
  %42 = load i64, i64* %3, align 8
  %43 = load i64, i64* @GLS_SRCBLEND_BITS, align 8
  %44 = load i64, i64* @GLS_DSTBLEND_BITS, align 8
  %45 = or i64 %43, %44
  %46 = and i64 %42, %45
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %149

48:                                               ; preds = %41
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glState, i32 0, i32 0), align 8
  %50 = load i64, i64* @GLS_SRCBLEND_BITS, align 8
  %51 = load i64, i64* @GLS_DSTBLEND_BITS, align 8
  %52 = or i64 %50, %51
  %53 = and i64 %49, %52
  store i64 %53, i64* %4, align 8
  %54 = load i64, i64* %2, align 8
  %55 = load i64, i64* @GLS_SRCBLEND_BITS, align 8
  %56 = load i64, i64* @GLS_DSTBLEND_BITS, align 8
  %57 = or i64 %55, %56
  %58 = and i64 %54, %57
  store i64 %58, i64* %5, align 8
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glState, i32 0, i32 1), align 8
  %60 = load i64, i64* @GLS_SRCBLEND_BITS, align 8
  %61 = load i64, i64* @GLS_DSTBLEND_BITS, align 8
  %62 = or i64 %60, %61
  %63 = and i64 %59, %62
  store i64 %63, i64* %6, align 8
  %64 = load i64, i64* %4, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %48
  %67 = load i32, i32* @GL_BLEND, align 4
  %68 = call i32 @qglEnable(i32 %67)
  br label %76

69:                                               ; preds = %48
  %70 = load i64, i64* %5, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* @GL_BLEND, align 4
  %74 = call i32 @qglDisable(i32 %73)
  br label %75

75:                                               ; preds = %72, %69
  br label %76

76:                                               ; preds = %75, %66
  %77 = load i64, i64* %5, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %148

79:                                               ; preds = %76
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* %5, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %148

83:                                               ; preds = %79
  %84 = load i32, i32* @GL_ONE, align 4
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* @GL_ONE, align 4
  store i32 %85, i32* %8, align 4
  %86 = load i64, i64* @GLS_SRCBLEND_BITS, align 8
  %87 = load i64, i64* @GLS_DSTBLEND_BITS, align 8
  %88 = or i64 %86, %87
  %89 = xor i64 %88, -1
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glState, i32 0, i32 1), align 8
  %91 = and i64 %90, %89
  store i64 %91, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glState, i32 0, i32 1), align 8
  %92 = load i64, i64* %5, align 8
  %93 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glState, i32 0, i32 1), align 8
  %94 = or i64 %93, %92
  store i64 %94, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glState, i32 0, i32 1), align 8
  %95 = load i64, i64* %2, align 8
  %96 = load i64, i64* @GLS_SRCBLEND_BITS, align 8
  %97 = and i64 %95, %96
  switch i64 %97, label %116 [
    i64 128, label %98
    i64 133, label %100
    i64 134, label %102
    i64 131, label %104
    i64 129, label %106
    i64 130, label %108
    i64 135, label %110
    i64 132, label %112
    i64 136, label %114
  ]

98:                                               ; preds = %83
  %99 = load i32, i32* @GL_ZERO, align 4
  store i32 %99, i32* %7, align 4
  br label %120

100:                                              ; preds = %83
  %101 = load i32, i32* @GL_ONE, align 4
  store i32 %101, i32* %7, align 4
  br label %120

102:                                              ; preds = %83
  %103 = load i32, i32* @GL_DST_COLOR, align 4
  store i32 %103, i32* %7, align 4
  br label %120

104:                                              ; preds = %83
  %105 = load i32, i32* @GL_ONE_MINUS_DST_COLOR, align 4
  store i32 %105, i32* %7, align 4
  br label %120

106:                                              ; preds = %83
  %107 = load i32, i32* @GL_SRC_ALPHA, align 4
  store i32 %107, i32* %7, align 4
  br label %120

108:                                              ; preds = %83
  %109 = load i32, i32* @GL_ONE_MINUS_SRC_ALPHA, align 4
  store i32 %109, i32* %7, align 4
  br label %120

110:                                              ; preds = %83
  %111 = load i32, i32* @GL_DST_ALPHA, align 4
  store i32 %111, i32* %7, align 4
  br label %120

112:                                              ; preds = %83
  %113 = load i32, i32* @GL_ONE_MINUS_DST_ALPHA, align 4
  store i32 %113, i32* %7, align 4
  br label %120

114:                                              ; preds = %83
  %115 = load i32, i32* @GL_SRC_ALPHA_SATURATE, align 4
  store i32 %115, i32* %7, align 4
  br label %120

116:                                              ; preds = %83
  %117 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ri, i32 0, i32 0), align 8
  %118 = load i32, i32* @ERR_DROP, align 4
  %119 = call i32 %117(i32 %118, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %120

120:                                              ; preds = %116, %114, %112, %110, %108, %106, %104, %102, %100, %98
  %121 = load i64, i64* %2, align 8
  %122 = load i64, i64* @GLS_DSTBLEND_BITS, align 8
  %123 = and i64 %121, %122
  switch i64 %123, label %140 [
    i64 137, label %124
    i64 143, label %126
    i64 138, label %128
    i64 140, label %130
    i64 139, label %132
    i64 141, label %134
    i64 144, label %136
    i64 142, label %138
  ]

124:                                              ; preds = %120
  %125 = load i32, i32* @GL_ZERO, align 4
  store i32 %125, i32* %8, align 4
  br label %144

126:                                              ; preds = %120
  %127 = load i32, i32* @GL_ONE, align 4
  store i32 %127, i32* %8, align 4
  br label %144

128:                                              ; preds = %120
  %129 = load i32, i32* @GL_SRC_COLOR, align 4
  store i32 %129, i32* %8, align 4
  br label %144

130:                                              ; preds = %120
  %131 = load i32, i32* @GL_ONE_MINUS_SRC_COLOR, align 4
  store i32 %131, i32* %8, align 4
  br label %144

132:                                              ; preds = %120
  %133 = load i32, i32* @GL_SRC_ALPHA, align 4
  store i32 %133, i32* %8, align 4
  br label %144

134:                                              ; preds = %120
  %135 = load i32, i32* @GL_ONE_MINUS_SRC_ALPHA, align 4
  store i32 %135, i32* %8, align 4
  br label %144

136:                                              ; preds = %120
  %137 = load i32, i32* @GL_DST_ALPHA, align 4
  store i32 %137, i32* %8, align 4
  br label %144

138:                                              ; preds = %120
  %139 = load i32, i32* @GL_ONE_MINUS_DST_ALPHA, align 4
  store i32 %139, i32* %8, align 4
  br label %144

140:                                              ; preds = %120
  %141 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ri, i32 0, i32 0), align 8
  %142 = load i32, i32* @ERR_DROP, align 4
  %143 = call i32 %141(i32 %142, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %144

144:                                              ; preds = %140, %138, %136, %134, %132, %130, %128, %126, %124
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @qglBlendFunc(i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %144, %79, %76
  br label %149

149:                                              ; preds = %148, %41
  %150 = load i64, i64* %3, align 8
  %151 = load i64, i64* @GLS_DEPTHMASK_TRUE, align 8
  %152 = and i64 %150, %151
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %166

154:                                              ; preds = %149
  %155 = load i64, i64* %2, align 8
  %156 = load i64, i64* @GLS_DEPTHMASK_TRUE, align 8
  %157 = and i64 %155, %156
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %154
  %160 = load i32, i32* @GL_TRUE, align 4
  %161 = call i32 @qglDepthMask(i32 %160)
  br label %165

162:                                              ; preds = %154
  %163 = load i32, i32* @GL_FALSE, align 4
  %164 = call i32 @qglDepthMask(i32 %163)
  br label %165

165:                                              ; preds = %162, %159
  br label %166

166:                                              ; preds = %165, %149
  %167 = load i64, i64* %3, align 8
  %168 = load i64, i64* @GLS_POLYMODE_LINE, align 8
  %169 = and i64 %167, %168
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %185

171:                                              ; preds = %166
  %172 = load i64, i64* %2, align 8
  %173 = load i64, i64* @GLS_POLYMODE_LINE, align 8
  %174 = and i64 %172, %173
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %171
  %177 = load i32, i32* @GL_FRONT_AND_BACK, align 4
  %178 = load i32, i32* @GL_LINE, align 4
  %179 = call i32 @qglPolygonMode(i32 %177, i32 %178)
  br label %184

180:                                              ; preds = %171
  %181 = load i32, i32* @GL_FRONT_AND_BACK, align 4
  %182 = load i32, i32* @GL_FILL, align 4
  %183 = call i32 @qglPolygonMode(i32 %181, i32 %182)
  br label %184

184:                                              ; preds = %180, %176
  br label %185

185:                                              ; preds = %184, %166
  %186 = load i64, i64* %3, align 8
  %187 = load i64, i64* @GLS_DEPTHTEST_DISABLE, align 8
  %188 = and i64 %186, %187
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %202

190:                                              ; preds = %185
  %191 = load i64, i64* %2, align 8
  %192 = load i64, i64* @GLS_DEPTHTEST_DISABLE, align 8
  %193 = and i64 %191, %192
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %190
  %196 = load i32, i32* @GL_DEPTH_TEST, align 4
  %197 = call i32 @qglDisable(i32 %196)
  br label %201

198:                                              ; preds = %190
  %199 = load i32, i32* @GL_DEPTH_TEST, align 4
  %200 = call i32 @qglEnable(i32 %199)
  br label %201

201:                                              ; preds = %198, %195
  br label %202

202:                                              ; preds = %201, %185
  %203 = load i64, i64* %2, align 8
  store i64 %203, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glState, i32 0, i32 0), align 8
  br label %204

204:                                              ; preds = %202, %14
  ret void
}

declare dso_local i32 @qglDepthFunc(i32) #1

declare dso_local i32 @qglEnable(i32) #1

declare dso_local i32 @qglDisable(i32) #1

declare dso_local i32 @qglBlendFunc(i32, i32) #1

declare dso_local i32 @qglDepthMask(i32) #1

declare dso_local i32 @qglPolygonMode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
