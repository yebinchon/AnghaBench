; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_fs.c_fs__utime.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_fs.c_fs__utime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_7__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@FILE_WRITE_ATTRIBUTES = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@FILE_SHARE_DELETE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_FLAG_BACKUP_SEMANTICS = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @fs__utime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fs__utime(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %4 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @FILE_WRITE_ATTRIBUTES, align 4
  %9 = load i32, i32* @FILE_SHARE_READ, align 4
  %10 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @FILE_SHARE_DELETE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @OPEN_EXISTING, align 4
  %15 = load i32, i32* @FILE_FLAG_BACKUP_SEMANTICS, align 4
  %16 = call i64 @CreateFileW(i32 %7, i32 %8, i32 %13, i32* null, i32 %14, i32 %15, i32* null)
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %22 = call i32 (...) @GetLastError()
  %23 = call i32 @SET_REQ_WIN32_ERROR(%struct.TYPE_10__* %21, i32 %22)
  br label %49

24:                                               ; preds = %1
  %25 = load i64, i64* %3, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @fs__utime_handle(i64 %25, i32 %30, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %24
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %40 = call i32 (...) @GetLastError()
  %41 = call i32 @SET_REQ_WIN32_ERROR(%struct.TYPE_10__* %39, i32 %40)
  %42 = load i64, i64* %3, align 8
  %43 = call i32 @CloseHandle(i64 %42)
  br label %49

44:                                               ; preds = %24
  %45 = load i64, i64* %3, align 8
  %46 = call i32 @CloseHandle(i64 %45)
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %44, %38, %20
  ret void
}

declare dso_local i64 @CreateFileW(i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @SET_REQ_WIN32_ERROR(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @fs__utime_handle(i64, i32, i32) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
