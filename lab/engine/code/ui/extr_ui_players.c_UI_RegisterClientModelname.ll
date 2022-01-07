; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_players.c_UI_RegisterClientModelname.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_players.c_UI_RegisterClientModelname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i8* }

@MAX_QPATH = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"models/players/%s/lower.md3\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"models/players/characters/%s/lower.md3\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to load model file %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"models/players/%s/upper.md3\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"models/players/characters/%s/upper.md3\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"models/players/heads/%s/%s.md3\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"models/players/%s/head.md3\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Failed to load skin file: %s : %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"models/players/%s/animation.cfg\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"models/players/characters/%s/animation.cfg\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"Failed to load animation file %s\0A\00", align 1
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UI_RegisterClientModelname(%struct.TYPE_5__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load i32, i32* @MAX_QPATH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = load i32, i32* @MAX_QPATH, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  %25 = load i32, i32* @MAX_QPATH, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %13, align 8
  %28 = load i32, i32* @MAX_QPATH, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %14, align 8
  %31 = load i32, i32* @MAX_QPATH, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %15, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  store i8* null, i8** %35, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i8* null, i8** %37, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %4
  %43 = load i32, i32* @qfalse, align 4
  store i32 %43, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %196

44:                                               ; preds = %4
  %45 = load i8*, i8** %7, align 8
  %46 = trunc i64 %19 to i32
  %47 = call i32 @Q_strncpyz(i8* %21, i8* %45, i32 %46)
  %48 = call i8* @strchr(i8* %21, i8 signext 47)
  store i8* %48, i8** %16, align 8
  %49 = load i8*, i8** %16, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %44
  %52 = trunc i64 %23 to i32
  %53 = call i32 @Q_strncpyz(i8* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %60

54:                                               ; preds = %44
  %55 = load i8*, i8** %16, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = trunc i64 %23 to i32
  %58 = call i32 @Q_strncpyz(i8* %24, i8* %56, i32 %57)
  %59 = load i8*, i8** %16, align 8
  store i8 0, i8* %59, align 1
  br label %60

60:                                               ; preds = %54, %51
  %61 = load i8*, i8** %8, align 8
  %62 = trunc i64 %26 to i32
  %63 = call i32 @Q_strncpyz(i8* %27, i8* %61, i32 %62)
  %64 = call i8* @strchr(i8* %27, i8 signext 47)
  store i8* %64, i8** %16, align 8
  %65 = load i8*, i8** %16, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %60
  %68 = trunc i64 %23 to i32
  %69 = call i32 @Q_strncpyz(i8* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %76

70:                                               ; preds = %60
  %71 = load i8*, i8** %16, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = trunc i64 %23 to i32
  %74 = call i32 @Q_strncpyz(i8* %30, i8* %72, i32 %73)
  %75 = load i8*, i8** %16, align 8
  store i8 0, i8* %75, align 1
  br label %76

76:                                               ; preds = %70, %67
  %77 = trunc i64 %32 to i32
  %78 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %33, i32 %77, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  %79 = call i8* @trap_R_RegisterModel(i8* %33)
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %100, label %86

86:                                               ; preds = %76
  %87 = trunc i64 %32 to i32
  %88 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %33, i32 %87, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  %89 = call i8* @trap_R_RegisterModel(i8* %33)
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %86
  %97 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %33)
  %98 = load i32, i32* @qfalse, align 4
  store i32 %98, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %196

99:                                               ; preds = %86
  br label %100

100:                                              ; preds = %99, %76
  %101 = trunc i64 %32 to i32
  %102 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %33, i32 %101, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %21)
  %103 = call i8* @trap_R_RegisterModel(i8* %33)
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  store i8* %103, i8** %105, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %124, label %110

110:                                              ; preds = %100
  %111 = trunc i64 %32 to i32
  %112 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %33, i32 %111, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8* %21)
  %113 = call i8* @trap_R_RegisterModel(i8* %33)
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  store i8* %113, i8** %115, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %123, label %120

120:                                              ; preds = %110
  %121 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %33)
  %122 = load i32, i32* @qfalse, align 4
  store i32 %122, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %196

123:                                              ; preds = %110
  br label %124

124:                                              ; preds = %123, %100
  %125 = getelementptr inbounds i8, i8* %27, i64 0
  %126 = load i8, i8* %125, align 16
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 42
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = trunc i64 %32 to i32
  %131 = getelementptr inbounds i8, i8* %27, i64 1
  %132 = getelementptr inbounds i8, i8* %27, i64 1
  %133 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %33, i32 %130, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %131, i8* %132)
  br label %137

134:                                              ; preds = %124
  %135 = trunc i64 %32 to i32
  %136 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %33, i32 %135, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %27)
  br label %137

137:                                              ; preds = %134, %129
  %138 = call i8* @trap_R_RegisterModel(i8* %33)
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  store i8* %138, i8** %140, align 8
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %156, label %145

145:                                              ; preds = %137
  %146 = getelementptr inbounds i8, i8* %27, i64 0
  %147 = load i8, i8* %146, align 16
  %148 = sext i8 %147 to i32
  %149 = icmp ne i32 %148, 42
  br i1 %149, label %150, label %156

150:                                              ; preds = %145
  %151 = trunc i64 %32 to i32
  %152 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %33, i32 %151, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %27, i8* %27)
  %153 = call i8* @trap_R_RegisterModel(i8* %33)
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  store i8* %153, i8** %155, align 8
  br label %156

156:                                              ; preds = %150, %145, %137
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %164, label %161

161:                                              ; preds = %156
  %162 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %33)
  %163 = load i32, i32* @qfalse, align 4
  store i32 %163, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %196

164:                                              ; preds = %156
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %166 = load i8*, i8** %9, align 8
  %167 = call i32 @UI_RegisterClientSkin(%struct.TYPE_5__* %165, i8* %21, i8* %24, i8* %27, i8* %30, i8* %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %178, label %169

169:                                              ; preds = %164
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %171 = load i8*, i8** %9, align 8
  %172 = call i32 @UI_RegisterClientSkin(%struct.TYPE_5__* %170, i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %169
  %175 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i8* %21, i8* %24)
  %176 = load i32, i32* @qfalse, align 4
  store i32 %176, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %196

177:                                              ; preds = %169
  br label %178

178:                                              ; preds = %177, %164
  %179 = trunc i64 %32 to i32
  %180 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %33, i32 %179, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i8* %21)
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %182 = call i32 @UI_ParseAnimationFile(i8* %33, %struct.TYPE_5__* %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %194, label %184

184:                                              ; preds = %178
  %185 = trunc i64 %32 to i32
  %186 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %33, i32 %185, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i8* %21)
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %188 = call i32 @UI_ParseAnimationFile(i8* %33, %struct.TYPE_5__* %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %184
  %191 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i8* %33)
  %192 = load i32, i32* @qfalse, align 4
  store i32 %192, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %196

193:                                              ; preds = %184
  br label %194

194:                                              ; preds = %193, %178
  %195 = load i32, i32* @qtrue, align 4
  store i32 %195, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %196

196:                                              ; preds = %194, %190, %174, %161, %120, %96, %42
  %197 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %197)
  %198 = load i32, i32* %5, align 4
  ret i32 %198
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i8* @trap_R_RegisterModel(i8*) #2

declare dso_local i32 @Com_Printf(i8*, i8*, ...) #2

declare dso_local i32 @UI_RegisterClientSkin(%struct.TYPE_5__*, i8*, i8*, i8*, i8*, i8*) #2

declare dso_local i32 @UI_ParseAnimationFile(i8*, %struct.TYPE_5__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
