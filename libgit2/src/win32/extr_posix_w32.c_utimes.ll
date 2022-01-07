; ModuleID = '/home/carl/AnghaBench/libgit2/src/win32/extr_posix_w32.c_utimes.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/win32/extr_posix_w32.c_utimes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p_timeval = type { i32 }
%struct.open_opts = type { i32 }

@FILE_ATTRIBUTE_READONLY = common dso_local global i32 0, align 4
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to set attributes\00", align 1
@O_RDWR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p_utimes(i8* %0, %struct.p_timeval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.p_timeval*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.open_opts, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.p_timeval* %1, %struct.p_timeval** %5, align 8
  store i32 0, i32* %10, align 4
  %13 = bitcast %struct.open_opts* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 4, i1 false)
  %14 = load i32, i32* %6, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @git_win32_path_from_utf8(i32 %14, i8* %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %65

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @GetFileAttributesW(i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @FILE_ATTRIBUTE_READONLY, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %19
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @FILE_ATTRIBUTE_READONLY, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @SetFileAttributesW(i32 %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* @GIT_ERROR_OS, align 4
  %37 = call i32 @git_error_set(i32 %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %65

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38, %19
  %40 = load i32, i32* @O_RDWR, align 4
  %41 = call i32 @open_opts_from_posix(%struct.open_opts* %11, i32 %40, i32 0)
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @open_once(i32 %42, %struct.open_opts* %11)
  store i32 %43, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 -1, i32* %8, align 4
  br label %52

46:                                               ; preds = %39
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.p_timeval*, %struct.p_timeval** %5, align 8
  %49 = call i32 @p_futimes(i32 %47, %struct.p_timeval* %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @close(i32 %50)
  br label %52

52:                                               ; preds = %46, %45
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = call i32 (...) @GetLastError()
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @SetFileAttributesW(i32 %58, i32 %59)
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @SetLastError(i32 %61)
  br label %63

63:                                               ; preds = %56, %52
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %35, %18
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @git_win32_path_from_utf8(i32, i8*) #2

declare dso_local i32 @GetFileAttributesW(i32) #2

declare dso_local i32 @SetFileAttributesW(i32, i32) #2

declare dso_local i32 @git_error_set(i32, i8*) #2

declare dso_local i32 @open_opts_from_posix(%struct.open_opts*, i32, i32) #2

declare dso_local i32 @open_once(i32, %struct.open_opts*) #2

declare dso_local i32 @p_futimes(i32, %struct.p_timeval*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @SetLastError(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
