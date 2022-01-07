; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_chat.c_BotCheckChatMessageIntegrety.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_chat.c_BotCheckChatMessageIntegrety.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (i32, i8*, i8*)* }
%struct.TYPE_7__ = type { i8*, %struct.TYPE_7__* }

@MAX_MESSAGE_SIZE = common dso_local global i32 0, align 4
@ESCAPE_CHAR = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [31 x i8] c"%s = {\22%s\22} //MISSING RANDOM\0D\0A\00", align 1
@botimport = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@PRT_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"BotCheckChatMessageIntegrety: message \22%s\22 invalid escape char\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @BotCheckChatMessageIntegrety(i8* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %10 = load i32, i32* @MAX_MESSAGE_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i8*, i8** %3, align 8
  store i8* %14, i8** %6, align 8
  br label %15

15:                                               ; preds = %136, %2
  %16 = load i8*, i8** %6, align 8
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %19, label %137

19:                                               ; preds = %15
  %20 = load i8*, i8** %6, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = load i8, i8* @ESCAPE_CHAR, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %133

26:                                               ; preds = %19
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %6, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  switch i32 %31, label %127 [
    i32 118, label %32
    i32 114, label %60
  ]

32:                                               ; preds = %26
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %6, align 8
  br label %35

35:                                               ; preds = %49, %32
  %36 = load i8*, i8** %6, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load i8*, i8** %6, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = load i8, i8* @ESCAPE_CHAR, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %43, %45
  br label %47

47:                                               ; preds = %40, %35
  %48 = phi i1 [ false, %35 ], [ %46, %40 ]
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %6, align 8
  br label %35

52:                                               ; preds = %47
  %53 = load i8*, i8** %6, align 8
  %54 = load i8, i8* %53, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %6, align 8
  br label %59

59:                                               ; preds = %56, %52
  br label %132

60:                                               ; preds = %26
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %6, align 8
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %84, %60
  %64 = load i8*, i8** %6, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load i8*, i8** %6, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = load i8, i8* @ESCAPE_CHAR, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %71, %73
  br label %75

75:                                               ; preds = %68, %63
  %76 = phi i1 [ false, %63 ], [ %74, %68 ]
  br i1 %76, label %77, label %87

77:                                               ; preds = %75
  %78 = load i8*, i8** %6, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %6, align 8
  %80 = load i8, i8* %78, align 1
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %13, i64 %82
  store i8 %80, i8* %83, align 1
  br label %84

84:                                               ; preds = %77
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %63

87:                                               ; preds = %75
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %13, i64 %89
  store i8 0, i8* %90, align 1
  %91 = load i8*, i8** %6, align 8
  %92 = load i8, i8* %91, align 1
  %93 = icmp ne i8 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = load i8*, i8** %6, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %6, align 8
  br label %97

97:                                               ; preds = %94, %87
  %98 = call i32 @RandomString(i8* %13)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %126, label %100

100:                                              ; preds = %97
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %102 = call i32 @BotFindStringInList(%struct.TYPE_7__* %101, i8* %13)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %125, label %104

104:                                              ; preds = %100
  %105 = call i32 @Log_Write(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %13, i8* %13)
  %106 = call i32 @strlen(i8* %13)
  %107 = sext i32 %106 to i64
  %108 = add i64 16, %107
  %109 = add i64 %108, 1
  %110 = trunc i64 %109 to i32
  %111 = call %struct.TYPE_7__* @GetClearedMemory(i32 %110)
  store %struct.TYPE_7__* %111, %struct.TYPE_7__** %9, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %113 = bitcast %struct.TYPE_7__* %112 to i8*
  %114 = getelementptr inbounds i8, i8* %113, i64 16
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  store i8* %114, i8** %116, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @strcpy(i8* %119, i8* %13)
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  store %struct.TYPE_7__* %121, %struct.TYPE_7__** %123, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %124, %struct.TYPE_7__** %4, align 8
  br label %125

125:                                              ; preds = %104, %100
  br label %126

126:                                              ; preds = %125, %97
  br label %132

127:                                              ; preds = %26
  %128 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @botimport, i32 0, i32 0), align 8
  %129 = load i32, i32* @PRT_FATAL, align 4
  %130 = load i8*, i8** %3, align 8
  %131 = call i32 %128(i32 %129, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i8* %130)
  br label %132

132:                                              ; preds = %127, %126, %59
  br label %136

133:                                              ; preds = %19
  %134 = load i8*, i8** %6, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %6, align 8
  br label %136

136:                                              ; preds = %133, %132
  br label %15

137:                                              ; preds = %15
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %139 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %139)
  ret %struct.TYPE_7__* %138
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @RandomString(i8*) #2

declare dso_local i32 @BotFindStringInList(%struct.TYPE_7__*, i8*) #2

declare dso_local i32 @Log_Write(i8*, i8*, i8*) #2

declare dso_local %struct.TYPE_7__* @GetClearedMemory(i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
