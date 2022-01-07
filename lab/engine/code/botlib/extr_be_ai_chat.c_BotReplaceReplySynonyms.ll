; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_chat.c_BotReplaceReplySynonyms.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_chat.c_BotReplaceReplySynonyms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i8*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, %struct.TYPE_7__* }

@synonyms = common dso_local global %struct.TYPE_6__* null, align 8
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotReplaceReplySynonyms(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %5, align 8
  br label %11

11:                                               ; preds = %151, %2
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %152

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %28, %15
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i8*, i8** %5, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp sle i32 %24, 32
  br label %26

26:                                               ; preds = %21, %16
  %27 = phi i1 [ false, %16 ], [ %25, %21 ]
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %5, align 8
  br label %16

31:                                               ; preds = %26
  %32 = load i8*, i8** %5, align 8
  %33 = load i8, i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  br label %152

36:                                               ; preds = %31
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @synonyms, align 8
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %8, align 8
  br label %38

38:                                               ; preds = %126, %36
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %40 = icmp ne %struct.TYPE_6__* %39, null
  br i1 %40, label %41, label %130

41:                                               ; preds = %38
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %4, align 8
  %46 = and i64 %44, %45
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  br label %126

49:                                               ; preds = %41
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  store %struct.TYPE_7__* %54, %struct.TYPE_7__** %9, align 8
  br label %55

55:                                               ; preds = %117, %49
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %57 = icmp ne %struct.TYPE_7__* %56, null
  br i1 %57, label %58, label %121

58:                                               ; preds = %55
  %59 = load i8*, i8** %5, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* @qfalse, align 4
  %64 = call i8* @StringContainsWord(i8* %59, i8* %62, i32 %63)
  store i8* %64, i8** %6, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = load i8*, i8** %6, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = icmp ne i8* %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67, %58
  br label %117

72:                                               ; preds = %67
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** %7, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = load i32, i32* @qfalse, align 4
  %81 = call i8* @StringContainsWord(i8* %78, i8* %79, i32 %80)
  store i8* %81, i8** %6, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %72
  %85 = load i8*, i8** %6, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = icmp eq i8* %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %117

89:                                               ; preds = %84, %72
  %90 = load i8*, i8** %5, align 8
  %91 = load i8*, i8** %7, align 8
  %92 = call i32 @strlen(i8* %91)
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %90, i64 %93
  %95 = load i8*, i8** %5, align 8
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @strlen(i8* %98)
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %95, i64 %100
  %102 = load i8*, i8** %5, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @strlen(i8* %105)
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %102, i64 %107
  %109 = call i32 @strlen(i8* %108)
  %110 = add nsw i32 %109, 1
  %111 = call i32 @memmove(i8* %94, i8* %101, i32 %110)
  %112 = load i8*, i8** %5, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = load i8*, i8** %7, align 8
  %115 = call i32 @strlen(i8* %114)
  %116 = call i32 @Com_Memcpy(i8* %112, i8* %113, i32 %115)
  br label %121

117:                                              ; preds = %88, %71
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  store %struct.TYPE_7__* %120, %struct.TYPE_7__** %9, align 8
  br label %55

121:                                              ; preds = %89, %55
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %123 = icmp ne %struct.TYPE_7__* %122, null
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  br label %130

125:                                              ; preds = %121
  br label %126

126:                                              ; preds = %125, %48
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  store %struct.TYPE_6__* %129, %struct.TYPE_6__** %8, align 8
  br label %38

130:                                              ; preds = %124, %38
  br label %131

131:                                              ; preds = %143, %130
  %132 = load i8*, i8** %5, align 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = load i8*, i8** %5, align 8
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp sgt i32 %139, 32
  br label %141

141:                                              ; preds = %136, %131
  %142 = phi i1 [ false, %131 ], [ %140, %136 ]
  br i1 %142, label %143, label %146

143:                                              ; preds = %141
  %144 = load i8*, i8** %5, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %5, align 8
  br label %131

146:                                              ; preds = %141
  %147 = load i8*, i8** %5, align 8
  %148 = load i8, i8* %147, align 1
  %149 = icmp ne i8 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %146
  br label %152

151:                                              ; preds = %146
  br label %11

152:                                              ; preds = %150, %35, %11
  ret void
}

declare dso_local i8* @StringContainsWord(i8*, i8*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @Com_Memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
