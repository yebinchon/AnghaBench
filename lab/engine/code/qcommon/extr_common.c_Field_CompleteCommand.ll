; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Field_CompleteCommand.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Field_CompleteCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i8*, i32 }

@.str = private unnamed_addr constant [3 x i8] c" \22\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@completionString = common dso_local global i8* null, align 8
@con_autochat = common dso_local global %struct.TYPE_3__* null, align 8
@completionField = common dso_local global %struct.TYPE_4__* null, align 8
@qtrue = common dso_local global i64 0, align 8
@matchCount = common dso_local global i64 0, align 8
@shortestMatch = common dso_local global i64* null, align 8
@FindMatches = common dso_local global i32 0, align 4
@PrintMatches = common dso_local global i32 0, align 4
@PrintCvarMatches = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Field_CompleteCommand(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i8* @Com_SkipCharset(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @Cmd_TokenizeStringIgnoreQuotes(i8* %12)
  %14 = call i32 (...) @Cmd_Argc()
  store i32 %14, i32* %7, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = getelementptr inbounds i8, i8* %18, i64 -1
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 32
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** @completionString, align 8
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  br label %30

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  %28 = sub nsw i32 %27, 1
  %29 = call i8* @Cmd_Argv(i32 %28)
  store i8* %29, i8** @completionString, align 8
  br label %30

30:                                               ; preds = %26, %23
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @con_autochat, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %91

35:                                               ; preds = %30
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @completionField, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %91

43:                                               ; preds = %35
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @completionField, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 92
  br i1 %50, label %51, label %91

51:                                               ; preds = %43
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @completionField, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 47
  br i1 %58, label %59, label %86

59:                                               ; preds = %51
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @completionField, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @strlen(i8* %62)
  %64 = add nsw i64 %63, 1
  %65 = icmp uge i64 %64, 8
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %176

67:                                               ; preds = %59
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @completionField, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** @completionField, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** @completionField, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i64 @strlen(i8* %78)
  %80 = add nsw i64 %79, 1
  %81 = call i32 @memmove(i8* %71, i8* %75, i64 %80)
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @completionField, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %67, %51
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** @completionField, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 0
  store i8 92, i8* %90, align 1
  br label %91

91:                                               ; preds = %86, %43, %35, %30
  %92 = load i32, i32* %7, align 4
  %93 = icmp sgt i32 %92, 1
  br i1 %93, label %94, label %125

94:                                               ; preds = %91
  %95 = call i8* @Cmd_Argv(i32 0)
  store i8* %95, i8** %8, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 92
  br i1 %100, label %107, label %101

101:                                              ; preds = %94
  %102 = load i8*, i8** %8, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 47
  br i1 %106, label %107, label %110

107:                                              ; preds = %101, %94
  %108 = load i8*, i8** %8, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %8, align 8
  br label %110

110:                                              ; preds = %107, %101
  %111 = load i8*, i8** %4, align 8
  %112 = call i8* @Field_FindFirstSeparator(i8* %111)
  store i8* %112, i8** %9, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = load i8*, i8** %9, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 1
  %117 = load i64, i64* @qtrue, align 8
  %118 = load i64, i64* @qtrue, align 8
  call void @Field_CompleteCommand(i8* %116, i64 %117, i64 %118)
  br label %124

119:                                              ; preds = %110
  %120 = load i8*, i8** %8, align 8
  %121 = load i8*, i8** %4, align 8
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @Cmd_CompleteArgument(i8* %120, i8* %121, i32 %122)
  br label %124

124:                                              ; preds = %119, %114
  br label %176

125:                                              ; preds = %91
  %126 = load i8*, i8** @completionString, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 0
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 92
  br i1 %130, label %137, label %131

131:                                              ; preds = %125
  %132 = load i8*, i8** @completionString, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 0
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 47
  br i1 %136, label %137, label %140

137:                                              ; preds = %131, %125
  %138 = load i8*, i8** @completionString, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** @completionString, align 8
  br label %140

140:                                              ; preds = %137, %131
  store i64 0, i64* @matchCount, align 8
  %141 = load i64*, i64** @shortestMatch, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 0
  store i64 0, i64* %142, align 8
  %143 = load i8*, i8** @completionString, align 8
  %144 = call i64 @strlen(i8* %143)
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  br label %176

147:                                              ; preds = %140
  %148 = load i64, i64* %5, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load i32, i32* @FindMatches, align 4
  %152 = call i32 @Cmd_CommandCompletion(i32 %151)
  br label %153

153:                                              ; preds = %150, %147
  %154 = load i64, i64* %6, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i32, i32* @FindMatches, align 4
  %158 = call i32 @Cvar_CommandCompletion(i32 %157)
  br label %159

159:                                              ; preds = %156, %153
  %160 = call i32 (...) @Field_Complete()
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %175, label %162

162:                                              ; preds = %159
  %163 = load i64, i64* %5, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load i32, i32* @PrintMatches, align 4
  %167 = call i32 @Cmd_CommandCompletion(i32 %166)
  br label %168

168:                                              ; preds = %165, %162
  %169 = load i64, i64* %6, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load i32, i32* @PrintCvarMatches, align 4
  %173 = call i32 @Cvar_CommandCompletion(i32 %172)
  br label %174

174:                                              ; preds = %171, %168
  br label %175

175:                                              ; preds = %174, %159
  br label %176

176:                                              ; preds = %66, %146, %175, %124
  ret void
}

declare dso_local i8* @Com_SkipCharset(i8*, i8*) #1

declare dso_local i32 @Cmd_TokenizeStringIgnoreQuotes(i8*) #1

declare dso_local i32 @Cmd_Argc(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @Cmd_Argv(i32) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i8* @Field_FindFirstSeparator(i8*) #1

declare dso_local i32 @Cmd_CompleteArgument(i8*, i8*, i32) #1

declare dso_local i32 @Cmd_CommandCompletion(i32) #1

declare dso_local i32 @Cvar_CommandCompletion(i32) #1

declare dso_local i32 @Field_Complete(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
