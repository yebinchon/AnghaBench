; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_chat.c_BotLoadChatMessage.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_chat.c_BotLoadChatMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8*, i32, i8* }

@qfalse = common dso_local global i32 0, align 4
@TT_STRING = common dso_local global i64 0, align 8
@MAX_MESSAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"chat message too long\00", align 1
@TT_NUMBER = common dso_local global i64 0, align 8
@TT_INTEGER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%cv%ld%c\00", align 1
@ESCAPE_CHAR = common dso_local global i32 0, align 4
@TT_NAME = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"%cr%s%c\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"unknown message component %s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c",\00", align 1
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotLoadChatMessage(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  store i8* %8, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  store i8 0, i8* %9, align 1
  br label %10

10:                                               ; preds = %2, %121
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @PC_ExpectAnyToken(i32* %11, %struct.TYPE_3__* %7)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* @qfalse, align 4
  store i32 %15, i32* %3, align 4
  br label %124

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TT_STRING, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @StripDoubleQuotes(i8* %23)
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @strlen(i8* %25)
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @strlen(i8* %28)
  %30 = add i64 %26, %29
  %31 = add i64 %30, 1
  %32 = load i32, i32* @MAX_MESSAGE_SIZE, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp ugt i64 %31, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %21
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 (i32*, i8*, ...) @SourceError(i32* %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @qfalse, align 4
  store i32 %38, i32* %3, align 4
  br label %124

39:                                               ; preds = %21
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @strcat(i8* %40, i8* %42)
  br label %110

44:                                               ; preds = %16
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @TT_NUMBER, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %76

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @TT_INTEGER, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %76

55:                                               ; preds = %49
  %56 = load i8*, i8** %6, align 8
  %57 = call i64 @strlen(i8* %56)
  %58 = add i64 %57, 7
  %59 = load i32, i32* @MAX_MESSAGE_SIZE, align 4
  %60 = sext i32 %59 to i64
  %61 = icmp ugt i64 %58, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 (i32*, i8*, ...) @SourceError(i32* %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @qfalse, align 4
  store i32 %65, i32* %3, align 4
  br label %124

66:                                               ; preds = %55
  %67 = load i8*, i8** %6, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = call i64 @strlen(i8* %68)
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i32, i32* @ESCAPE_CHAR, align 4
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* @ESCAPE_CHAR, align 4
  %75 = call i32 @sprintf(i8* %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %71, i8* %73, i32 %74)
  br label %109

76:                                               ; preds = %49, %44
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @TT_NAME, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %102

81:                                               ; preds = %76
  %82 = load i8*, i8** %6, align 8
  %83 = call i64 @strlen(i8* %82)
  %84 = add i64 %83, 7
  %85 = load i32, i32* @MAX_MESSAGE_SIZE, align 4
  %86 = sext i32 %85 to i64
  %87 = icmp ugt i64 %84, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 (i32*, i8*, ...) @SourceError(i32* %89, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %91 = load i32, i32* @qfalse, align 4
  store i32 %91, i32* %3, align 4
  br label %124

92:                                               ; preds = %81
  %93 = load i8*, i8** %6, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = call i64 @strlen(i8* %94)
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i32, i32* @ESCAPE_CHAR, align 4
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = load i32, i32* @ESCAPE_CHAR, align 4
  %101 = call i32 @sprintf(i8* %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %97, i8* %99, i32 %100)
  br label %108

102:                                              ; preds = %76
  %103 = load i32*, i32** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 (i32*, i8*, ...) @SourceError(i32* %103, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %105)
  %107 = load i32, i32* @qfalse, align 4
  store i32 %107, i32* %3, align 4
  br label %124

108:                                              ; preds = %92
  br label %109

109:                                              ; preds = %108, %66
  br label %110

110:                                              ; preds = %109, %39
  %111 = load i32*, i32** %4, align 8
  %112 = call i64 @PC_CheckTokenString(i32* %111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  br label %122

115:                                              ; preds = %110
  %116 = load i32*, i32** %4, align 8
  %117 = call i32 @PC_ExpectTokenString(i32* %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %115
  %120 = load i32, i32* @qfalse, align 4
  store i32 %120, i32* %3, align 4
  br label %124

121:                                              ; preds = %115
  br label %10

122:                                              ; preds = %114
  %123 = load i32, i32* @qtrue, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %122, %119, %102, %88, %62, %35, %14
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @PC_ExpectAnyToken(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @StripDoubleQuotes(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @SourceError(i32*, i8*, ...) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i8*, i32) #1

declare dso_local i64 @PC_CheckTokenString(i32*, i8*) #1

declare dso_local i32 @PC_ExpectTokenString(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
