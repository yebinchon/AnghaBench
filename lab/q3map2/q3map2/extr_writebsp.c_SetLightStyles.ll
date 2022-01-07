; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_writebsp.c_SetLightStyles.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_writebsp.c_SetLightStyles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__* }

@MAX_SWITCHED_LIGHTS = common dso_local global i32 0, align 4
@entities = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"_keepLights\00", align 1
@qtrue = common dso_local global i64 0, align 8
@qfalse = common dso_local global i64 0, align 8
@numEntities = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"classname\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"light\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"noradiosity\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"targetname\00", align 1
@numStrippedLights = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"style\00", align 1
@LS_NORMAL = common dso_local global i32 0, align 4
@LS_NONE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"Invalid lightstyle (%d) on entity %d\00", align 1
@.str.7 = private unnamed_addr constant [80 x i8] c"MAX_SWITCHED_LIGHTS (%d) exceeded, reduce the number of lights with targetnames\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"switch_style\00", align 1
@SYS_VRB = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"%9d light entities stripped\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetLightStyles() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca [10 x i8], align 1
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = load i32, i32* @MAX_SWITCHED_LIGHTS, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %12, align 8
  %18 = alloca [64 x i8], i64 %16, align 16
  store i64 %16, i64* %13, align 8
  %19 = load i32, i32* @MAX_SWITCHED_LIGHTS, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** @entities, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i64 0
  %24 = call i8* @ValueForKey(%struct.TYPE_9__* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 49
  br i1 %29, label %30, label %32

30:                                               ; preds = %0
  %31 = load i64, i64* @qtrue, align 8
  br label %34

32:                                               ; preds = %0
  %33 = load i64, i64* @qfalse, align 8
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i64 [ %31, %30 ], [ %33, %32 ]
  store i64 %35, i64* %5, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %1, align 4
  br label %36

36:                                               ; preds = %190, %34
  %37 = load i32, i32* %1, align 4
  %38 = load i32, i32* @numEntities, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %193

40:                                               ; preds = %36
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** @entities, align 8
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i64 %43
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %8, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %46 = call i8* @ValueForKey(%struct.TYPE_9__* %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i8* %46, i8** %7, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i64 @Q_strncasecmp(i8* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %190

51:                                               ; preds = %40
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %53 = call i8* @ValueForKey(%struct.TYPE_9__* %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i8* %53, i8** %7, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 49
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i64, i64* @qtrue, align 8
  br label %63

61:                                               ; preds = %51
  %62 = load i64, i64* @qfalse, align 8
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i64 [ %60, %59 ], [ %62, %61 ]
  store i64 %64, i64* %6, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %66 = call i8* @ValueForKey(%struct.TYPE_9__* %65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i8* %66, i8** %7, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %108

72:                                               ; preds = %63
  %73 = load i64, i64* %5, align 8
  %74 = load i64, i64* @qfalse, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %107

76:                                               ; preds = %72
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* @qfalse, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %107

80:                                               ; preds = %76
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  store %struct.TYPE_8__* %83, %struct.TYPE_8__** %9, align 8
  br label %84

84:                                               ; preds = %87, %80
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %86 = icmp ne %struct.TYPE_8__* %85, null
  br i1 %86, label %87, label %102

87:                                               ; preds = %84
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  store %struct.TYPE_8__* %90, %struct.TYPE_8__** %10, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = call i32 @free(%struct.TYPE_8__* %93)
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = call i32 @free(%struct.TYPE_8__* %97)
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %100 = call i32 @free(%struct.TYPE_8__* %99)
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %101, %struct.TYPE_8__** %9, align 8
  br label %84

102:                                              ; preds = %84
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %104, align 8
  %105 = load i32, i32* @numStrippedLights, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* @numStrippedLights, align 4
  br label %107

107:                                              ; preds = %102, %76, %72
  br label %190

108:                                              ; preds = %63
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %110 = call i32 @IntForKey(%struct.TYPE_9__* %109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i32 %110, i32* %3, align 4
  %111 = load i32, i32* %3, align 4
  %112 = load i32, i32* @LS_NORMAL, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %118, label %114

114:                                              ; preds = %108
  %115 = load i32, i32* %3, align 4
  %116 = load i32, i32* @LS_NONE, align 4
  %117 = icmp sgt i32 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %114, %108
  %119 = load i32, i32* %3, align 4
  %120 = load i32, i32* %1, align 4
  %121 = call i32 (i8*, i32, ...) @Error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %118, %114
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %144, %122
  %124 = load i32, i32* %2, align 4
  %125 = load i32, i32* %4, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %147

127:                                              ; preds = %123
  %128 = load i32, i32* %2, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %21, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %3, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %143

134:                                              ; preds = %127
  %135 = load i32, i32* %2, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 %136
  %138 = getelementptr inbounds [64 x i8], [64 x i8]* %137, i64 0, i64 0
  %139 = load i8*, i8** %7, align 8
  %140 = call i32 @strcmp(i8* %138, i8* %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %134
  br label %147

143:                                              ; preds = %134, %127
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %2, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %2, align 4
  br label %123

147:                                              ; preds = %142, %123
  %148 = load i32, i32* %2, align 4
  %149 = load i32, i32* %4, align 4
  %150 = icmp sge i32 %148, %149
  br i1 %150, label %151, label %171

151:                                              ; preds = %147
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* @MAX_SWITCHED_LIGHTS, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  %156 = load i32, i32* @MAX_SWITCHED_LIGHTS, align 4
  %157 = call i32 (i8*, i32, ...) @Error(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.7, i64 0, i64 0), i32 %156)
  br label %158

158:                                              ; preds = %155, %151
  %159 = load i32, i32* %2, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 %160
  %162 = getelementptr inbounds [64 x i8], [64 x i8]* %161, i64 0, i64 0
  %163 = load i8*, i8** %7, align 8
  %164 = call i32 @strcpy(i8* %162, i8* %163)
  %165 = load i32, i32* %3, align 4
  %166 = load i32, i32* %2, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %21, i64 %167
  store i32 %165, i32* %168, align 4
  %169 = load i32, i32* %4, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %4, align 4
  br label %171

171:                                              ; preds = %158, %147
  %172 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %173 = load i32, i32* %2, align 4
  %174 = add nsw i32 32, %173
  %175 = call i32 @sprintf(i8* %172, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %174)
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %177 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %178 = call i32 @SetKeyValue(%struct.TYPE_9__* %176, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %177)
  %179 = load i32, i32* %3, align 4
  %180 = load i32, i32* @LS_NORMAL, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %182, label %189

182:                                              ; preds = %171
  %183 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %184 = load i32, i32* %3, align 4
  %185 = call i32 @sprintf(i8* %183, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %184)
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %187 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %188 = call i32 @SetKeyValue(%struct.TYPE_9__* %186, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* %187)
  br label %189

189:                                              ; preds = %182, %171
  br label %190

190:                                              ; preds = %189, %107, %50
  %191 = load i32, i32* %1, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %1, align 4
  br label %36

193:                                              ; preds = %36
  %194 = load i32, i32* @SYS_VRB, align 4
  %195 = load i32, i32* @numStrippedLights, align 4
  %196 = call i32 @Sys_FPrintf(i32 %194, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %195)
  %197 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %197)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @ValueForKey(%struct.TYPE_9__*, i8*) #2

declare dso_local i64 @Q_strncasecmp(i8*, i8*, i32) #2

declare dso_local i32 @free(%struct.TYPE_8__*) #2

declare dso_local i32 @IntForKey(%struct.TYPE_9__*, i8*) #2

declare dso_local i32 @Error(i8*, i32, ...) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @SetKeyValue(%struct.TYPE_9__*, i8*, i8*) #2

declare dso_local i32 @Sys_FPrintf(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
