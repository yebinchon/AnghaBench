; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_config_parse.c_parse_subsection_header.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_config_parse.c_parse_subsection_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"missing quotation marks in section header\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"invalid section header, line too long\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"missing closing quotation mark in section header\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s.\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"unexpected end-of-line in section header\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"unexpected text after closing quotes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i8*, i8**)* @parse_subsection_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_subsection_header(i32* %0, i8* %1, i64 %2, i8* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8** %4, i8*** %11, align 8
  %21 = load i8*, i8** %8, align 8
  store i8* %21, i8** %16, align 8
  %22 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %22, i32* %17, align 4
  %23 = load i8*, i8** %10, align 8
  %24 = call i64 @strlen(i8* %23)
  store i64 %24, i64* %20, align 8
  br label %25

25:                                               ; preds = %32, %5
  %26 = load i8*, i8** %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = call i64 @git__isspace(i8 signext %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i64, i64* %9, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %9, align 8
  br label %25

35:                                               ; preds = %25
  %36 = load i8*, i8** %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 34
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @set_parse_error(i32* %43, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %177

45:                                               ; preds = %35
  %46 = load i8*, i8** %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %14, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = call i8* @strrchr(i8* %49, i8 signext 34)
  store i8* %50, i8** %15, align 8
  %51 = load i8*, i8** %15, align 8
  %52 = load i8*, i8** %14, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  store i64 %55, i64* %18, align 8
  %56 = load i8*, i8** %15, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = load i32, i32* @INT_MAX, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp sgt i64 %60, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %45
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @set_parse_error(i32* %65, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %177

67:                                               ; preds = %45
  %68 = load i64, i64* %18, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @set_parse_error(i32* %71, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %177

73:                                               ; preds = %67
  %74 = load i64, i64* %20, align 8
  %75 = load i64, i64* %18, align 8
  %76 = trunc i64 %75 to i32
  %77 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %19, i64 %74, i32 %76)
  %78 = load i64, i64* %19, align 8
  %79 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %19, i64 %78, i32 2)
  %80 = load i64, i64* %19, align 8
  %81 = call i64 @git_buf_grow(i32* %17, i64 %80)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %73
  %84 = load i8*, i8** %10, align 8
  %85 = call i64 @git_buf_printf(i32* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %84)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83, %73
  br label %177

88:                                               ; preds = %83
  store i32 0, i32* %13, align 4
  %89 = load i8*, i8** %14, align 8
  store i8* %89, i8** %8, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %90, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  store i32 %96, i32* %12, align 4
  br label %97

97:                                               ; preds = %130, %88
  %98 = load i32, i32* %12, align 4
  switch i32 %98, label %118 [
    i32 0, label %99
    i32 34, label %102
    i32 92, label %103
  ]

99:                                               ; preds = %97
  %100 = load i32*, i32** %7, align 8
  %101 = call i32 @set_parse_error(i32* %100, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %177

102:                                              ; preds = %97
  br label %138

103:                                              ; preds = %97
  %104 = load i8*, i8** %8, align 8
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %103
  %114 = load i32*, i32** %7, align 8
  %115 = load i32, i32* %13, align 4
  %116 = call i32 @set_parse_error(i32* %114, i32 %115, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %177

117:                                              ; preds = %103
  br label %118

118:                                              ; preds = %97, %117
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %12, align 4
  %121 = trunc i32 %120 to i8
  %122 = call i32 @git_buf_putc(i32* %17, i8 signext %121)
  %123 = load i8*, i8** %8, align 8
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %123, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  store i32 %129, i32* %12, align 4
  br label %130

130:                                              ; preds = %119
  %131 = load i8*, i8** %8, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = load i8*, i8** %15, align 8
  %136 = icmp ult i8* %134, %135
  br i1 %136, label %97, label %137

137:                                              ; preds = %130
  br label %138

138:                                              ; preds = %137, %102
  %139 = call i64 @git_buf_oom(i32* %17)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  br label %177

142:                                              ; preds = %138
  %143 = load i8*, i8** %8, align 8
  %144 = load i32, i32* %13, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp ne i32 %148, 34
  br i1 %149, label %159, label %150

150:                                              ; preds = %142
  %151 = load i8*, i8** %8, align 8
  %152 = load i32, i32* %13, align 4
  %153 = add nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %151, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp ne i32 %157, 93
  br i1 %158, label %159, label %164

159:                                              ; preds = %150, %142
  %160 = load i32*, i32** %7, align 8
  %161 = load i32, i32* %13, align 4
  %162 = call i32 @set_parse_error(i32* %160, i32 %161, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %163 = call i32 @git_buf_dispose(i32* %17)
  store i32 -1, i32* %6, align 4
  br label %179

164:                                              ; preds = %150
  %165 = call i8* @git_buf_detach(i32* %17)
  %166 = load i8**, i8*** %11, align 8
  store i8* %165, i8** %166, align 8
  %167 = load i8*, i8** %8, align 8
  %168 = load i32, i32* %13, align 4
  %169 = add nsw i32 %168, 2
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %167, i64 %170
  %172 = load i8*, i8** %16, align 8
  %173 = ptrtoint i8* %171 to i64
  %174 = ptrtoint i8* %172 to i64
  %175 = sub i64 %173, %174
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %6, align 4
  br label %179

177:                                              ; preds = %141, %113, %99, %87, %70, %64, %42
  %178 = call i32 @git_buf_dispose(i32* %17)
  store i32 -1, i32* %6, align 4
  br label %179

179:                                              ; preds = %177, %164, %159
  %180 = load i32, i32* %6, align 4
  ret i32 %180
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @git__isspace(i8 signext) #1

declare dso_local i32 @set_parse_error(i32*, i32, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64*, i64, i32) #1

declare dso_local i64 @git_buf_grow(i32*, i64) #1

declare dso_local i64 @git_buf_printf(i32*, i8*, i8*) #1

declare dso_local i32 @git_buf_putc(i32*, i8 signext) #1

declare dso_local i64 @git_buf_oom(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

declare dso_local i8* @git_buf_detach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
