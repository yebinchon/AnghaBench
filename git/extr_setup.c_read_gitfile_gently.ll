; ModuleID = '/home/carl/AnghaBench/git/extr_setup.c_read_gitfile_gently.c'
source_filename = "/home/carl/AnghaBench/git/extr_setup.c_read_gitfile_gently.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32 }

@READ_GITFILE_ERR_STAT_FAILED = common dso_local global i32 0, align 4
@READ_GITFILE_ERR_NOT_A_FILE = common dso_local global i32 0, align 4
@READ_GITFILE_ERR_TOO_LARGE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@READ_GITFILE_ERR_OPEN_FAILED = common dso_local global i32 0, align 4
@READ_GITFILE_ERR_READ_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"gitdir: \00", align 1
@READ_GITFILE_ERR_INVALID_FORMAT = common dso_local global i32 0, align 4
@READ_GITFILE_ERR_NO_PATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%.*s%.*s\00", align 1
@READ_GITFILE_ERR_NOT_A_REPO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @read_gitfile_gently(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.stat, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 1048576, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @stat(i8* %14, %struct.stat* %10)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @READ_GITFILE_ERR_STAT_FAILED, align 4
  store i32 %18, i32* %6, align 4
  br label %133

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @S_ISREG(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @READ_GITFILE_ERR_NOT_A_FILE, align 4
  store i32 %25, i32* %6, align 4
  br label %133

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %28, 1048576
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @READ_GITFILE_ERR_TOO_LARGE, align 4
  store i32 %31, i32* %6, align 4
  br label %133

32:                                               ; preds = %26
  %33 = load i8*, i8** %3, align 8
  %34 = load i32, i32* @O_RDONLY, align 4
  %35 = call i32 @open(i8* %33, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @READ_GITFILE_ERR_OPEN_FAILED, align 4
  store i32 %39, i32* %6, align 4
  br label %133

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @xmallocz(i32 %42)
  store i8* %43, i8** %7, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @read_in_full(i32 %44, i8* %45, i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @close(i32 %49)
  %51 = load i32, i32* %12, align 4
  %52 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %51, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %40
  %56 = load i32, i32* @READ_GITFILE_ERR_READ_FAILED, align 4
  store i32 %56, i32* %6, align 4
  br label %133

57:                                               ; preds = %40
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @starts_with(i8* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* @READ_GITFILE_ERR_INVALID_FORMAT, align 4
  store i32 %62, i32* %6, align 4
  br label %133

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %84, %63
  %65 = load i8*, i8** %7, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 10
  br i1 %72, label %82, label %73

73:                                               ; preds = %64
  %74 = load i8*, i8** %7, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %74, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 13
  br label %82

82:                                               ; preds = %73, %64
  %83 = phi i1 [ true, %64 ], [ %81, %73 ]
  br i1 %83, label %84, label %87

84:                                               ; preds = %82
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %12, align 4
  br label %64

87:                                               ; preds = %82
  %88 = load i32, i32* %12, align 4
  %89 = icmp slt i32 %88, 9
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i32, i32* @READ_GITFILE_ERR_NO_PATH, align 4
  store i32 %91, i32* %6, align 4
  br label %133

92:                                               ; preds = %87
  %93 = load i8*, i8** %7, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  store i8 0, i8* %96, align 1
  %97 = load i8*, i8** %7, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 8
  store i8* %98, i8** %8, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = call i32 @is_absolute_path(i8* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %124, label %102

102:                                              ; preds = %92
  %103 = load i8*, i8** %3, align 8
  %104 = call i8* @strrchr(i8* %103, i8 signext 47)
  store i8* %104, i8** %9, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %124

106:                                              ; preds = %102
  %107 = load i8*, i8** %9, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  %109 = load i8*, i8** %3, align 8
  %110 = ptrtoint i8* %108 to i64
  %111 = ptrtoint i8* %109 to i64
  %112 = sub i64 %110, %111
  store i64 %112, i64* %13, align 8
  %113 = load i64, i64* %13, align 8
  %114 = trunc i64 %113 to i32
  %115 = load i8*, i8** %3, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sub nsw i32 %116, 8
  %118 = load i8*, i8** %7, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 8
  %120 = call i8* @xstrfmt(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %114, i8* %115, i32 %117, i8* %119)
  store i8* %120, i8** %8, align 8
  %121 = load i8*, i8** %7, align 8
  %122 = call i32 @free(i8* %121)
  %123 = load i8*, i8** %8, align 8
  store i8* %123, i8** %7, align 8
  br label %124

124:                                              ; preds = %106, %102, %92
  %125 = load i8*, i8** %8, align 8
  %126 = call i32 @is_git_directory(i8* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %124
  %129 = load i32, i32* @READ_GITFILE_ERR_NOT_A_REPO, align 4
  store i32 %129, i32* %6, align 4
  br label %133

130:                                              ; preds = %124
  %131 = load i8*, i8** %8, align 8
  %132 = call i8* @real_path(i8* %131)
  store i8* %132, i8** %3, align 8
  br label %133

133:                                              ; preds = %130, %128, %90, %61, %55, %38, %30, %24, %17
  %134 = load i32*, i32** %4, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load i32, i32* %6, align 4
  %138 = load i32*, i32** %4, align 8
  store i32 %137, i32* %138, align 4
  br label %148

139:                                              ; preds = %133
  %140 = load i32, i32* %6, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %139
  %143 = load i32, i32* %6, align 4
  %144 = load i8*, i8** %3, align 8
  %145 = load i8*, i8** %8, align 8
  %146 = call i32 @read_gitfile_error_die(i32 %143, i8* %144, i8* %145)
  br label %147

147:                                              ; preds = %142, %139
  br label %148

148:                                              ; preds = %147, %136
  %149 = load i8*, i8** %7, align 8
  %150 = call i32 @free(i8* %149)
  %151 = load i32, i32* %6, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  br label %156

154:                                              ; preds = %148
  %155 = load i8*, i8** %3, align 8
  br label %156

156:                                              ; preds = %154, %153
  %157 = phi i8* [ null, %153 ], [ %155, %154 ]
  ret i8* %157
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i8* @xmallocz(i32) #1

declare dso_local i32 @read_in_full(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @starts_with(i8*, i8*) #1

declare dso_local i32 @is_absolute_path(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @xstrfmt(i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @is_git_directory(i8*) #1

declare dso_local i8* @real_path(i8*) #1

declare dso_local i32 @read_gitfile_error_die(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
