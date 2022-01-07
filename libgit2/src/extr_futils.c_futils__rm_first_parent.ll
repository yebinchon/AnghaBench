; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_futils.c_futils__rm_first_parent.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_futils.c_futils__rm_first_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.stat = type { i32 }

@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"cannot remove parent\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*)* @futils__rm_first_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @futils__rm_first_parent(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stat, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %7, i32* %5, align 4
  br label %8

8:                                                ; preds = %63, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @GIT_ENOTFOUND, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %64

12:                                               ; preds = %8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = call i32 @git_buf_rtruncate_at_char(%struct.TYPE_4__* %13, i8 signext 47)
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = call i64 @git__prefixcmp(i32 %22, i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19, %12
  store i32 0, i32* %5, align 4
  br label %63

27:                                               ; preds = %19
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @p_lstat_posixly(i32 %30, %struct.stat* %6)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @S_ISREG(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @S_ISLNK(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38, %33
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @p_unlink(i32 %46)
  store i32 %47, i32* %5, align 4
  br label %55

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @S_ISDIR(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  store i32 -1, i32* %5, align 4
  br label %54

54:                                               ; preds = %53, %48
  br label %55

55:                                               ; preds = %54, %43
  br label %62

56:                                               ; preds = %27
  %57 = load i64, i64* @errno, align 8
  %58 = load i64, i64* @ENOTDIR, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 -1, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %56
  br label %62

62:                                               ; preds = %61, %55
  br label %63

63:                                               ; preds = %62, %26
  br label %8

64:                                               ; preds = %8
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @futils__error_cannot_rmdir(i32 %70, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %67, %64
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @git_buf_rtruncate_at_char(%struct.TYPE_4__*, i8 signext) #1

declare dso_local i64 @git__prefixcmp(i32, i8*) #1

declare dso_local i64 @p_lstat_posixly(i32, %struct.stat*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @p_unlink(i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @futils__error_cannot_rmdir(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
