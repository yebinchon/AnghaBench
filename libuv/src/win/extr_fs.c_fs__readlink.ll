; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_fs.c_fs__readlink.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_fs.c_fs__readlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_FLAG_OPEN_REPARSE_POINT = common dso_local global i32 0, align 4
@FILE_FLAG_BACKUP_SEMANTICS = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@UV_FS_FREE_PTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @fs__readlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fs__readlink(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @OPEN_EXISTING, align 4
  %9 = load i32, i32* @FILE_FLAG_OPEN_REPARSE_POINT, align 4
  %10 = load i32, i32* @FILE_FLAG_BACKUP_SEMANTICS, align 4
  %11 = or i32 %9, %10
  %12 = call i64 @CreateFileW(i32 %7, i32 0, i32 0, i32* null, i32 %8, i32 %11, i32* null)
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = call i32 (...) @GetLastError()
  %19 = call i32 @SET_REQ_WIN32_ERROR(%struct.TYPE_7__* %17, i32 %18)
  br label %43

20:                                               ; preds = %1
  %21 = load i64, i64* %3, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = bitcast i32* %23 to i8**
  %25 = call i64 @fs__readlink_handle(i64 %21, i8** %24, i32* null)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %29 = call i32 (...) @GetLastError()
  %30 = call i32 @SET_REQ_WIN32_ERROR(%struct.TYPE_7__* %28, i32 %29)
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @CloseHandle(i64 %31)
  br label %43

33:                                               ; preds = %20
  %34 = load i32, i32* @UV_FS_FREE_PTR, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %40 = call i32 @SET_REQ_RESULT(%struct.TYPE_7__* %39, i32 0)
  %41 = load i64, i64* %3, align 8
  %42 = call i32 @CloseHandle(i64 %41)
  br label %43

43:                                               ; preds = %33, %27, %16
  ret void
}

declare dso_local i64 @CreateFileW(i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @SET_REQ_WIN32_ERROR(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @fs__readlink_handle(i64, i8**, i32*) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @SET_REQ_RESULT(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
