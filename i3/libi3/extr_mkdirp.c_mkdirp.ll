; ModuleID = '/home/carl/AnghaBench/i3/libi3/extr_mkdirp.c_mkdirp.c'
source_filename = "/home/carl/AnghaBench/i3/libi3/extr_mkdirp.c_mkdirp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"stat(%s) failed: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"mkdir(%s) failed: %s\0A\00", align 1
@ENOTDIR = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mkdirp(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stat, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @mkdir(i8* %10, i32 %11)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %91

15:                                               ; preds = %2
  %16 = load i64, i64* @errno, align 8
  %17 = load i64, i64* @EEXIST, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %15
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @stat(i8* %20, %struct.stat* %6)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i8*, i8** %4, align 8
  %25 = load i64, i64* @errno, align 8
  %26 = call i32 @strerror(i64 %25)
  %27 = call i32 @ELOG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %26)
  store i32 -1, i32* %3, align 4
  br label %91

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @S_ISDIR(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load i8*, i8** %4, align 8
  %35 = load i64, i64* @ENOTDIR, align 8
  %36 = call i32 @strerror(i64 %35)
  %37 = call i32 @ELOG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %34, i32 %36)
  store i32 -1, i32* %3, align 4
  br label %91

38:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %91

39:                                               ; preds = %15
  %40 = load i64, i64* @errno, align 8
  %41 = load i64, i64* @ENOENT, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i8*, i8** %4, align 8
  %45 = load i64, i64* @errno, align 8
  %46 = call i32 @strerror(i64 %45)
  %47 = call i32 @ELOG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %44, i32 %46)
  store i32 -1, i32* %3, align 4
  br label %91

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48
  %50 = load i8*, i8** %4, align 8
  %51 = call i8* @sstrdup(i8* %50)
  store i8* %51, i8** %7, align 8
  br label %52

52:                                               ; preds = %62, %49
  %53 = load i8*, i8** %7, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @strlen(i8* %54)
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %53, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 47
  br i1 %61, label %62, label %69

62:                                               ; preds = %52
  %63 = load i8*, i8** %7, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @strlen(i8* %64)
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %63, i64 %67
  store i8 0, i8* %68, align 1
  br label %52

69:                                               ; preds = %52
  %70 = load i8*, i8** %7, align 8
  %71 = call i8* @strrchr(i8* %70, i8 signext 47)
  store i8* %71, i8** %8, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @free(i8* %75)
  store i32 -1, i32* %3, align 4
  br label %91

77:                                               ; preds = %69
  %78 = load i8*, i8** %8, align 8
  store i8 0, i8* %78, align 1
  store i32 -1, i32* %9, align 4
  %79 = load i8*, i8** %7, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @mkdirp(i8* %79, i32 %80)
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load i8*, i8** %4, align 8
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @mkdirp(i8* %84, i32 %85)
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %83, %77
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 @free(i8* %88)
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %87, %74, %43, %38, %33, %23, %14
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i64 @mkdir(i8*, i32) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @ELOG(i8*, i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i8* @sstrdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
