; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_commit.c_git_commit_extract_signature.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_commit.c_git_commit_extract_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"gpgsig\00", align 1
@GIT_OBJECT_COMMIT = common dso_local global i64 0, align 8
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"the requested type does not match the type in ODB\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_ERROR_OBJECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"this commit is not signed\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"malformed header\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_commit_extract_signature(i32* %0, i32* %1, i32* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @git_buf_clear(i32* %18)
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @git_buf_clear(i32* %20)
  %22 = load i8*, i8** %11, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %5
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %25

25:                                               ; preds = %24, %5
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @git_repository_odb__weakptr(i32** %13, i32* %26)
  store i32 %27, i32* %17, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* %17, align 4
  store i32 %30, i32* %6, align 4
  br label %178

31:                                               ; preds = %25
  %32 = load i32*, i32** %13, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @git_odb_read(%struct.TYPE_7__** %12, i32* %32, i32* %33)
  store i32 %34, i32* %17, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %17, align 4
  store i32 %37, i32* %6, align 4
  br label %178

38:                                               ; preds = %31
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @GIT_OBJECT_COMMIT, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %47 = call i32 @git_error_set(i32 %46, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %48, i32* %17, align 4
  br label %170

49:                                               ; preds = %38
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %51 = call i8* @git_odb_object_data(%struct.TYPE_7__* %50)
  store i8* %51, i8** %14, align 8
  br label %52

52:                                               ; preds = %99, %83, %49
  %53 = load i8*, i8** %14, align 8
  %54 = call i8* @strchr(i8* %53, i8 signext 10)
  store i8* %54, i8** %15, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i8*, i8** %15, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 0
  br label %62

62:                                               ; preds = %56, %52
  %63 = phi i1 [ false, %52 ], [ %61, %56 ]
  br i1 %63, label %64, label %161

64:                                               ; preds = %62
  %65 = load i8*, i8** %15, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %15, align 8
  %67 = load i8*, i8** %14, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = call i64 @git__prefixcmp(i8* %67, i8* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %64
  %72 = load i32*, i32** %8, align 8
  %73 = load i8*, i8** %14, align 8
  %74 = load i8*, i8** %15, align 8
  %75 = load i8*, i8** %14, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = trunc i64 %78 to i32
  %80 = call i64 @git_buf_put(i32* %72, i8* %73, i32 %79)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %71
  store i32 -1, i32* %6, align 4
  br label %178

83:                                               ; preds = %71
  %84 = load i8*, i8** %15, align 8
  store i8* %84, i8** %14, align 8
  br label %52

85:                                               ; preds = %64
  %86 = load i8*, i8** %14, align 8
  store i8* %86, i8** %15, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = call i32 @strlen(i8* %87)
  %89 = load i8*, i8** %15, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  store i8* %91, i8** %15, align 8
  %92 = load i8*, i8** %15, align 8
  %93 = call i8* @strchr(i8* %92, i8 signext 10)
  store i8* %93, i8** %16, align 8
  %94 = load i8*, i8** %15, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 32
  br i1 %98, label %99, label %101

99:                                               ; preds = %85
  %100 = load i8*, i8** %15, align 8
  store i8* %100, i8** %14, align 8
  br label %52

101:                                              ; preds = %85
  %102 = load i8*, i8** %16, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %101
  br label %165

105:                                              ; preds = %101
  %106 = load i8*, i8** %15, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %15, align 8
  %108 = load i32*, i32** %7, align 8
  %109 = load i8*, i8** %15, align 8
  %110 = load i8*, i8** %16, align 8
  %111 = load i8*, i8** %15, align 8
  %112 = ptrtoint i8* %110 to i64
  %113 = ptrtoint i8* %111 to i64
  %114 = sub i64 %112, %113
  %115 = trunc i64 %114 to i32
  %116 = call i64 @git_buf_put(i32* %108, i8* %109, i32 %115)
  %117 = load i32*, i32** %7, align 8
  %118 = call i64 @git_buf_oom(i32* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %105
  br label %168

121:                                              ; preds = %105
  br label %122

122:                                              ; preds = %138, %121
  %123 = load i8*, i8** %16, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 1
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 32
  br i1 %127, label %128, label %148

128:                                              ; preds = %122
  %129 = load i32*, i32** %7, align 8
  %130 = call i32 @git_buf_putc(i32* %129, i8 signext 10)
  %131 = load i8*, i8** %16, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 2
  store i8* %132, i8** %15, align 8
  %133 = load i8*, i8** %15, align 8
  %134 = call i8* @strchr(i8* %133, i8 signext 10)
  store i8* %134, i8** %16, align 8
  %135 = load i8*, i8** %16, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %138, label %137

137:                                              ; preds = %128
  br label %165

138:                                              ; preds = %128
  %139 = load i32*, i32** %7, align 8
  %140 = load i8*, i8** %15, align 8
  %141 = load i8*, i8** %16, align 8
  %142 = load i8*, i8** %15, align 8
  %143 = ptrtoint i8* %141 to i64
  %144 = ptrtoint i8* %142 to i64
  %145 = sub i64 %143, %144
  %146 = trunc i64 %145 to i32
  %147 = call i64 @git_buf_put(i32* %139, i8* %140, i32 %146)
  br label %122

148:                                              ; preds = %122
  %149 = load i32*, i32** %7, align 8
  %150 = call i64 @git_buf_oom(i32* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  br label %168

153:                                              ; preds = %148
  %154 = load i32*, i32** %8, align 8
  %155 = load i8*, i8** %16, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 1
  %157 = call i32 @git_buf_puts(i32* %154, i8* %156)
  store i32 %157, i32* %17, align 4
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %159 = call i32 @git_odb_object_free(%struct.TYPE_7__* %158)
  %160 = load i32, i32* %17, align 4
  store i32 %160, i32* %6, align 4
  br label %178

161:                                              ; preds = %62
  %162 = load i32, i32* @GIT_ERROR_OBJECT, align 4
  %163 = call i32 @git_error_set(i32 %162, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %164 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %164, i32* %17, align 4
  br label %170

165:                                              ; preds = %137, %104
  %166 = load i32, i32* @GIT_ERROR_OBJECT, align 4
  %167 = call i32 @git_error_set(i32 %166, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %17, align 4
  br label %170

168:                                              ; preds = %152, %120
  %169 = call i32 (...) @git_error_set_oom()
  store i32 -1, i32* %17, align 4
  br label %170

170:                                              ; preds = %168, %165, %161, %45
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %172 = call i32 @git_odb_object_free(%struct.TYPE_7__* %171)
  %173 = load i32*, i32** %7, align 8
  %174 = call i32 @git_buf_clear(i32* %173)
  %175 = load i32*, i32** %8, align 8
  %176 = call i32 @git_buf_clear(i32* %175)
  %177 = load i32, i32* %17, align 4
  store i32 %177, i32* %6, align 4
  br label %178

178:                                              ; preds = %170, %153, %82, %36, %29
  %179 = load i32, i32* %6, align 4
  ret i32 %179
}

declare dso_local i32 @git_buf_clear(i32*) #1

declare dso_local i32 @git_repository_odb__weakptr(i32**, i32*) #1

declare dso_local i32 @git_odb_read(%struct.TYPE_7__**, i32*, i32*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i8* @git_odb_object_data(%struct.TYPE_7__*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @git__prefixcmp(i8*, i8*) #1

declare dso_local i64 @git_buf_put(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @git_buf_oom(i32*) #1

declare dso_local i32 @git_buf_putc(i32*, i8 signext) #1

declare dso_local i32 @git_buf_puts(i32*, i8*) #1

declare dso_local i32 @git_odb_object_free(%struct.TYPE_7__*) #1

declare dso_local i32 @git_error_set_oom(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
