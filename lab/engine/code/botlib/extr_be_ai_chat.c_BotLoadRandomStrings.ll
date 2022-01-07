; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_chat.c_BotLoadRandomStrings.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_chat.c_BotLoadRandomStrings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (i32, i8*, i32)* }
%struct.TYPE_9__ = type { i8*, %struct.TYPE_8__*, i64, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i8*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i64, i8* }

@MAX_MESSAGE_SIZE = common dso_local global i32 0, align 4
@BOTFILESBASEFOLDER = common dso_local global i32 0, align 4
@botimport = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@PRT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"counldn't load %s\0A\00", align 1
@TT_NAME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"unknown random %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@PRT_MESSAGE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"loaded %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @BotLoadRandomStrings(i8* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %6, align 8
  %17 = load i32, i32* @MAX_MESSAGE_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %7, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  store i32 0, i32* %5, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %13, align 8
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %187, %1
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %190

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @GetClearedHunkMemory(i32 %31)
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %6, align 8
  br label %34

34:                                               ; preds = %30, %27, %24
  %35 = load i32, i32* @BOTFILESBASEFOLDER, align 4
  %36 = call i32 @PC_SetBaseFolder(i32 %35)
  %37 = load i8*, i8** %3, align 8
  %38 = call i32* @LoadSourceFile(i8* %37)
  store i32* %38, i32** %9, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %34
  %42 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @botimport, i32 0, i32 0), align 8
  %43 = load i32, i32* @PRT_ERROR, align 4
  %44 = load i8*, i8** %3, align 8
  %45 = ptrtoint i8* %44 to i32
  %46 = call i32 %42(i32 %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %45)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  store i32 1, i32* %15, align 4
  br label %197

47:                                               ; preds = %34
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %12, align 8
  br label %48

48:                                               ; preds = %183, %47
  %49 = load i32*, i32** %9, align 8
  %50 = call i64 @PC_ReadToken(i32* %49, %struct.TYPE_7__* %10)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %184

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @TT_NAME, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load i32*, i32** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @SourceError(i32* %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @FreeSource(i32* %62)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  store i32 1, i32* %15, align 4
  br label %197

64:                                               ; preds = %52
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @strlen(i8* %66)
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %16, align 8
  %70 = load i64, i64* %16, align 8
  %71 = call i64 @PAD(i64 %70, i32 8)
  store i64 %71, i64* %16, align 8
  %72 = load i64, i64* %16, align 8
  %73 = add i64 32, %72
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = add i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %114

80:                                               ; preds = %64
  %81 = load i8*, i8** %6, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %114

83:                                               ; preds = %80
  %84 = load i8*, i8** %6, align 8
  %85 = bitcast i8* %84 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %85, %struct.TYPE_9__** %13, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 32
  store i8* %87, i8** %6, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  store i8* %88, i8** %90, align 8
  %91 = load i64, i64* %16, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 %91
  store i8* %93, i8** %6, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @strcpy(i8* %96, i8* %98)
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %101, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 2
  store i64 0, i64* %103, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %105 = icmp ne %struct.TYPE_9__* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %83
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 3
  store %struct.TYPE_9__* %107, %struct.TYPE_9__** %109, align 8
  br label %112

110:                                              ; preds = %83
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %111, %struct.TYPE_9__** %11, align 8
  br label %112

112:                                              ; preds = %110, %106
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %113, %struct.TYPE_9__** %12, align 8
  br label %114

114:                                              ; preds = %112, %80, %64
  %115 = load i32*, i32** %9, align 8
  %116 = call i32 @PC_ExpectTokenString(i32* %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load i32*, i32** %9, align 8
  %120 = call i32 @PC_ExpectTokenString(i32* %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %118, %114
  %123 = load i32*, i32** %9, align 8
  %124 = call i32 @FreeSource(i32* %123)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  store i32 1, i32* %15, align 4
  br label %197

125:                                              ; preds = %118
  br label %126

126:                                              ; preds = %182, %125
  %127 = load i32*, i32** %9, align 8
  %128 = call i32 @PC_CheckTokenString(i32* %127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  br i1 %130, label %131, label %183

131:                                              ; preds = %126
  %132 = load i32*, i32** %9, align 8
  %133 = call i32 @BotLoadChatMessage(i32* %132, i8* %20)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %131
  %136 = load i32*, i32** %9, align 8
  %137 = call i32 @FreeSource(i32* %136)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  store i32 1, i32* %15, align 4
  br label %197

138:                                              ; preds = %131
  %139 = call i32 @strlen(i8* %20)
  %140 = add nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  store i64 %141, i64* %16, align 8
  %142 = load i64, i64* %16, align 8
  %143 = call i64 @PAD(i64 %142, i32 8)
  store i64 %143, i64* %16, align 8
  %144 = load i64, i64* %16, align 8
  %145 = add i64 16, %144
  %146 = load i32, i32* %5, align 4
  %147 = sext i32 %146 to i64
  %148 = add i64 %147, %145
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %5, align 4
  %150 = load i32, i32* %4, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %182

152:                                              ; preds = %138
  %153 = load i8*, i8** %6, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %155, label %182

155:                                              ; preds = %152
  %156 = load i8*, i8** %6, align 8
  %157 = bitcast i8* %156 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %157, %struct.TYPE_8__** %14, align 8
  %158 = load i8*, i8** %6, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 16
  store i8* %159, i8** %6, align 8
  %160 = load i8*, i8** %6, align 8
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  store i8* %160, i8** %162, align 8
  %163 = load i64, i64* %16, align 8
  %164 = load i8*, i8** %6, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 %163
  store i8* %165, i8** %6, align 8
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @strcpy(i8* %168, i8* %20)
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %172, 1
  store i64 %173, i64* %171, align 8
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %175, align 8
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 1
  store %struct.TYPE_8__* %176, %struct.TYPE_8__** %178, align 8
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 1
  store %struct.TYPE_8__* %179, %struct.TYPE_8__** %181, align 8
  br label %182

182:                                              ; preds = %155, %152, %138
  br label %126

183:                                              ; preds = %126
  br label %48

184:                                              ; preds = %48
  %185 = load i32*, i32** %9, align 8
  %186 = call i32 @FreeSource(i32* %185)
  br label %187

187:                                              ; preds = %184
  %188 = load i32, i32* %4, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %4, align 4
  br label %21

190:                                              ; preds = %21
  %191 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @botimport, i32 0, i32 0), align 8
  %192 = load i32, i32* @PRT_MESSAGE, align 4
  %193 = load i8*, i8** %3, align 8
  %194 = ptrtoint i8* %193 to i32
  %195 = call i32 %191(i32 %192, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %194)
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %196, %struct.TYPE_9__** %2, align 8
  store i32 1, i32* %15, align 4
  br label %197

197:                                              ; preds = %190, %135, %122, %57, %41
  %198 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %198)
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  ret %struct.TYPE_9__* %199
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @GetClearedHunkMemory(i32) #2

declare dso_local i32 @PC_SetBaseFolder(i32) #2

declare dso_local i32* @LoadSourceFile(i8*) #2

declare dso_local i64 @PC_ReadToken(i32*, %struct.TYPE_7__*) #2

declare dso_local i32 @SourceError(i32*, i8*, i8*) #2

declare dso_local i32 @FreeSource(i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @PAD(i64, i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @PC_ExpectTokenString(i32*, i8*) #2

declare dso_local i32 @PC_CheckTokenString(i32*, i8*) #2

declare dso_local i32 @BotLoadChatMessage(i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
