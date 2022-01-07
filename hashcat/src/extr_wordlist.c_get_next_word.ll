; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_wordlist.c_get_next_word.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_wordlist.c_get_next_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__*, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i64, i64, i8*, i32, i8*, i32, i32 (i8*, i64, i32*, i32*)* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@HCBUFSIZ_TINY = common dso_local global i64 0, align 8
@RP_PASSWORD_SIZE = common dso_local global i32 0, align 4
@PW_MAX = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"BUG feof()!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_next_word(%struct.TYPE_11__* %0, i32* %1, i8** %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32* %3, i32** %8, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %9, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %10, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %11, align 8
  br label %32

32:                                               ; preds = %139, %131, %110, %88, %4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %35, %38
  br i1 %39, label %40, label %145

40:                                               ; preds = %32
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  store i8* %47, i8** %14, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 6
  %50 = load i32 (i8*, i64, i32*, i32*)*, i32 (i8*, i64, i32*, i32*)** %49, align 8
  %51 = load i8*, i8** %14, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %54, %57
  %59 = call i32 %50(i8* %51, i64 %58, i32* %13, i32* %12)
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, %61
  store i64 %65, i64* %63, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %67 = load i8*, i8** %14, align 8
  %68 = load i32, i32* %13, align 4
  %69 = call i64 @convert_from_hex(%struct.TYPE_11__* %66, i8* %67, i32 %68)
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %13, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %97

75:                                               ; preds = %40
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 4
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %15, align 8
  %79 = load i64, i64* @HCBUFSIZ_TINY, align 8
  store i64 %79, i64* %16, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  store i64 %81, i64* %17, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @iconv(i32 %84, i8** %14, i64* %17, i8** %15, i64* %16)
  store i64 %85, i64* %18, align 8
  %86 = load i64, i64* %18, align 8
  %87 = icmp eq i64 %86, -1
  br i1 %87, label %88, label %89

88:                                               ; preds = %75
  br label %32

89:                                               ; preds = %75
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 4
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %14, align 8
  %93 = load i64, i64* @HCBUFSIZ_TINY, align 8
  %94 = load i64, i64* %16, align 8
  %95 = sub i64 %93, %94
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %13, align 4
  br label %97

97:                                               ; preds = %89, %40
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @run_rule_engine(i32 %100, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %135

106:                                              ; preds = %97
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* @RP_PASSWORD_SIZE, align 4
  %109 = icmp sge i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %32

111:                                              ; preds = %106
  %112 = load i32, i32* @RP_PASSWORD_SIZE, align 4
  %113 = zext i32 %112 to i64
  %114 = call i8* @llvm.stacksave()
  store i8* %114, i8** %19, align 8
  %115 = alloca i8, i64 %113, align 16
  store i64 %113, i64* %20, align 8
  %116 = trunc i64 %113 to i32
  %117 = call i32 @memset(i8* %115, i32 0, i32 %116)
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i8*, i8** %14, align 8
  %125 = load i32, i32* %13, align 4
  %126 = call i32 @_old_apply_rule(i32 %120, i32 %123, i8* %124, i32 %125, i8* %115)
  store i32 %126, i32* %21, align 4
  %127 = load i32, i32* %21, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %111
  store i32 2, i32* %22, align 4
  br label %131

130:                                              ; preds = %111
  store i32 0, i32* %22, align 4
  br label %131

131:                                              ; preds = %130, %129
  %132 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %132)
  %133 = load i32, i32* %22, align 4
  switch i32 %133, label %161 [
    i32 0, label %134
    i32 2, label %32
  ]

134:                                              ; preds = %131
  br label %135

135:                                              ; preds = %134, %97
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* @PW_MAX, align 4
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  br label %32

140:                                              ; preds = %135
  %141 = load i8*, i8** %14, align 8
  %142 = load i8**, i8*** %7, align 8
  store i8* %141, i8** %142, align 8
  %143 = load i32, i32* %13, align 4
  %144 = load i32*, i32** %8, align 8
  store i32 %143, i32* %144, align 4
  br label %160

145:                                              ; preds = %32
  %146 = load i32*, i32** %6, align 8
  %147 = call i64 @hc_feof(i32* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = load i32, i32* @stderr, align 4
  %151 = call i32 @fprintf(i32 %150, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %160

152:                                              ; preds = %145
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %154 = load i32*, i32** %6, align 8
  %155 = call i32 @load_segment(%struct.TYPE_11__* %153, i32* %154)
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %157 = load i32*, i32** %6, align 8
  %158 = load i8**, i8*** %7, align 8
  %159 = load i32*, i32** %8, align 8
  call void @get_next_word(%struct.TYPE_11__* %156, i32* %157, i8** %158, i32* %159)
  br label %160

160:                                              ; preds = %152, %149, %140
  ret void

161:                                              ; preds = %131
  unreachable
}

declare dso_local i64 @convert_from_hex(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i64 @iconv(i32, i8**, i64*, i8**, i64*) #1

declare dso_local i64 @run_rule_engine(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @_old_apply_rule(i32, i32, i8*, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @hc_feof(i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @load_segment(%struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
