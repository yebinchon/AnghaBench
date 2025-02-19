; ModuleID = '/home/carl/AnghaBench/libgit2/src/win32/extr_posix_w32.c_p_fsync.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/win32/extr_posix_w32.c_p_fsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_fsync__cnt = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@EBADF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ERROR_INVALID_HANDLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p_fsync(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @_get_osfhandle(i32 %6)
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %4, align 8
  %9 = load i32, i32* @p_fsync__cnt, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @p_fsync__cnt, align 4
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @EBADF, align 4
  store i32 %15, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %31

16:                                               ; preds = %1
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @FlushFileBuffers(i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %16
  %21 = call i64 (...) @GetLastError()
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @ERROR_INVALID_HANDLE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* @errno, align 4
  br label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @EIO, align 4
  store i32 %28, i32* @errno, align 4
  br label %29

29:                                               ; preds = %27, %25
  store i32 -1, i32* %2, align 4
  br label %31

30:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %29, %14
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @_get_osfhandle(i32) #1

declare dso_local i32 @FlushFileBuffers(i64) #1

declare dso_local i64 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
