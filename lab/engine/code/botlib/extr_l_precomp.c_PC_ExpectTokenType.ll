; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_l_precomp.c_PC_ExpectTokenType.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_l_precomp.c_PC_ExpectTokenType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@MAX_TOKEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"couldn't read expected token\00", align 1
@qfalse = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TT_STRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@TT_LITERAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@TT_NUMBER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@TT_NAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@TT_PUNCTUATION = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"punctuation\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"expected a %s, found %s\00", align 1
@TT_DECIMAL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"decimal\00", align 1
@TT_HEX = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"hex\00", align 1
@TT_OCTAL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"octal\00", align 1
@TT_BINARY = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@TT_LONG = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c" long\00", align 1
@TT_UNSIGNED = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [10 x i8] c" unsigned\00", align 1
@TT_FLOAT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c" float\00", align 1
@TT_INTEGER = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [9 x i8] c" integer\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"expected %s, found %s\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"found %s\00", align 1
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PC_ExpectTokenType(i32* %0, i32 %1, i32 %2, %struct.TYPE_4__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %9, align 8
  %13 = load i32, i32* @MAX_TOKEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %19 = call i32 @PC_ReadToken(i32* %17, %struct.TYPE_4__* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %4
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 (i32*, i8*, ...) @SourceError(i32* %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @qfalse, align 4
  store i32 %24, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %171

25:                                               ; preds = %4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %69

31:                                               ; preds = %25
  %32 = call i32 @strcpy(i8* %16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @TT_STRING, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 @strcpy(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %31
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @TT_LITERAL, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 @strcpy(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %38
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @TT_NUMBER, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = call i32 @strcpy(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %44
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @TT_NAME, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = call i32 @strcpy(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %50
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @TT_PUNCTUATION, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = call i32 @strcpy(i8* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %56
  %63 = load i32*, i32** %6, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32*, i8*, ...) @SourceError(i32* %63, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* %16, i32 %66)
  %68 = load i32, i32* @qfalse, align 4
  store i32 %68, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %171

69:                                               ; preds = %25
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @TT_NUMBER, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %148

75:                                               ; preds = %69
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %8, align 4
  %80 = and i32 %78, %79
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %147

83:                                               ; preds = %75
  %84 = call i32 @strcpy(i8* %16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @TT_DECIMAL, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = call i32 @strcpy(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %83
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @TT_HEX, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = call i32 @strcpy(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %91
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @TT_OCTAL, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = call i32 @strcpy(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %98
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @TT_BINARY, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = call i32 @strcpy(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %105
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @TT_LONG, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = call i32 @strcat(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  br label %119

119:                                              ; preds = %117, %112
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @TT_UNSIGNED, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = call i32 @strcat(i8* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %119
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @TT_FLOAT, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = call i32 @strcat(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  br label %133

133:                                              ; preds = %131, %126
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* @TT_INTEGER, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  %139 = call i32 @strcat(i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %133
  %141 = load i32*, i32** %6, align 8
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (i32*, i8*, ...) @SourceError(i32* %141, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i8* %16, i32 %144)
  %146 = load i32, i32* @qfalse, align 4
  store i32 %146, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %171

147:                                              ; preds = %75
  br label %169

148:                                              ; preds = %69
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @TT_PUNCTUATION, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %168

154:                                              ; preds = %148
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %8, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %167

160:                                              ; preds = %154
  %161 = load i32*, i32** %6, align 8
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = call i32 (i32*, i8*, ...) @SourceError(i32* %161, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* @qfalse, align 4
  store i32 %166, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %171

167:                                              ; preds = %154
  br label %168

168:                                              ; preds = %167, %148
  br label %169

169:                                              ; preds = %168, %147
  %170 = load i32, i32* @qtrue, align 4
  store i32 %170, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %171

171:                                              ; preds = %169, %160, %140, %62, %21
  %172 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %172)
  %173 = load i32, i32* %5, align 4
  ret i32 %173
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PC_ReadToken(i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @SourceError(i32*, i8*, ...) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
