; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_vcmd.c_BotVoiceChatCommand.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_vcmd.c_BotVoiceChatCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*, i32, i32)*, i64 }

@MAX_MESSAGE_SIZE = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@SAY_ALL = common dso_local global i32 0, align 4
@voiceCommands = common dso_local global %struct.TYPE_2__* null, align 8
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotVoiceChatCommand(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %15 = load i32, i32* @MAX_MESSAGE_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = call i32 (...) @TeamPlayIsOn()
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @qfalse, align 4
  store i32 %22, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %178

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @SAY_ALL, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @qfalse, align 4
  store i32 %28, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %178

29:                                               ; preds = %23
  %30 = load i8*, i8** %7, align 8
  %31 = trunc i64 %16 to i32
  %32 = call i32 @Q_strncpyz(i8* %18, i8* %30, i32 %31)
  store i8* %18, i8** %13, align 8
  br label %33

33:                                               ; preds = %46, %29
  %34 = load i8*, i8** %13, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i8*, i8** %13, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp sgt i32 %41, 32
  br label %43

43:                                               ; preds = %38, %33
  %44 = phi i1 [ false, %33 ], [ %42, %38 ]
  br i1 %44, label %45, label %49

45:                                               ; preds = %43
  br label %46

46:                                               ; preds = %45
  %47 = load i8*, i8** %13, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %13, align 8
  br label %33

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %62, %49
  %51 = load i8*, i8** %13, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load i8*, i8** %13, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp sle i32 %58, 32
  br label %60

60:                                               ; preds = %55, %50
  %61 = phi i1 [ false, %50 ], [ %59, %55 ]
  br i1 %61, label %62, label %65

62:                                               ; preds = %60
  %63 = load i8*, i8** %13, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %13, align 8
  store i8 0, i8* %63, align 1
  br label %50

65:                                               ; preds = %60
  %66 = load i8*, i8** %13, align 8
  store i8* %66, i8** %10, align 8
  br label %67

67:                                               ; preds = %80, %65
  %68 = load i8*, i8** %13, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i8*, i8** %13, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp sgt i32 %75, 32
  br label %77

77:                                               ; preds = %72, %67
  %78 = phi i1 [ false, %67 ], [ %76, %72 ]
  br i1 %78, label %79, label %83

79:                                               ; preds = %77
  br label %80

80:                                               ; preds = %79
  %81 = load i8*, i8** %13, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %13, align 8
  br label %67

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %96, %83
  %85 = load i8*, i8** %13, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load i8*, i8** %13, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp sle i32 %92, 32
  br label %94

94:                                               ; preds = %89, %84
  %95 = phi i1 [ false, %84 ], [ %93, %89 ]
  br i1 %95, label %96, label %99

96:                                               ; preds = %94
  %97 = load i8*, i8** %13, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %13, align 8
  store i8 0, i8* %97, align 1
  br label %84

99:                                               ; preds = %94
  %100 = load i8*, i8** %10, align 8
  %101 = call i32 @atoi(i8* %100)
  store i32 %101, i32* %9, align 4
  br label %102

102:                                              ; preds = %115, %99
  %103 = load i8*, i8** %13, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load i8*, i8** %13, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp sgt i32 %110, 32
  br label %112

112:                                              ; preds = %107, %102
  %113 = phi i1 [ false, %102 ], [ %111, %107 ]
  br i1 %113, label %114, label %118

114:                                              ; preds = %112
  br label %115

115:                                              ; preds = %114
  %116 = load i8*, i8** %13, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %13, align 8
  br label %102

118:                                              ; preds = %112
  br label %119

119:                                              ; preds = %131, %118
  %120 = load i8*, i8** %13, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load i8*, i8** %13, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp sle i32 %127, 32
  br label %129

129:                                              ; preds = %124, %119
  %130 = phi i1 [ false, %119 ], [ %128, %124 ]
  br i1 %130, label %131, label %134

131:                                              ; preds = %129
  %132 = load i8*, i8** %13, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %13, align 8
  store i8 0, i8* %132, align 1
  br label %119

134:                                              ; preds = %129
  %135 = load i32*, i32** %5, align 8
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @BotSameTeam(i32* %135, i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %134
  %140 = load i32, i32* @qfalse, align 4
  store i32 %140, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %178

141:                                              ; preds = %134
  store i32 0, i32* %8, align 4
  br label %142

142:                                              ; preds = %173, %141
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** @voiceCommands, align 8
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %176

150:                                              ; preds = %142
  %151 = load i8*, i8** %13, align 8
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** @voiceCommands, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @Q_stricmp(i8* %151, i64 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %172, label %160

160:                                              ; preds = %150
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** @voiceCommands, align 8
  %162 = load i32, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  %166 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %165, align 8
  %167 = load i32*, i32** %5, align 8
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* %6, align 4
  %170 = call i32 %166(i32* %167, i32 %168, i32 %169)
  %171 = load i32, i32* @qtrue, align 4
  store i32 %171, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %178

172:                                              ; preds = %150
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %8, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %8, align 4
  br label %142

176:                                              ; preds = %142
  %177 = load i32, i32* @qfalse, align 4
  store i32 %177, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %178

178:                                              ; preds = %176, %160, %139, %27, %21
  %179 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %179)
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TeamPlayIsOn(...) #2

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @BotSameTeam(i32*, i32) #2

declare dso_local i32 @Q_stricmp(i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
