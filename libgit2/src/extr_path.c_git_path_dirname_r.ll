; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_path.c_git_path_dirname_r.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_path.c_git_path_dirname_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"path too long\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_path_dirname_r(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  store i32 1, i32* %8, align 4
  br label %137

17:                                               ; preds = %11
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  %23 = getelementptr inbounds i8, i8* %22, i64 -1
  store i8* %23, i8** %6, align 8
  br label %24

24:                                               ; preds = %35, %17
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = icmp ugt i8* %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i8*, i8** %6, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 47
  br label %33

33:                                               ; preds = %28, %24
  %34 = phi i1 [ false, %24 ], [ %32, %28 ]
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 -1
  store i8* %37, i8** %6, align 8
  br label %24

38:                                               ; preds = %33
  %39 = load i8*, i8** %6, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = add nsw i64 %43, 1
  %45 = load i32, i32* @INT_MAX, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp sgt i64 %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %50 = call i32 @git_error_set(i32 %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %137

51:                                               ; preds = %38
  %52 = load i8*, i8** %5, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = ptrtoint i8* %53 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = add nsw i64 %57, 1
  %59 = trunc i64 %58 to i32
  %60 = call i32 @win32_prefix_length(i8* %52, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  store i32 1, i32* %7, align 4
  br label %137

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %75, %63
  %65 = load i8*, i8** %6, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = icmp ugt i8* %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i8*, i8** %6, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 47
  br label %73

73:                                               ; preds = %68, %64
  %74 = phi i1 [ false, %64 ], [ %72, %68 ]
  br i1 %74, label %75, label %78

75:                                               ; preds = %73
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 -1
  store i8* %77, i8** %6, align 8
  br label %64

78:                                               ; preds = %73
  %79 = load i8*, i8** %6, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = icmp eq i8* %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = load i8*, i8** %6, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 47
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)
  store i8* %88, i8** %5, align 8
  store i32 1, i32* %8, align 4
  br label %137

89:                                               ; preds = %78
  br label %90

90:                                               ; preds = %102, %89
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 -1
  store i8* %92, i8** %6, align 8
  br label %93

93:                                               ; preds = %90
  %94 = load i8*, i8** %6, align 8
  %95 = load i8*, i8** %5, align 8
  %96 = icmp ugt i8* %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = load i8*, i8** %6, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 47
  br label %102

102:                                              ; preds = %97, %93
  %103 = phi i1 [ false, %93 ], [ %101, %97 ]
  br i1 %103, label %90, label %104

104:                                              ; preds = %102
  %105 = load i8*, i8** %6, align 8
  %106 = load i8*, i8** %5, align 8
  %107 = ptrtoint i8* %105 to i64
  %108 = ptrtoint i8* %106 to i64
  %109 = sub i64 %107, %108
  %110 = add nsw i64 %109, 1
  %111 = load i32, i32* @INT_MAX, align 4
  %112 = sext i32 %111 to i64
  %113 = icmp sgt i64 %110, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %104
  %115 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %116 = call i32 @git_error_set(i32 %115, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %137

117:                                              ; preds = %104
  %118 = load i8*, i8** %5, align 8
  %119 = load i8*, i8** %6, align 8
  %120 = load i8*, i8** %5, align 8
  %121 = ptrtoint i8* %119 to i64
  %122 = ptrtoint i8* %120 to i64
  %123 = sub i64 %121, %122
  %124 = add nsw i64 %123, 1
  %125 = trunc i64 %124 to i32
  %126 = call i32 @win32_prefix_length(i8* %118, i32 %125)
  store i32 %126, i32* %8, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %117
  store i32 1, i32* %7, align 4
  br label %137

129:                                              ; preds = %117
  %130 = load i8*, i8** %6, align 8
  %131 = load i8*, i8** %5, align 8
  %132 = ptrtoint i8* %130 to i64
  %133 = ptrtoint i8* %131 to i64
  %134 = sub i64 %132, %133
  %135 = add nsw i64 %134, 1
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %8, align 4
  br label %137

137:                                              ; preds = %129, %128, %114, %82, %62, %48, %16
  %138 = load i32*, i32** %4, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %156

140:                                              ; preds = %137
  %141 = load i32*, i32** %4, align 8
  %142 = load i8*, i8** %5, align 8
  %143 = load i32, i32* %8, align 4
  %144 = call i64 @git_buf_set(i32* %141, i8* %142, i32 %143)
  %145 = icmp slt i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  store i32 -1, i32* %3, align 4
  br label %158

147:                                              ; preds = %140
  %148 = load i32, i32* %7, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = load i32*, i32** %4, align 8
  %152 = call i64 @git_buf_putc(i32* %151, i8 signext 47)
  %153 = icmp slt i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  store i32 -1, i32* %3, align 4
  br label %158

155:                                              ; preds = %150, %147
  br label %156

156:                                              ; preds = %155, %137
  %157 = load i32, i32* %8, align 4
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %156, %154, %146
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @win32_prefix_length(i8*, i32) #1

declare dso_local i64 @git_buf_set(i32*, i8*, i32) #1

declare dso_local i64 @git_buf_putc(i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
