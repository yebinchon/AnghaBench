; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_fs.c_fs__close.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_fs.c_fs__close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.uv__fd_info_s = type { i64 }

@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EBADF = common dso_local global i64 0, align 8
@UV_EBADF = common dso_local global i32 0, align 4
@ERROR_INVALID_HANDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fs__close(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.uv__fd_info_s, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = call i32 @VERIFY_FD(i32 %10, %struct.TYPE_7__* %11)
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @uv__fd_hash_remove(i32 %13, %struct.uv__fd_info_s* %5)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.uv__fd_info_s, %struct.uv__fd_info_s* %5, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.uv__fd_info_s, %struct.uv__fd_info_s* %5, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @CloseHandle(i64 %23)
  br label %25

25:                                               ; preds = %21, %16
  br label %26

26:                                               ; preds = %25, %1
  %27 = load i32, i32* %3, align 4
  %28 = icmp sgt i32 %27, 2
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @_close(i32 %30)
  store i32 %31, i32* %4, align 4
  br label %33

32:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load i64, i64* @errno, align 8
  %38 = load i64, i64* @EBADF, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %43 = load i32, i32* @UV_EBADF, align 4
  %44 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %45 = call i32 @SET_REQ_UV_ERROR(%struct.TYPE_7__* %42, i32 %43, i32 %44)
  br label %49

46:                                               ; preds = %33
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %46, %36
  ret void
}

declare dso_local i32 @VERIFY_FD(i32, %struct.TYPE_7__*) #1

declare dso_local i64 @uv__fd_hash_remove(i32, %struct.uv__fd_info_s*) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @_close(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @SET_REQ_UV_ERROR(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
