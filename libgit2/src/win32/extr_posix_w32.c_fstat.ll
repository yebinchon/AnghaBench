; ModuleID = '/home/carl/AnghaBench/libgit2/src/win32/extr_posix_w32.c_fstat.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/win32/extr_posix_w32.c_fstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@EBADF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p_fstat(i32 %0, %struct.stat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.stat* %1, %struct.stat** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @_get_osfhandle(i32 %8)
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @GetFileInformationByHandle(i64 %15, i32* %6)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14, %2
  %19 = load i32, i32* @EBADF, align 4
  store i32 %19, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %23

20:                                               ; preds = %14
  %21 = load %struct.stat*, %struct.stat** %5, align 8
  %22 = call i32 @git_win32__file_information_to_stat(%struct.stat* %21, i32* %6)
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %20, %18
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @_get_osfhandle(i32) #1

declare dso_local i32 @GetFileInformationByHandle(i64, i32*) #1

declare dso_local i32 @git_win32__file_information_to_stat(%struct.stat*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
