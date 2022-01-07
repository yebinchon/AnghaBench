; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_weight.c_ReadFuzzySeperators_r.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_weight.c_ReadFuzzySeperators_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_9__*, i64 }
%struct.TYPE_8__ = type { i32, i32 }

@qfalse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"(\00", align 1
@TT_NUMBER = common dso_local global i32 0, align 4
@TT_INTEGER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"case\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"switch already has a default\00", align 1
@MAX_INVENTORYVALUE = common dso_local global i8* null, align 8
@qtrue = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"switch\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"invalid name %s\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"switch without default\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @ReadFuzzySeperators_r(i32* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %3, align 8
  %12 = load i32, i32* @qfalse, align 4
  store i32 %12, i32* %7, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %10, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @PC_ExpectTokenString(i32* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %230

17:                                               ; preds = %1
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @TT_NUMBER, align 4
  %20 = load i32, i32* @TT_INTEGER, align 4
  %21 = call i32 @PC_ExpectTokenType(i32* %18, i32 %19, i32 %20, %struct.TYPE_8__* %8)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %230

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %5, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @PC_ExpectTokenString(i32* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %230

31:                                               ; preds = %24
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @PC_ExpectTokenString(i32* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %230

36:                                               ; preds = %31
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @PC_ExpectAnyToken(i32* %37, %struct.TYPE_8__* %8)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %230

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %193, %41
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @strcmp(i32 %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @strcmp(i32 %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %178, label %56

56:                                               ; preds = %51, %42
  %57 = call i64 @GetClearedMemory(i32 32)
  %58 = inttoptr i64 %57 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %58, %struct.TYPE_9__** %9, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %63 = icmp ne %struct.TYPE_9__* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  store %struct.TYPE_9__* %65, %struct.TYPE_9__** %67, align 8
  br label %70

68:                                               ; preds = %56
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %69, %struct.TYPE_9__** %11, align 8
  br label %70

70:                                               ; preds = %68, %64
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %71, %struct.TYPE_9__** %10, align 8
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %70
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load i32*, i32** %3, align 8
  %79 = call i32 (i32*, i8*, ...) @SourceError(i32* %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %81 = call i32 @FreeFuzzySeperators_r(%struct.TYPE_9__* %80)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %230

82:                                               ; preds = %74
  %83 = load i8*, i8** @MAX_INVENTORYVALUE, align 8
  %84 = ptrtoint i8* %83 to i32
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @qtrue, align 4
  store i32 %87, i32* %7, align 4
  br label %102

88:                                               ; preds = %70
  %89 = load i32*, i32** %3, align 8
  %90 = load i32, i32* @TT_NUMBER, align 4
  %91 = load i32, i32* @TT_INTEGER, align 4
  %92 = call i32 @PC_ExpectTokenType(i32* %89, i32 %90, i32 %91, %struct.TYPE_8__* %8)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %88
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %96 = call i32 @FreeFuzzySeperators_r(%struct.TYPE_9__* %95)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %230

97:                                               ; preds = %88
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %97, %82
  %103 = load i32*, i32** %3, align 8
  %104 = call i32 @PC_ExpectTokenString(i32* %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load i32*, i32** %3, align 8
  %108 = call i32 @PC_ExpectAnyToken(i32* %107, %struct.TYPE_8__* %8)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %106, %102
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %112 = call i32 @FreeFuzzySeperators_r(%struct.TYPE_9__* %111)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %230

113:                                              ; preds = %106
  %114 = load i32, i32* @qfalse, align 4
  store i32 %114, i32* %4, align 4
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @strcmp(i32 %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %128, label %119

119:                                              ; preds = %113
  %120 = load i32, i32* @qtrue, align 4
  store i32 %120, i32* %4, align 4
  %121 = load i32*, i32** %3, align 8
  %122 = call i32 @PC_ExpectAnyToken(i32* %121, %struct.TYPE_8__* %8)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %119
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %126 = call i32 @FreeFuzzySeperators_r(%struct.TYPE_9__* %125)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %230

127:                                              ; preds = %119
  br label %128

128:                                              ; preds = %127, %113
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @strcmp(i32 %130, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %142, label %133

133:                                              ; preds = %128
  %134 = load i32*, i32** %3, align 8
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %136 = call i32 @ReadFuzzyWeight(i32* %134, %struct.TYPE_9__* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %133
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %140 = call i32 @FreeFuzzySeperators_r(%struct.TYPE_9__* %139)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %230

141:                                              ; preds = %133
  br label %166

142:                                              ; preds = %128
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @strcmp(i32 %144, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %160, label %147

147:                                              ; preds = %142
  %148 = load i32*, i32** %3, align 8
  %149 = call %struct.TYPE_9__* @ReadFuzzySeperators_r(i32* %148)
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 3
  store %struct.TYPE_9__* %149, %struct.TYPE_9__** %151, align 8
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 3
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %153, align 8
  %155 = icmp ne %struct.TYPE_9__* %154, null
  br i1 %155, label %159, label %156

156:                                              ; preds = %147
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %158 = call i32 @FreeFuzzySeperators_r(%struct.TYPE_9__* %157)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %230

159:                                              ; preds = %147
  br label %165

160:                                              ; preds = %142
  %161 = load i32*, i32** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 (i32*, i8*, ...) @SourceError(i32* %161, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 %163)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %230

165:                                              ; preds = %159
  br label %166

166:                                              ; preds = %165, %141
  %167 = load i32, i32* %4, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %166
  %170 = load i32*, i32** %3, align 8
  %171 = call i32 @PC_ExpectTokenString(i32* %170, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %169
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %175 = call i32 @FreeFuzzySeperators_r(%struct.TYPE_9__* %174)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %230

176:                                              ; preds = %169
  br label %177

177:                                              ; preds = %176, %166
  br label %185

178:                                              ; preds = %51
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %180 = call i32 @FreeFuzzySeperators_r(%struct.TYPE_9__* %179)
  %181 = load i32*, i32** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 (i32*, i8*, ...) @SourceError(i32* %181, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 %183)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %230

185:                                              ; preds = %177
  %186 = load i32*, i32** %3, align 8
  %187 = call i32 @PC_ExpectAnyToken(i32* %186, %struct.TYPE_8__* %8)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %185
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %191 = call i32 @FreeFuzzySeperators_r(%struct.TYPE_9__* %190)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %230

192:                                              ; preds = %185
  br label %193

193:                                              ; preds = %192
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i64 @strcmp(i32 %195, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %42, label %198

198:                                              ; preds = %193
  %199 = load i32, i32* %7, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %228, label %201

201:                                              ; preds = %198
  %202 = load i32*, i32** %3, align 8
  %203 = call i32 @SourceWarning(i32* %202, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %204 = call i64 @GetClearedMemory(i32 32)
  %205 = inttoptr i64 %204 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %205, %struct.TYPE_9__** %9, align 8
  %206 = load i32, i32* %5, align 4
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  store i32 %206, i32* %208, align 8
  %209 = load i8*, i8** @MAX_INVENTORYVALUE, align 8
  %210 = ptrtoint i8* %209 to i32
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 1
  store i32 %210, i32* %212, align 4
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 4
  store i64 0, i64* %214, align 8
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 2
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %216, align 8
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 3
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %218, align 8
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %220 = icmp ne %struct.TYPE_9__* %219, null
  br i1 %220, label %221, label %225

221:                                              ; preds = %201
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 2
  store %struct.TYPE_9__* %222, %struct.TYPE_9__** %224, align 8
  br label %227

225:                                              ; preds = %201
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %226, %struct.TYPE_9__** %11, align 8
  br label %227

227:                                              ; preds = %225, %221
  br label %228

228:                                              ; preds = %227, %198
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %229, %struct.TYPE_9__** %2, align 8
  br label %230

230:                                              ; preds = %228, %189, %178, %173, %160, %156, %138, %124, %110, %94, %77, %40, %35, %30, %23, %16
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  ret %struct.TYPE_9__* %231
}

declare dso_local i32 @PC_ExpectTokenString(i32*, i8*) #1

declare dso_local i32 @PC_ExpectTokenType(i32*, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @PC_ExpectAnyToken(i32*, %struct.TYPE_8__*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @GetClearedMemory(i32) #1

declare dso_local i32 @SourceError(i32*, i8*, ...) #1

declare dso_local i32 @FreeFuzzySeperators_r(%struct.TYPE_9__*) #1

declare dso_local i32 @ReadFuzzyWeight(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @SourceWarning(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
