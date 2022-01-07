; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_path.c_git_path_is_gitfile.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_path.c_git_path_is_gitfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64, i8* }

@GIT_PATH_GITFILE_GITIGNORE = common dso_local global i64 0, align 8
@gitfiles = common dso_local global %struct.TYPE_3__* null, align 8
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"invalid gitfile for path validation\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"invalid filesystem for path validation\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_path_is_gitfile(i8* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* @GIT_PATH_GITFILE_GITIGNORE, align 8
  %15 = icmp uge i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load i64, i64* %8, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gitfiles, align 8
  %19 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %18)
  %20 = icmp ult i64 %17, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %16, %4
  %22 = load i32, i32* @GIT_ERROR_OS, align 4
  %23 = call i32 @git_error_set(i32 %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %82

24:                                               ; preds = %16
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gitfiles, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %10, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gitfiles, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %12, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gitfiles, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %11, align 8
  %40 = load i32, i32* %9, align 4
  switch i32 %40, label %79 [
    i32 130, label %41
    i32 128, label %60
    i32 129, label %70
  ]

41:                                               ; preds = %24
  %42 = load i8*, i8** %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = call i32 @verify_dotgit_ntfs_generic(i8* %42, i64 %43, i8* %44, i64 %45, i8* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %41
  %50 = load i8*, i8** %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = load i64, i64* %12, align 8
  %54 = call i32 @verify_dotgit_hfs_generic(i8* %50, i64 %51, i8* %52, i64 %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %49, %41
  %58 = phi i1 [ true, %41 ], [ %56, %49 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %5, align 4
  br label %82

60:                                               ; preds = %24
  %61 = load i8*, i8** %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = load i64, i64* %12, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = call i32 @verify_dotgit_ntfs_generic(i8* %61, i64 %62, i8* %63, i64 %64, i8* %65)
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %5, align 4
  br label %82

70:                                               ; preds = %24
  %71 = load i8*, i8** %6, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = load i64, i64* %12, align 8
  %75 = call i32 @verify_dotgit_hfs_generic(i8* %71, i64 %72, i8* %73, i64 %74)
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %5, align 4
  br label %82

79:                                               ; preds = %24
  %80 = load i32, i32* @GIT_ERROR_OS, align 4
  %81 = call i32 @git_error_set(i32 %80, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %82

82:                                               ; preds = %79, %70, %60, %57, %21
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @verify_dotgit_ntfs_generic(i8*, i64, i8*, i64, i8*) #1

declare dso_local i32 @verify_dotgit_hfs_generic(i8*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
