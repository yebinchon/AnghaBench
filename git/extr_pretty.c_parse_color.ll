; ModuleID = '/home/carl/AnghaBench/git/extr_pretty.c_parse_color.c'
source_filename = "/home/carl/AnghaBench/git/extr_pretty.c_parse_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.format_commit_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@COLOR_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"auto,\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"always,\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"unable to parse --pretty format\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@GIT_COLOR_RED = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@GIT_COLOR_GREEN = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@GIT_COLOR_BLUE = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GIT_COLOR_RESET = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.strbuf*, i8*, %struct.format_commit_context*)* @parse_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_color(%struct.strbuf* %0, i8* %1, %struct.format_commit_context* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.format_commit_context*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.format_commit_context* %2, %struct.format_commit_context** %7, align 8
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 40
  br i1 %20, label %21, label %99

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 2
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = call i8* @strchr(i8* %24, i8 signext 41)
  store i8* %25, i8** %11, align 8
  %26 = load i32, i32* @COLOR_MAXLEN, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %12, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %13, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  store i64 0, i64* %4, align 8
  store i32 1, i32* %14, align 4
  br label %97

33:                                               ; preds = %21
  %34 = load i8*, i8** %10, align 8
  %35 = call i64 @skip_prefix(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %10)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %33
  %38 = load %struct.format_commit_context*, %struct.format_commit_context** %7, align 8
  %39 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @want_color(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %37
  %46 = load i8*, i8** %11, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = ptrtoint i8* %46 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %4, align 8
  store i32 1, i32* %14, align 4
  br label %97

52:                                               ; preds = %37
  br label %75

53:                                               ; preds = %33
  %54 = load i8*, i8** %10, align 8
  %55 = call i64 @skip_prefix(i8* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %10)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %74

58:                                               ; preds = %53
  %59 = load %struct.format_commit_context*, %struct.format_commit_context** %7, align 8
  %60 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @want_color(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %58
  %67 = load i8*, i8** %11, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = ptrtoint i8* %67 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %4, align 8
  store i32 1, i32* %14, align 4
  br label %97

73:                                               ; preds = %58
  br label %74

74:                                               ; preds = %73, %57
  br label %75

75:                                               ; preds = %74, %52
  %76 = load i8*, i8** %10, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = ptrtoint i8* %77 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  %82 = trunc i64 %81 to i32
  %83 = call i64 @color_parse_mem(i8* %76, i32 %82, i8* %29)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %75
  %86 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %87 = call i32 @die(i32 %86)
  br label %88

88:                                               ; preds = %85, %75
  %89 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %90 = call i32 @strbuf_addstr(%struct.strbuf* %89, i8* %29)
  %91 = load i8*, i8** %11, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = ptrtoint i8* %91 to i64
  %94 = ptrtoint i8* %92 to i64
  %95 = sub i64 %93, %94
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %4, align 8
  store i32 1, i32* %14, align 4
  br label %97

97:                                               ; preds = %88, %66, %45, %32
  %98 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %98)
  br label %151

99:                                               ; preds = %3
  %100 = load i8*, i8** %6, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  %102 = call i64 @skip_prefix(i8* %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %8)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i8*, i8** @GIT_COLOR_RED, align 8
  store i8* %105, i8** %9, align 8
  br label %130

106:                                              ; preds = %99
  %107 = load i8*, i8** %6, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  %109 = call i64 @skip_prefix(i8* %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %8)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = load i8*, i8** @GIT_COLOR_GREEN, align 8
  store i8* %112, i8** %9, align 8
  br label %129

113:                                              ; preds = %106
  %114 = load i8*, i8** %6, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  %116 = call i64 @skip_prefix(i8* %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %8)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = load i8*, i8** @GIT_COLOR_BLUE, align 8
  store i8* %119, i8** %9, align 8
  br label %128

120:                                              ; preds = %113
  %121 = load i8*, i8** %6, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 1
  %123 = call i64 @skip_prefix(i8* %122, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %8)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load i8*, i8** @GIT_COLOR_RESET, align 8
  store i8* %126, i8** %9, align 8
  br label %127

127:                                              ; preds = %125, %120
  br label %128

128:                                              ; preds = %127, %118
  br label %129

129:                                              ; preds = %128, %111
  br label %130

130:                                              ; preds = %129, %104
  %131 = load i8*, i8** %9, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %145

133:                                              ; preds = %130
  %134 = load %struct.format_commit_context*, %struct.format_commit_context** %7, align 8
  %135 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %134, i32 0, i32 0
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @want_color(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %133
  %142 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %143 = load i8*, i8** %9, align 8
  %144 = call i32 @strbuf_addstr(%struct.strbuf* %142, i8* %143)
  br label %145

145:                                              ; preds = %141, %133, %130
  %146 = load i8*, i8** %8, align 8
  %147 = load i8*, i8** %6, align 8
  %148 = ptrtoint i8* %146 to i64
  %149 = ptrtoint i8* %147 to i64
  %150 = sub i64 %148, %149
  store i64 %150, i64* %4, align 8
  br label %151

151:                                              ; preds = %145, %97
  %152 = load i64, i64* %4, align 8
  ret i64 %152
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i64 @want_color(i32) #1

declare dso_local i64 @color_parse_mem(i8*, i32, i8*) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
