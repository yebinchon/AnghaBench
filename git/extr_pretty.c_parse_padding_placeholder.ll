; ModuleID = '/home/carl/AnghaBench/git/extr_pretty.c_parse_padding_placeholder.c'
source_filename = "/home/carl/AnghaBench/git/extr_pretty.c_parse_padding_placeholder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.format_commit_context = type { i32, i32, i32 }

@flush_right = common dso_local global i32 0, align 4
@flush_both = common dso_local global i32 0, align 4
@flush_left_and_steal = common dso_local global i32 0, align 4
@flush_left = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c",)\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"trunc)\00", align 1
@trunc_right = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"ltrunc)\00", align 1
@trunc_left = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"mtrunc)\00", align 1
@trunc_middle = common dso_local global i32 0, align 4
@trunc_none = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, %struct.format_commit_context*)* @parse_padding_placeholder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_padding_placeholder(i8* %0, %struct.format_commit_context* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.format_commit_context*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.format_commit_context* %1, %struct.format_commit_context** %5, align 8
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %6, align 8
  %16 = load i8, i8* %14, align 1
  %17 = sext i8 %16 to i32
  switch i32 %17, label %42 [
    i32 60, label %18
    i32 62, label %20
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* @flush_right, align 4
  store i32 %19, i32* %7, align 4
  br label %43

20:                                               ; preds = %2
  %21 = load i8*, i8** %6, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 60
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* @flush_both, align 4
  store i32 %26, i32* %7, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %6, align 8
  br label %41

29:                                               ; preds = %20
  %30 = load i8*, i8** %6, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 62
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @flush_left_and_steal, align 4
  store i32 %35, i32* %7, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %6, align 8
  br label %40

38:                                               ; preds = %29
  %39 = load i32, i32* @flush_left, align 4
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %38, %34
  br label %41

41:                                               ; preds = %40, %25
  br label %43

42:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %169

43:                                               ; preds = %41, %18
  %44 = load i8*, i8** %6, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 124
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  store i32 1, i32* %8, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %6, align 8
  br label %51

51:                                               ; preds = %48, %43
  %52 = load i8*, i8** %6, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 40
  br i1 %55, label %56, label %168

56:                                               ; preds = %51
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  store i8* %58, i8** %9, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @strcspn(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  store i8* %63, i8** %10, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %56
  %67 = load i8*, i8** %10, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = icmp eq i8* %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66, %56
  store i64 0, i64* %3, align 8
  br label %169

71:                                               ; preds = %66
  %72 = load i8*, i8** %9, align 8
  %73 = call i32 @strtol(i8* %72, i8** %11, i32 10)
  store i32 %73, i32* %12, align 4
  %74 = load i8*, i8** %11, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = icmp eq i8* %74, %75
  br i1 %76, label %80, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %12, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77, %71
  store i64 0, i64* %3, align 8
  br label %169

81:                                               ; preds = %77
  %82 = load i32, i32* %12, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %81
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = call i64 (...) @term_columns()
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %12, align 4
  br label %93

93:                                               ; preds = %87, %84
  %94 = load i32, i32* %12, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i64 0, i64* %3, align 8
  br label %169

97:                                               ; preds = %93
  br label %98

98:                                               ; preds = %97, %81
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* %12, align 4
  %103 = sub nsw i32 0, %102
  br label %106

104:                                              ; preds = %98
  %105 = load i32, i32* %12, align 4
  br label %106

106:                                              ; preds = %104, %101
  %107 = phi i32 [ %103, %101 ], [ %105, %104 ]
  %108 = load %struct.format_commit_context*, %struct.format_commit_context** %5, align 8
  %109 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.format_commit_context*, %struct.format_commit_context** %5, align 8
  %112 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load i8*, i8** %10, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 44
  br i1 %116, label %117, label %157

117:                                              ; preds = %106
  %118 = load i8*, i8** %10, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 1
  store i8* %119, i8** %9, align 8
  %120 = load i8*, i8** %9, align 8
  %121 = call i8* @strchr(i8* %120, i8 signext 41)
  store i8* %121, i8** %10, align 8
  %122 = load i8*, i8** %10, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %128

124:                                              ; preds = %117
  %125 = load i8*, i8** %10, align 8
  %126 = load i8*, i8** %9, align 8
  %127 = icmp eq i8* %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %124, %117
  store i64 0, i64* %3, align 8
  br label %169

129:                                              ; preds = %124
  %130 = load i8*, i8** %9, align 8
  %131 = call i64 @starts_with(i8* %130, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load i32, i32* @trunc_right, align 4
  %135 = load %struct.format_commit_context*, %struct.format_commit_context** %5, align 8
  %136 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 4
  br label %156

137:                                              ; preds = %129
  %138 = load i8*, i8** %9, align 8
  %139 = call i64 @starts_with(i8* %138, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %137
  %142 = load i32, i32* @trunc_left, align 4
  %143 = load %struct.format_commit_context*, %struct.format_commit_context** %5, align 8
  %144 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 4
  br label %155

145:                                              ; preds = %137
  %146 = load i8*, i8** %9, align 8
  %147 = call i64 @starts_with(i8* %146, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = load i32, i32* @trunc_middle, align 4
  %151 = load %struct.format_commit_context*, %struct.format_commit_context** %5, align 8
  %152 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 4
  br label %154

153:                                              ; preds = %145
  store i64 0, i64* %3, align 8
  br label %169

154:                                              ; preds = %149
  br label %155

155:                                              ; preds = %154, %141
  br label %156

156:                                              ; preds = %155, %133
  br label %161

157:                                              ; preds = %106
  %158 = load i32, i32* @trunc_none, align 4
  %159 = load %struct.format_commit_context*, %struct.format_commit_context** %5, align 8
  %160 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %159, i32 0, i32 2
  store i32 %158, i32* %160, align 4
  br label %161

161:                                              ; preds = %157, %156
  %162 = load i8*, i8** %10, align 8
  %163 = load i8*, i8** %4, align 8
  %164 = ptrtoint i8* %162 to i64
  %165 = ptrtoint i8* %163 to i64
  %166 = sub i64 %164, %165
  %167 = add nsw i64 %166, 1
  store i64 %167, i64* %3, align 8
  br label %169

168:                                              ; preds = %51
  store i64 0, i64* %3, align 8
  br label %169

169:                                              ; preds = %168, %161, %153, %128, %96, %80, %70, %42
  %170 = load i64, i64* %3, align 8
  ret i64 %170
}

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @term_columns(...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
