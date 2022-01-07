; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_pack.c_git_packfile_alloc.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_pack.c_git_packfile_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_pack_file = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.stat = type { i64, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"invalid packfile path\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".idx\00", align 1
@git_disable_pack_keep_file_checks = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c".keep\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c".pack\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"packfile not found\00", align 1
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"failed to initialize packfile mutex\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_packfile_alloc(%struct.git_pack_file** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.git_pack_file**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca %struct.git_pack_file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.git_pack_file** %0, %struct.git_pack_file*** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @strlen(i8* %14)
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %13
  %18 = phi i64 [ %15, %13 ], [ 0, %16 ]
  store i64 %18, i64* %8, align 8
  %19 = load %struct.git_pack_file**, %struct.git_pack_file*** %4, align 8
  store %struct.git_pack_file* null, %struct.git_pack_file** %19, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp ult i64 %20, 4
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 @git_odb__error_notfound(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  store i32 %23, i32* %3, align 4
  br label %125

24:                                               ; preds = %17
  %25 = load i64, i64* %8, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %9, i64 48, i32 %26)
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %9, i64 %28, i32 2)
  %30 = load i64, i64* %9, align 8
  %31 = call %struct.git_pack_file* @git__calloc(i32 1, i64 %30)
  store %struct.git_pack_file* %31, %struct.git_pack_file** %7, align 8
  %32 = load %struct.git_pack_file*, %struct.git_pack_file** %7, align 8
  %33 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.git_pack_file* %32)
  %34 = load %struct.git_pack_file*, %struct.git_pack_file** %7, align 8
  %35 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %34, i32 0, i32 7
  %36 = load i64, i64* %35, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load i64, i64* %8, align 8
  %39 = add i64 %38, 1
  %40 = trunc i64 %39 to i32
  %41 = call i32 @memcpy(i64 %36, i8* %37, i32 %40)
  %42 = load i8*, i8** %5, align 8
  %43 = call i64 @git__suffixcmp(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %73

45:                                               ; preds = %24
  %46 = load i64, i64* %8, align 8
  %47 = sub i64 %46, 4
  store i64 %47, i64* %10, align 8
  %48 = load i32, i32* @git_disable_pack_keep_file_checks, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %66, label %50

50:                                               ; preds = %45
  %51 = load %struct.git_pack_file*, %struct.git_pack_file** %7, align 8
  %52 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %51, i32 0, i32 7
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %10, align 8
  %55 = add i64 %53, %54
  %56 = call i32 @memcpy(i64 %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %57 = load %struct.git_pack_file*, %struct.git_pack_file** %7, align 8
  %58 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %57, i32 0, i32 7
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @git_path_exists(i64 %59)
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %65

62:                                               ; preds = %50
  %63 = load %struct.git_pack_file*, %struct.git_pack_file** %7, align 8
  %64 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  br label %65

65:                                               ; preds = %62, %50
  br label %66

66:                                               ; preds = %65, %45
  %67 = load %struct.git_pack_file*, %struct.git_pack_file** %7, align 8
  %68 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %67, i32 0, i32 7
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %10, align 8
  %71 = add i64 %69, %70
  %72 = call i32 @memcpy(i64 %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 6)
  br label %73

73:                                               ; preds = %66, %24
  %74 = load %struct.git_pack_file*, %struct.git_pack_file** %7, align 8
  %75 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %74, i32 0, i32 7
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @p_stat(i64 %76, %struct.stat* %6)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @S_ISREG(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %79, %73
  %85 = load %struct.git_pack_file*, %struct.git_pack_file** %7, align 8
  %86 = call i32 @git__free(%struct.git_pack_file* %85)
  %87 = call i32 @git_odb__error_notfound(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 0)
  store i32 %87, i32* %3, align 4
  br label %125

88:                                               ; preds = %79
  %89 = load %struct.git_pack_file*, %struct.git_pack_file** %7, align 8
  %90 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %89, i32 0, i32 6
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  store i32 -1, i32* %91, align 8
  %92 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.git_pack_file*, %struct.git_pack_file** %7, align 8
  %95 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %94, i32 0, i32 6
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  store i32 %93, i32* %96, align 4
  %97 = load %struct.git_pack_file*, %struct.git_pack_file** %7, align 8
  %98 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %97, i32 0, i32 1
  store i32 1, i32* %98, align 4
  %99 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.git_pack_file*, %struct.git_pack_file** %7, align 8
  %102 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %101, i32 0, i32 5
  store i64 %100, i64* %102, align 8
  %103 = load %struct.git_pack_file*, %struct.git_pack_file** %7, align 8
  %104 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %103, i32 0, i32 2
  store i32 -1, i32* %104, align 8
  %105 = load %struct.git_pack_file*, %struct.git_pack_file** %7, align 8
  %106 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %105, i32 0, i32 4
  %107 = call i64 @git_mutex_init(i32* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %88
  %110 = load i32, i32* @GIT_ERROR_OS, align 4
  %111 = call i32 @git_error_set(i32 %110, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %112 = load %struct.git_pack_file*, %struct.git_pack_file** %7, align 8
  %113 = call i32 @git__free(%struct.git_pack_file* %112)
  store i32 -1, i32* %3, align 4
  br label %125

114:                                              ; preds = %88
  %115 = load %struct.git_pack_file*, %struct.git_pack_file** %7, align 8
  %116 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %115, i32 0, i32 3
  %117 = call i64 @cache_init(i32* %116)
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load %struct.git_pack_file*, %struct.git_pack_file** %7, align 8
  %121 = call i32 @git__free(%struct.git_pack_file* %120)
  store i32 -1, i32* %3, align 4
  br label %125

122:                                              ; preds = %114
  %123 = load %struct.git_pack_file*, %struct.git_pack_file** %7, align 8
  %124 = load %struct.git_pack_file**, %struct.git_pack_file*** %4, align 8
  store %struct.git_pack_file* %123, %struct.git_pack_file** %124, align 8
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %122, %119, %109, %84, %22
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @git_odb__error_notfound(i8*, i32*, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64*, i64, i32) #1

declare dso_local %struct.git_pack_file* @git__calloc(i32, i64) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.git_pack_file*) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i64 @git__suffixcmp(i8*, i8*) #1

declare dso_local i32 @git_path_exists(i64) #1

declare dso_local i64 @p_stat(i64, %struct.stat*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @git__free(%struct.git_pack_file*) #1

declare dso_local i64 @git_mutex_init(i32*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i64 @cache_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
