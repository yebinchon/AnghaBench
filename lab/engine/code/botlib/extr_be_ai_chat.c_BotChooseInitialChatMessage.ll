; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_chat.c_BotChooseInitialChatMessage.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_chat.c_BotChooseInitialChatMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_8__*, i32, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { float, i8*, %struct.TYPE_8__* }

@CHATMESSAGE_RECENTTIME = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @BotChooseInitialChatMessage(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %12, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %9, align 8
  br label %19

19:                                               ; preds = %125, %2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %21 = icmp ne %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %129

22:                                               ; preds = %19
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @Q_stricmp(i32 %25, i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %124, label %29

29:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %10, align 8
  br label %33

33:                                               ; preds = %46, %29
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %35 = icmp ne %struct.TYPE_8__* %34, null
  br i1 %35, label %36, label %50

36:                                               ; preds = %33
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load float, float* %38, align 8
  %40 = call float (...) @AAS_Time()
  %41 = fcmp ogt float %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %46

43:                                               ; preds = %36
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %43, %42
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %10, align 8
  br label %33

50:                                               ; preds = %33
  %51 = load i32, i32* %7, align 4
  %52 = icmp sle i32 %51, 0
  br i1 %52, label %53, label %87

53:                                               ; preds = %50
  store float 0.000000e+00, float* %8, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %11, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  store %struct.TYPE_8__* %56, %struct.TYPE_8__** %10, align 8
  br label %57

57:                                               ; preds = %75, %53
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %59 = icmp ne %struct.TYPE_8__* %58, null
  br i1 %59, label %60, label %79

60:                                               ; preds = %57
  %61 = load float, float* %8, align 4
  %62 = fcmp une float %61, 0.000000e+00
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load float, float* %65, align 8
  %67 = load float, float* %8, align 4
  %68 = fcmp olt float %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %63, %60
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %70, %struct.TYPE_8__** %11, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load float, float* %72, align 8
  store float %73, float* %8, align 4
  br label %74

74:                                               ; preds = %69, %63
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  store %struct.TYPE_8__* %78, %struct.TYPE_8__** %10, align 8
  br label %57

79:                                               ; preds = %57
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %81 = icmp ne %struct.TYPE_8__* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  store i8* %85, i8** %3, align 8
  br label %130

86:                                               ; preds = %79
  br label %123

87:                                               ; preds = %50
  %88 = call i32 (...) @random()
  %89 = load i32, i32* %7, align 4
  %90 = mul nsw i32 %88, %89
  store i32 %90, i32* %6, align 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  store %struct.TYPE_8__* %93, %struct.TYPE_8__** %10, align 8
  br label %94

94:                                               ; preds = %118, %87
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %96 = icmp ne %struct.TYPE_8__* %95, null
  br i1 %96, label %97, label %122

97:                                               ; preds = %94
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load float, float* %99, align 8
  %101 = call float (...) @AAS_Time()
  %102 = fcmp ogt float %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %118

104:                                              ; preds = %97
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %6, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %104
  %109 = call float (...) @AAS_Time()
  %110 = load float, float* @CHATMESSAGE_RECENTTIME, align 4
  %111 = fadd float %109, %110
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  store float %111, float* %113, align 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  store i8* %116, i8** %3, align 8
  br label %130

117:                                              ; preds = %104
  br label %118

118:                                              ; preds = %117, %103
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  store %struct.TYPE_8__* %121, %struct.TYPE_8__** %10, align 8
  br label %94

122:                                              ; preds = %94
  br label %123

123:                                              ; preds = %122, %86
  store i8* null, i8** %3, align 8
  br label %130

124:                                              ; preds = %22
  br label %125

125:                                              ; preds = %124
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  store %struct.TYPE_6__* %128, %struct.TYPE_6__** %9, align 8
  br label %19

129:                                              ; preds = %19
  store i8* null, i8** %3, align 8
  br label %130

130:                                              ; preds = %129, %123, %108, %82
  %131 = load i8*, i8** %3, align 8
  ret i8* %131
}

declare dso_local i32 @Q_stricmp(i32, i8*) #1

declare dso_local float @AAS_Time(...) #1

declare dso_local i32 @random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
