; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_chat.c_BotLoadMatchPieces.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_chat.c_BotLoadMatchPieces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__*, %struct.TYPE_10__*, i32 }
%struct.TYPE_9__ = type { i8*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i64, i32, i64, i64 }

@qfalse = common dso_local global i32 0, align 4
@TT_NUMBER = common dso_local global i64 0, align 8
@TT_INTEGER = common dso_local global i32 0, align 4
@MAX_MATCHVARIABLES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"can't have more than %d match variables\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"not allowed to have adjacent variables\00", align 1
@qtrue = common dso_local global i32 0, align 4
@MT_VARIABLE = common dso_local global i32 0, align 4
@TT_STRING = common dso_local global i64 0, align 8
@MT_STRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"invalid token %s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @BotLoadMatchPieces(i32* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %11, align 8
  %14 = load i32, i32* @qfalse, align 4
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %200, %2
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @PC_ReadToken(i32* %16, %struct.TYPE_8__* %8)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %201

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TT_NUMBER, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %76

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @TT_INTEGER, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %76

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MAX_MATCHVARIABLES, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load i32*, i32** %4, align 8
  %37 = load i64, i64* @MAX_MATCHVARIABLES, align 8
  %38 = call i32 (i32*, i8*, ...) @SourceError(i32* %36, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %37)
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @FreeSource(i32* %39)
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %42 = call i32 @BotFreeMatchPieces(%struct.TYPE_10__* %41)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %203

43:                                               ; preds = %30
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 (i32*, i8*, ...) @SourceError(i32* %47, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @FreeSource(i32* %49)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %52 = call i32 @BotFreeMatchPieces(%struct.TYPE_10__* %51)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %203

53:                                               ; preds = %43
  %54 = load i32, i32* @qtrue, align 4
  store i32 %54, i32* %6, align 4
  %55 = call i64 @GetClearedHunkMemory(i32 32)
  %56 = inttoptr i64 %55 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %56, %struct.TYPE_10__** %9, align 8
  %57 = load i32, i32* @MT_VARIABLE, align 4
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %65, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %67 = icmp ne %struct.TYPE_10__* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %53
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  store %struct.TYPE_10__* %69, %struct.TYPE_10__** %71, align 8
  br label %74

72:                                               ; preds = %53
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %73, %struct.TYPE_10__** %10, align 8
  br label %74

74:                                               ; preds = %72, %68
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %75, %struct.TYPE_10__** %11, align 8
  br label %185

76:                                               ; preds = %24, %19
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @TT_STRING, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %175

81:                                               ; preds = %76
  %82 = call i64 @GetClearedHunkMemory(i32 32)
  %83 = inttoptr i64 %82 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %83, %struct.TYPE_10__** %9, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %85, align 8
  %86 = load i32, i32* @MT_STRING, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  store i64 0, i64* %90, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %92, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %94 = icmp ne %struct.TYPE_10__* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %81
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 2
  store %struct.TYPE_10__* %96, %struct.TYPE_10__** %98, align 8
  br label %101

99:                                               ; preds = %81
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %100, %struct.TYPE_10__** %10, align 8
  br label %101

101:                                              ; preds = %99, %95
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %102, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %13, align 8
  %103 = load i32, i32* @qfalse, align 4
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %165, %101
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = icmp ne %struct.TYPE_9__* %107, null
  br i1 %108, label %109, label %120

109:                                              ; preds = %104
  %110 = load i32*, i32** %4, align 8
  %111 = load i64, i64* @TT_STRING, align 8
  %112 = call i32 @PC_ExpectTokenType(i32* %110, i64 %111, i32 0, %struct.TYPE_8__* %8)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = load i32*, i32** %4, align 8
  %116 = call i32 @FreeSource(i32* %115)
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %118 = call i32 @BotFreeMatchPieces(%struct.TYPE_10__* %117)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %203

119:                                              ; preds = %109
  br label %120

120:                                              ; preds = %119, %104
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @StripDoubleQuotes(i64 %122)
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @strlen(i64 %125)
  %127 = sext i32 %126 to i64
  %128 = add i64 16, %127
  %129 = add i64 %128, 1
  %130 = trunc i64 %129 to i32
  %131 = call i64 @GetClearedHunkMemory(i32 %130)
  %132 = inttoptr i64 %131 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %132, %struct.TYPE_9__** %12, align 8
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %134 = bitcast %struct.TYPE_9__* %133 to i8*
  %135 = getelementptr inbounds i8, i8* %134, i64 16
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  store i8* %135, i8** %137, align 8
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @strcpy(i8* %140, i64 %142)
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @strlen(i64 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %120
  %149 = load i32, i32* @qtrue, align 4
  store i32 %149, i32* %7, align 4
  br label %150

150:                                              ; preds = %148, %120
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %152, align 8
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %154 = icmp ne %struct.TYPE_9__* %153, null
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  store %struct.TYPE_9__* %156, %struct.TYPE_9__** %158, align 8
  br label %163

159:                                              ; preds = %150
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 1
  store %struct.TYPE_9__* %160, %struct.TYPE_9__** %162, align 8
  br label %163

163:                                              ; preds = %159, %155
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %164, %struct.TYPE_9__** %13, align 8
  br label %165

165:                                              ; preds = %163
  %166 = load i32*, i32** %4, align 8
  %167 = call i64 @PC_CheckTokenString(i32* %166, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %104, label %169

169:                                              ; preds = %165
  %170 = load i32, i32* %7, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %174, label %172

172:                                              ; preds = %169
  %173 = load i32, i32* @qfalse, align 4
  store i32 %173, i32* %6, align 4
  br label %174

174:                                              ; preds = %172, %169
  br label %184

175:                                              ; preds = %76
  %176 = load i32*, i32** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = call i32 (i32*, i8*, ...) @SourceError(i32* %176, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i64 %178)
  %180 = load i32*, i32** %4, align 8
  %181 = call i32 @FreeSource(i32* %180)
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %183 = call i32 @BotFreeMatchPieces(%struct.TYPE_10__* %182)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %203

184:                                              ; preds = %174
  br label %185

185:                                              ; preds = %184, %74
  %186 = load i32*, i32** %4, align 8
  %187 = load i8*, i8** %5, align 8
  %188 = call i64 @PC_CheckTokenString(i32* %186, i8* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %185
  br label %201

191:                                              ; preds = %185
  %192 = load i32*, i32** %4, align 8
  %193 = call i32 @PC_ExpectTokenString(i32* %192, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %200, label %195

195:                                              ; preds = %191
  %196 = load i32*, i32** %4, align 8
  %197 = call i32 @FreeSource(i32* %196)
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %199 = call i32 @BotFreeMatchPieces(%struct.TYPE_10__* %198)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %203

200:                                              ; preds = %191
  br label %15

201:                                              ; preds = %190, %15
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %202, %struct.TYPE_10__** %3, align 8
  br label %203

203:                                              ; preds = %201, %195, %175, %114, %46, %35
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  ret %struct.TYPE_10__* %204
}

declare dso_local i64 @PC_ReadToken(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @SourceError(i32*, i8*, ...) #1

declare dso_local i32 @FreeSource(i32*) #1

declare dso_local i32 @BotFreeMatchPieces(%struct.TYPE_10__*) #1

declare dso_local i64 @GetClearedHunkMemory(i32) #1

declare dso_local i32 @PC_ExpectTokenType(i32*, i64, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @StripDoubleQuotes(i64) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @strcpy(i8*, i64) #1

declare dso_local i64 @PC_CheckTokenString(i32*, i8*) #1

declare dso_local i32 @PC_ExpectTokenString(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
