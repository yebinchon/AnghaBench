; ModuleID = '/home/carl/AnghaBench/libgit2/src/win32/extr_w32_util.c_git_win32__file_attribute_to_stat.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/win32/extr_w32_util.c_git_win32__file_attribute_to_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@FILE_ATTRIBUTE_REPARSE_POINT = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"could not convert reparse point name for '%ls'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_win32__file_attribute_to_stat(%struct.stat* %0, %struct.TYPE_3__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.stat* %0, %struct.stat** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.stat*, %struct.stat** %5, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @git_win32__stat_init(%struct.stat* %9, i32 %12, i32 %15, i32 %18, i32 %21, i32 %24, i32 %27)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @FILE_ATTRIBUTE_REPARSE_POINT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %65

35:                                               ; preds = %3
  %36 = load i32*, i32** %7, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %65

38:                                               ; preds = %35
  %39 = load i32, i32* %8, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = call i64 @git_win32_path_readlink_w(i32 %39, i32* %40)
  %42 = icmp sge i64 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %38
  %44 = load %struct.stat*, %struct.stat** %5, align 8
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @S_IFMT, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  %50 = load i32, i32* @S_IFLNK, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.stat*, %struct.stat** %5, align 8
  %53 = getelementptr inbounds %struct.stat, %struct.stat* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @git__utf16_to_8(i32* null, i32 0, i32 %54)
  %56 = load %struct.stat*, %struct.stat** %5, align 8
  %57 = getelementptr inbounds %struct.stat, %struct.stat* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = icmp slt i32 %55, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %43
  %60 = load i32, i32* @GIT_ERROR_OS, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @git_error_set(i32 %60, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32* %61)
  store i32 -1, i32* %4, align 4
  br label %66

63:                                               ; preds = %43
  br label %64

64:                                               ; preds = %63, %38
  br label %65

65:                                               ; preds = %64, %35, %3
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %59
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @git_win32__stat_init(%struct.stat*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @git_win32_path_readlink_w(i32, i32*) #1

declare dso_local i32 @git__utf16_to_8(i32*, i32, i32) #1

declare dso_local i32 @git_error_set(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
