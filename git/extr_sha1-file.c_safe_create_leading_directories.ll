; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-file.c_safe_create_leading_directories.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-file.c_safe_create_leading_directories.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@SCLD_OK = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@SCLD_EXISTS = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@SCLD_VANISHED = common dso_local global i32 0, align 4
@SCLD_FAILED = common dso_local global i32 0, align 4
@SCLD_PERMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @safe_create_leading_directories(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @offset_1st_component(i8* %9)
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %8, i64 %11
  store i8* %12, i8** %3, align 8
  %13 = load i32, i32* @SCLD_OK, align 4
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %114, %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @SCLD_OK, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i8*, i8** %3, align 8
  %20 = icmp ne i8* %19, null
  br label %21

21:                                               ; preds = %18, %14
  %22 = phi i1 [ false, %14 ], [ %20, %18 ]
  br i1 %22, label %23, label %117

23:                                               ; preds = %21
  %24 = load i8*, i8** %3, align 8
  store i8* %24, i8** %6, align 8
  br label %25

25:                                               ; preds = %38, %23
  %26 = load i8*, i8** %6, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i8*, i8** %6, align 8
  %32 = load i8, i8* %31, align 1
  %33 = call i64 @is_dir_sep(i8 signext %32)
  %34 = icmp ne i64 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %30, %25
  %37 = phi i1 [ false, %25 ], [ %35, %30 ]
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %6, align 8
  br label %25

41:                                               ; preds = %36
  %42 = load i8*, i8** %6, align 8
  %43 = load i8, i8* %42, align 1
  %44 = icmp ne i8 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  br label %117

46:                                               ; preds = %41
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  store i8* %48, i8** %3, align 8
  br label %49

49:                                               ; preds = %54, %46
  %50 = load i8*, i8** %3, align 8
  %51 = load i8, i8* %50, align 1
  %52 = call i64 @is_dir_sep(i8 signext %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i8*, i8** %3, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %3, align 8
  br label %49

57:                                               ; preds = %49
  %58 = load i8*, i8** %3, align 8
  %59 = load i8, i8* %58, align 1
  %60 = icmp ne i8 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  br label %117

62:                                               ; preds = %57
  %63 = load i8*, i8** %6, align 8
  %64 = load i8, i8* %63, align 1
  store i8 %64, i8* %7, align 1
  %65 = load i8*, i8** %6, align 8
  store i8 0, i8* %65, align 1
  %66 = load i8*, i8** %2, align 8
  %67 = call i32 @stat(i8* %66, %struct.stat* %5)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @S_ISDIR(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = load i64, i64* @ENOTDIR, align 8
  store i64 %75, i64* @errno, align 8
  %76 = load i32, i32* @SCLD_EXISTS, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %74, %69
  br label %114

78:                                               ; preds = %62
  %79 = load i8*, i8** %2, align 8
  %80 = call i64 @mkdir(i8* %79, i32 511)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %106

82:                                               ; preds = %78
  %83 = load i64, i64* @errno, align 8
  %84 = load i64, i64* @EEXIST, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %82
  %87 = load i8*, i8** %2, align 8
  %88 = call i32 @stat(i8* %87, %struct.stat* %5)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @S_ISDIR(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %105

96:                                               ; preds = %90, %86, %82
  %97 = load i64, i64* @errno, align 8
  %98 = load i64, i64* @ENOENT, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i32, i32* @SCLD_VANISHED, align 4
  store i32 %101, i32* %4, align 4
  br label %104

102:                                              ; preds = %96
  %103 = load i32, i32* @SCLD_FAILED, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %102, %100
  br label %105

105:                                              ; preds = %104, %95
  br label %113

106:                                              ; preds = %78
  %107 = load i8*, i8** %2, align 8
  %108 = call i64 @adjust_shared_perm(i8* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i32, i32* @SCLD_PERMS, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %110, %106
  br label %113

113:                                              ; preds = %112, %105
  br label %114

114:                                              ; preds = %113, %77
  %115 = load i8, i8* %7, align 1
  %116 = load i8*, i8** %6, align 8
  store i8 %115, i8* %116, align 1
  br label %14

117:                                              ; preds = %61, %45, %21
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @offset_1st_component(i8*) #1

declare dso_local i64 @is_dir_sep(i8 signext) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @mkdir(i8*, i32) #1

declare dso_local i64 @adjust_shared_perm(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
