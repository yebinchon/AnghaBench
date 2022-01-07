; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_DrawWarmup.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_DrawWarmup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i32, i64 }

@cg = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str = private unnamed_addr constant [20 x i8] c"Waiting for players\00", align 1
@BIGCHAR_WIDTH = common dso_local global i32 0, align 4
@cgs = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@GT_TOURNAMENT = common dso_local global i64 0, align 8
@TEAM_FREE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"%s vs %s\00", align 1
@GIANT_WIDTH = common dso_local global i32 0, align 4
@colorWhite = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@GT_FFA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"Free For All\00", align 1
@GT_TEAM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"Team Deathmatch\00", align 1
@GT_CTF = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"Capture the Flag\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Starts in: %i\00", align 1
@CHAN_ANNOUNCER = common dso_local global i32 0, align 4
@GT_1FCTF = common dso_local global i64 0, align 8
@GT_HARVESTER = common dso_local global i64 0, align 8
@GT_OBELISK = common dso_local global i64 0, align 8
@ITEM_TEXTSTYLE_SHADOWEDMORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CG_DrawWarmup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_DrawWarmup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 4
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %0
  br label %213

12:                                               ; preds = %0
  %13 = load i32, i32* %2, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @CG_DrawStrlen(i8* %16)
  %18 = load i32, i32* @BIGCHAR_WIDTH, align 4
  %19 = mul nsw i32 %17, %18
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* %1, align 4
  %21 = sdiv i32 %20, 2
  %22 = sub nsw i32 320, %21
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @CG_DrawBigString(i32 %22, i32 24, i8* %23, float 1.000000e+00)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 4
  br label %213

25:                                               ; preds = %12
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 0), align 8
  %27 = load i64, i64* @GT_TOURNAMENT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %111

29:                                               ; preds = %25
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %66, %29
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 1), align 8
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %69

34:                                               ; preds = %30
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 3), align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %65

42:                                               ; preds = %34
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 3), align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @TEAM_FREE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %42
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = icmp ne %struct.TYPE_6__* %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 3), align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %57
  store %struct.TYPE_6__* %58, %struct.TYPE_6__** %5, align 8
  br label %64

59:                                               ; preds = %51
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 3), align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %62
  store %struct.TYPE_6__* %63, %struct.TYPE_6__** %6, align 8
  br label %64

64:                                               ; preds = %59, %54
  br label %65

65:                                               ; preds = %64, %42, %34
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %30

69:                                               ; preds = %30
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %71 = icmp ne %struct.TYPE_6__* %70, null
  br i1 %71, label %72, label %110

72:                                               ; preds = %69
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %74 = icmp ne %struct.TYPE_6__* %73, null
  br i1 %74, label %75, label %110

75:                                               ; preds = %72
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i8* (i8*, i32, ...) @va(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %81)
  store i8* %82, i8** %7, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = call i32 @CG_DrawStrlen(i8* %83)
  store i32 %84, i32* %1, align 4
  %85 = load i32, i32* %1, align 4
  %86 = load i32, i32* @GIANT_WIDTH, align 4
  %87 = sdiv i32 640, %86
  %88 = icmp sgt i32 %85, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %75
  %90 = load i32, i32* %1, align 4
  %91 = sdiv i32 640, %90
  store i32 %91, i32* %4, align 4
  br label %94

92:                                               ; preds = %75
  %93 = load i32, i32* @GIANT_WIDTH, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %92, %89
  %95 = load i32, i32* %1, align 4
  %96 = load i32, i32* %4, align 4
  %97 = mul nsw i32 %95, %96
  %98 = sdiv i32 %97, 2
  %99 = sub nsw i32 320, %98
  %100 = load i8*, i8** %7, align 8
  %101 = load i32, i32* @colorWhite, align 4
  %102 = load i32, i32* @qfalse, align 4
  %103 = load i32, i32* @qtrue, align 4
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = sitofp i32 %105 to float
  %107 = fmul float %106, 1.500000e+00
  %108 = fptosi float %107 to i32
  %109 = call i32 @CG_DrawStringExt(i32 %99, i32 20, i8* %100, i32 %101, i32 %102, i32 %103, i32 %104, i32 %108, i32 0)
  br label %110

110:                                              ; preds = %94, %72, %69
  br label %157

111:                                              ; preds = %25
  %112 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 0), align 8
  %113 = load i64, i64* @GT_FFA, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %129

116:                                              ; preds = %111
  %117 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 0), align 8
  %118 = load i64, i64* @GT_TEAM, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %128

121:                                              ; preds = %116
  %122 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 0), align 8
  %123 = load i64, i64* @GT_CTF, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %127

126:                                              ; preds = %121
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  br label %127

127:                                              ; preds = %126, %125
  br label %128

128:                                              ; preds = %127, %120
  br label %129

129:                                              ; preds = %128, %115
  %130 = load i8*, i8** %7, align 8
  %131 = call i32 @CG_DrawStrlen(i8* %130)
  store i32 %131, i32* %1, align 4
  %132 = load i32, i32* %1, align 4
  %133 = load i32, i32* @GIANT_WIDTH, align 4
  %134 = sdiv i32 640, %133
  %135 = icmp sgt i32 %132, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %129
  %137 = load i32, i32* %1, align 4
  %138 = sdiv i32 640, %137
  store i32 %138, i32* %4, align 4
  br label %141

139:                                              ; preds = %129
  %140 = load i32, i32* @GIANT_WIDTH, align 4
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %139, %136
  %142 = load i32, i32* %1, align 4
  %143 = load i32, i32* %4, align 4
  %144 = mul nsw i32 %142, %143
  %145 = sdiv i32 %144, 2
  %146 = sub nsw i32 320, %145
  %147 = load i8*, i8** %7, align 8
  %148 = load i32, i32* @colorWhite, align 4
  %149 = load i32, i32* @qfalse, align 4
  %150 = load i32, i32* @qtrue, align 4
  %151 = load i32, i32* %4, align 4
  %152 = load i32, i32* %4, align 4
  %153 = sitofp i32 %152 to float
  %154 = fmul float %153, 0x3FF19999A0000000
  %155 = fptosi float %154 to i32
  %156 = call i32 @CG_DrawStringExt(i32 %146, i32 25, i8* %147, i32 %148, i32 %149, i32 %150, i32 %151, i32 %155, i32 0)
  br label %157

157:                                              ; preds = %141, %110
  %158 = load i32, i32* %2, align 4
  %159 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 2), align 4
  %160 = sub nsw i32 %158, %159
  %161 = sdiv i32 %160, 1000
  store i32 %161, i32* %2, align 4
  %162 = load i32, i32* %2, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %157
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 4
  store i32 0, i32* %2, align 4
  br label %165

165:                                              ; preds = %164, %157
  %166 = load i32, i32* %2, align 4
  %167 = add nsw i32 %166, 1
  %168 = call i8* (i8*, i32, ...) @va(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %167)
  store i8* %168, i8** %7, align 8
  %169 = load i32, i32* %2, align 4
  %170 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %189

172:                                              ; preds = %165
  %173 = load i32, i32* %2, align 4
  store i32 %173, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 4
  %174 = load i32, i32* %2, align 4
  switch i32 %174, label %187 [
    i32 0, label %175
    i32 1, label %179
    i32 2, label %183
  ]

175:                                              ; preds = %172
  %176 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 2, i32 2), align 4
  %177 = load i32, i32* @CHAN_ANNOUNCER, align 4
  %178 = call i32 @trap_S_StartLocalSound(i32 %176, i32 %177)
  br label %188

179:                                              ; preds = %172
  %180 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 2, i32 1), align 4
  %181 = load i32, i32* @CHAN_ANNOUNCER, align 4
  %182 = call i32 @trap_S_StartLocalSound(i32 %180, i32 %181)
  br label %188

183:                                              ; preds = %172
  %184 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 2, i32 0), align 4
  %185 = load i32, i32* @CHAN_ANNOUNCER, align 4
  %186 = call i32 @trap_S_StartLocalSound(i32 %184, i32 %185)
  br label %188

187:                                              ; preds = %172
  br label %188

188:                                              ; preds = %187, %183, %179, %175
  br label %189

189:                                              ; preds = %188, %165
  %190 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 4
  switch i32 %190, label %194 [
    i32 0, label %191
    i32 1, label %192
    i32 2, label %193
  ]

191:                                              ; preds = %189
  store i32 28, i32* %4, align 4
  br label %195

192:                                              ; preds = %189
  store i32 24, i32* %4, align 4
  br label %195

193:                                              ; preds = %189
  store i32 20, i32* %4, align 4
  br label %195

194:                                              ; preds = %189
  store i32 16, i32* %4, align 4
  br label %195

195:                                              ; preds = %194, %193, %192, %191
  %196 = load i8*, i8** %7, align 8
  %197 = call i32 @CG_DrawStrlen(i8* %196)
  store i32 %197, i32* %1, align 4
  %198 = load i32, i32* %1, align 4
  %199 = load i32, i32* %4, align 4
  %200 = mul nsw i32 %198, %199
  %201 = sdiv i32 %200, 2
  %202 = sub nsw i32 320, %201
  %203 = load i8*, i8** %7, align 8
  %204 = load i32, i32* @colorWhite, align 4
  %205 = load i32, i32* @qfalse, align 4
  %206 = load i32, i32* @qtrue, align 4
  %207 = load i32, i32* %4, align 4
  %208 = load i32, i32* %4, align 4
  %209 = sitofp i32 %208 to double
  %210 = fmul double %209, 1.500000e+00
  %211 = fptosi double %210 to i32
  %212 = call i32 @CG_DrawStringExt(i32 %202, i32 70, i8* %203, i32 %204, i32 %205, i32 %206, i32 %207, i32 %211, i32 0)
  br label %213

213:                                              ; preds = %195, %15, %11
  ret void
}

declare dso_local i32 @CG_DrawStrlen(i8*) #1

declare dso_local i32 @CG_DrawBigString(i32, i32, i8*, float) #1

declare dso_local i8* @va(i8*, i32, ...) #1

declare dso_local i32 @CG_DrawStringExt(i32, i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @trap_S_StartLocalSound(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
