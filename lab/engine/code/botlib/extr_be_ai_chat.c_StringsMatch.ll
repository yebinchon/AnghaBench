; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_chat.c_StringsMatch.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_chat.c_StringsMatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_8__*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i8*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i8*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@MT_STRING = common dso_local global i64 0, align 8
@qfalse = common dso_local global i32 0, align 4
@MT_VARIABLE = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StringsMatch(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i32 -1, i32* %6, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %8, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %10, align 8
  br label %16

16:                                               ; preds = %135, %2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %18 = icmp ne %struct.TYPE_9__* %17, null
  br i1 %18, label %19, label %139

19:                                               ; preds = %16
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MT_STRING, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %106

25:                                               ; preds = %19
  store i8* null, i8** %9, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %11, align 8
  br label %29

29:                                               ; preds = %89, %25
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %31 = icmp ne %struct.TYPE_8__* %30, null
  br i1 %31, label %32, label %93

32:                                               ; preds = %29
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = load i8*, i8** %8, align 8
  store i8* %39, i8** %9, align 8
  br label %93

40:                                               ; preds = %32
  %41 = load i8*, i8** %8, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* @qfalse, align 4
  %46 = call i32 @StringContains(i8* %41, i8* %44, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %88

49:                                               ; preds = %40
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  store i8* %53, i8** %9, align 8
  %54 = load i32, i32* %6, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %82

56:                                               ; preds = %49
  %57 = load i8*, i8** %9, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = ptrtoint i8* %57 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = sub nsw i64 %63, %72
  %74 = trunc i64 %73 to i32
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  store i32 %74, i32* %81, align 4
  store i32 -1, i32* %6, align 4
  br label %93

82:                                               ; preds = %49
  %83 = load i32, i32* %7, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  br label %93

86:                                               ; preds = %82
  br label %87

87:                                               ; preds = %86
  store i8* null, i8** %9, align 8
  br label %88

88:                                               ; preds = %87, %40
  br label %89

89:                                               ; preds = %88
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  store %struct.TYPE_8__* %92, %struct.TYPE_8__** %11, align 8
  br label %29

93:                                               ; preds = %85, %56, %38, %29
  %94 = load i8*, i8** %9, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* @qfalse, align 4
  store i32 %97, i32* %3, align 4
  br label %189

98:                                               ; preds = %93
  %99 = load i8*, i8** %9, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @strlen(i8* %102)
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %99, i64 %104
  store i8* %105, i8** %8, align 8
  br label %134

106:                                              ; preds = %19
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @MT_VARIABLE, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %133

112:                                              ; preds = %106
  %113 = load i8*, i8** %8, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = ptrtoint i8* %113 to i64
  %118 = ptrtoint i8* %116 to i64
  %119 = sub i64 %117, %118
  %120 = trunc i64 %119 to i32
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  store i32 %120, i32* %128, align 4
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %6, align 4
  br label %133

133:                                              ; preds = %112, %106
  br label %134

134:                                              ; preds = %133, %98
  br label %135

135:                                              ; preds = %134
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %137, align 8
  store %struct.TYPE_9__* %138, %struct.TYPE_9__** %10, align 8
  br label %16

139:                                              ; preds = %16
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %141 = icmp ne %struct.TYPE_9__* %140, null
  br i1 %141, label %187, label %142

142:                                              ; preds = %139
  %143 = load i32, i32* %6, align 4
  %144 = icmp sge i32 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %142
  %146 = load i8*, i8** %8, align 8
  %147 = call i32 @strlen(i8* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %187, label %149

149:                                              ; preds = %145, %142
  %150 = load i32, i32* %6, align 4
  %151 = icmp sge i32 %150, 0
  br i1 %151, label %152, label %185

152:                                              ; preds = %149
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %154, align 8
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = icmp sge i32 %160, 0
  %162 = zext i1 %161 to i32
  %163 = call i32 @assert(i32 %162)
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %168, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, i8* %166, i64 %175
  %177 = call i32 @strlen(i8* %176)
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %179, align 8
  %181 = load i32, i32* %6, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 0
  store i32 %177, i32* %184, align 4
  br label %185

185:                                              ; preds = %152, %149
  %186 = load i32, i32* @qtrue, align 4
  store i32 %186, i32* %3, align 4
  br label %189

187:                                              ; preds = %145, %139
  %188 = load i32, i32* @qfalse, align 4
  store i32 %188, i32* %3, align 4
  br label %189

189:                                              ; preds = %187, %185, %96
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @StringContains(i8*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
