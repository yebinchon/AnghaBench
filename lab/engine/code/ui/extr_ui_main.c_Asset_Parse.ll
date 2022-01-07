; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_Asset_Parse.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_Asset_Parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i32, i32*, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@qfalse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@qtrue = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"font\00", align 1
@uiInfo = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"smallFont\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"bigFont\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"gradientbar\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"menuEnterSound\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"menuExitSound\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"itemFocusSound\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"menuBuzzSound\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"cursor\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"fadeClamp\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"fadeCycle\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"fadeAmount\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"shadowX\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"shadowY\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"shadowColor\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Asset_Parse(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @trap_PC_ReadToken(i32 %9, %struct.TYPE_9__* %4)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @qfalse, align 4
  store i32 %13, i32* %2, align 4
  br label %258

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @Q_stricmp(i32 %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @qfalse, align 4
  store i32 %20, i32* %2, align 4
  br label %258

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21, %51, %71, %90, %105, %119, %134, %149, %164, %179, %193, %205, %217, %229, %241, %253, %257
  %23 = call i32 @memset(%struct.TYPE_9__* %4, i32 0, i32 4)
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @trap_PC_ReadToken(i32 %24, %struct.TYPE_9__* %4)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @qfalse, align 4
  store i32 %28, i32* %2, align 4
  br label %258

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @Q_stricmp(i32 %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @qtrue, align 4
  store i32 %35, i32* %2, align 4
  br label %258

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @Q_stricmp(i32 %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %36
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @PC_String_Parse(i32 %42, i8** %5)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @PC_Int_Parse(i32 %46, i32* %6)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45, %41
  %50 = load i32, i32* @qfalse, align 4
  store i32 %50, i32* %2, align 4
  br label %258

51:                                               ; preds = %45
  %52 = load i8*, i8** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @trap_R_RegisterFont(i8* %52, i32 %53, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uiInfo, i32 0, i32 0, i32 0, i32 17))
  %55 = load i32, i32* @qtrue, align 4
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uiInfo, i32 0, i32 0, i32 0, i32 16), align 8
  br label %22

56:                                               ; preds = %36
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @Q_stricmp(i32 %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %56
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @PC_String_Parse(i32 %62, i8** %5)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @PC_Int_Parse(i32 %66, i32* %7)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %65, %61
  %70 = load i32, i32* @qfalse, align 4
  store i32 %70, i32* %2, align 4
  br label %258

71:                                               ; preds = %65
  %72 = load i8*, i8** %5, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @trap_R_RegisterFont(i8* %72, i32 %73, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uiInfo, i32 0, i32 0, i32 0, i32 15))
  br label %22

75:                                               ; preds = %56
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @Q_stricmp(i32 %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %75
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @PC_String_Parse(i32 %81, i8** %5)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @PC_Int_Parse(i32 %85, i32* %8)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %84, %80
  %89 = load i32, i32* @qfalse, align 4
  store i32 %89, i32* %2, align 4
  br label %258

90:                                               ; preds = %84
  %91 = load i8*, i8** %5, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @trap_R_RegisterFont(i8* %91, i32 %92, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uiInfo, i32 0, i32 0, i32 0, i32 14))
  br label %22

94:                                               ; preds = %75
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @Q_stricmp(i32 %96, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %94
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @PC_String_Parse(i32 %100, i8** %5)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* @qfalse, align 4
  store i32 %104, i32* %2, align 4
  br label %258

105:                                              ; preds = %99
  %106 = load i8*, i8** %5, align 8
  %107 = call i8* @trap_R_RegisterShaderNoMip(i8* %106)
  store i8* %107, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uiInfo, i32 0, i32 0, i32 0, i32 13), align 8
  br label %22

108:                                              ; preds = %94
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @Q_stricmp(i32 %110, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %108
  %114 = load i32, i32* %3, align 4
  %115 = call i32 @PC_String_Parse(i32 %114, i8** %5)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %113
  %118 = load i32, i32* @qfalse, align 4
  store i32 %118, i32* %2, align 4
  br label %258

119:                                              ; preds = %113
  %120 = load i8*, i8** %5, align 8
  %121 = load i32, i32* @qfalse, align 4
  %122 = call i8* @trap_S_RegisterSound(i8* %120, i32 %121)
  store i8* %122, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uiInfo, i32 0, i32 0, i32 0, i32 12), align 8
  br label %22

123:                                              ; preds = %108
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @Q_stricmp(i32 %125, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %123
  %129 = load i32, i32* %3, align 4
  %130 = call i32 @PC_String_Parse(i32 %129, i8** %5)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %128
  %133 = load i32, i32* @qfalse, align 4
  store i32 %133, i32* %2, align 4
  br label %258

134:                                              ; preds = %128
  %135 = load i8*, i8** %5, align 8
  %136 = load i32, i32* @qfalse, align 4
  %137 = call i8* @trap_S_RegisterSound(i8* %135, i32 %136)
  store i8* %137, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uiInfo, i32 0, i32 0, i32 0, i32 11), align 8
  br label %22

138:                                              ; preds = %123
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @Q_stricmp(i32 %140, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %138
  %144 = load i32, i32* %3, align 4
  %145 = call i32 @PC_String_Parse(i32 %144, i8** %5)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %143
  %148 = load i32, i32* @qfalse, align 4
  store i32 %148, i32* %2, align 4
  br label %258

149:                                              ; preds = %143
  %150 = load i8*, i8** %5, align 8
  %151 = load i32, i32* @qfalse, align 4
  %152 = call i8* @trap_S_RegisterSound(i8* %150, i32 %151)
  store i8* %152, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uiInfo, i32 0, i32 0, i32 0, i32 10), align 8
  br label %22

153:                                              ; preds = %138
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i64 @Q_stricmp(i32 %155, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %168

158:                                              ; preds = %153
  %159 = load i32, i32* %3, align 4
  %160 = call i32 @PC_String_Parse(i32 %159, i8** %5)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %158
  %163 = load i32, i32* @qfalse, align 4
  store i32 %163, i32* %2, align 4
  br label %258

164:                                              ; preds = %158
  %165 = load i8*, i8** %5, align 8
  %166 = load i32, i32* @qfalse, align 4
  %167 = call i8* @trap_S_RegisterSound(i8* %165, i32 %166)
  store i8* %167, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uiInfo, i32 0, i32 0, i32 0, i32 9), align 8
  br label %22

168:                                              ; preds = %153
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i64 @Q_stricmp(i32 %170, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %182

173:                                              ; preds = %168
  %174 = load i32, i32* %3, align 4
  %175 = call i32 @PC_String_Parse(i32 %174, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uiInfo, i32 0, i32 0, i32 0, i32 0))
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %179, label %177

177:                                              ; preds = %173
  %178 = load i32, i32* @qfalse, align 4
  store i32 %178, i32* %2, align 4
  br label %258

179:                                              ; preds = %173
  %180 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uiInfo, i32 0, i32 0, i32 0, i32 0), align 8
  %181 = call i8* @trap_R_RegisterShaderNoMip(i8* %180)
  store i8* %181, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uiInfo, i32 0, i32 0, i32 0, i32 8), align 8
  br label %22

182:                                              ; preds = %168
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i64 @Q_stricmp(i32 %184, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %182
  %188 = load i32, i32* %3, align 4
  %189 = call i32 @PC_Float_Parse(i32 %188, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uiInfo, i32 0, i32 0, i32 0, i32 7))
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %193, label %191

191:                                              ; preds = %187
  %192 = load i32, i32* @qfalse, align 4
  store i32 %192, i32* %2, align 4
  br label %258

193:                                              ; preds = %187
  br label %22

194:                                              ; preds = %182
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i64 @Q_stricmp(i32 %196, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %194
  %200 = load i32, i32* %3, align 4
  %201 = call i32 @PC_Int_Parse(i32 %200, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uiInfo, i32 0, i32 0, i32 0, i32 1))
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %205, label %203

203:                                              ; preds = %199
  %204 = load i32, i32* @qfalse, align 4
  store i32 %204, i32* %2, align 4
  br label %258

205:                                              ; preds = %199
  br label %22

206:                                              ; preds = %194
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i64 @Q_stricmp(i32 %208, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %206
  %212 = load i32, i32* %3, align 4
  %213 = call i32 @PC_Float_Parse(i32 %212, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uiInfo, i32 0, i32 0, i32 0, i32 6))
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %217, label %215

215:                                              ; preds = %211
  %216 = load i32, i32* @qfalse, align 4
  store i32 %216, i32* %2, align 4
  br label %258

217:                                              ; preds = %211
  br label %22

218:                                              ; preds = %206
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = call i64 @Q_stricmp(i32 %220, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %230

223:                                              ; preds = %218
  %224 = load i32, i32* %3, align 4
  %225 = call i32 @PC_Float_Parse(i32 %224, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uiInfo, i32 0, i32 0, i32 0, i32 5))
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %229, label %227

227:                                              ; preds = %223
  %228 = load i32, i32* @qfalse, align 4
  store i32 %228, i32* %2, align 4
  br label %258

229:                                              ; preds = %223
  br label %22

230:                                              ; preds = %218
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call i64 @Q_stricmp(i32 %232, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %235, label %242

235:                                              ; preds = %230
  %236 = load i32, i32* %3, align 4
  %237 = call i32 @PC_Float_Parse(i32 %236, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uiInfo, i32 0, i32 0, i32 0, i32 4))
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %241, label %239

239:                                              ; preds = %235
  %240 = load i32, i32* @qfalse, align 4
  store i32 %240, i32* %2, align 4
  br label %258

241:                                              ; preds = %235
  br label %22

242:                                              ; preds = %230
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = call i64 @Q_stricmp(i32 %244, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %247, label %257

247:                                              ; preds = %242
  %248 = load i32, i32* %3, align 4
  %249 = call i32 @PC_Color_Parse(i32 %248, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uiInfo, i32 0, i32 0, i32 0, i32 2))
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %253, label %251

251:                                              ; preds = %247
  %252 = load i32, i32* @qfalse, align 4
  store i32 %252, i32* %2, align 4
  br label %258

253:                                              ; preds = %247
  %254 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uiInfo, i32 0, i32 0, i32 0, i32 2), align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 3
  %256 = load i32, i32* %255, align 4
  store i32 %256, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uiInfo, i32 0, i32 0, i32 0, i32 3), align 8
  br label %22

257:                                              ; preds = %242
  br label %22

258:                                              ; preds = %251, %239, %227, %215, %203, %191, %177, %162, %147, %132, %117, %103, %88, %69, %49, %34, %27, %19, %12
  %259 = load i32, i32* %2, align 4
  ret i32 %259
}

declare dso_local i32 @trap_PC_ReadToken(i32, %struct.TYPE_9__*) #1

declare dso_local i64 @Q_stricmp(i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @PC_String_Parse(i32, i8**) #1

declare dso_local i32 @PC_Int_Parse(i32, i32*) #1

declare dso_local i32 @trap_R_RegisterFont(i8*, i32, i32*) #1

declare dso_local i8* @trap_R_RegisterShaderNoMip(i8*) #1

declare dso_local i8* @trap_S_RegisterSound(i8*, i32) #1

declare dso_local i32 @PC_Float_Parse(i32, i32*) #1

declare dso_local i32 @PC_Color_Parse(i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
