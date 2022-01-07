; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_fs.c_fs__symlink.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_fs.c_fs__symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_11__ = type { i32* }

@UV_FS_SYMLINK_JUNCTION = common dso_local global i32 0, align 4
@UV_FS_SYMLINK_DIR = common dso_local global i32 0, align 4
@SYMBOLIC_LINK_FLAG_DIRECTORY = common dso_local global i32 0, align 4
@uv__file_symlink_usermode_flag = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@SYMBOLIC_LINK_FLAG_ALLOW_UNPRIVILEGED_CREATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @fs__symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fs__symlink(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %3, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %4, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @UV_FS_SYMLINK_JUNCTION, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @fs__create_junction(%struct.TYPE_12__* %25, i32* %26, i32* %27)
  br label %69

29:                                               ; preds = %1
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @UV_FS_SYMLINK_DIR, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load i32, i32* @SYMBOLIC_LINK_FLAG_DIRECTORY, align 4
  %40 = load i32, i32* @uv__file_symlink_usermode_flag, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %5, align 4
  br label %44

42:                                               ; preds = %29
  %43 = load i32, i32* @uv__file_symlink_usermode_flag, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %42, %38
  %45 = load i32*, i32** %4, align 8
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i64 @CreateSymbolicLinkW(i32* %45, i32* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %52 = call i32 @SET_REQ_RESULT(%struct.TYPE_12__* %51, i32 0)
  br label %69

53:                                               ; preds = %44
  %54 = call i32 (...) @GetLastError()
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @SYMBOLIC_LINK_FLAG_ALLOW_UNPRIVILEGED_CREATE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  store i32 0, i32* @uv__file_symlink_usermode_flag, align 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  call void @fs__symlink(%struct.TYPE_12__* %64)
  br label %69

65:                                               ; preds = %58, %53
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @SET_REQ_WIN32_ERROR(%struct.TYPE_12__* %66, i32 %67)
  br label %69

69:                                               ; preds = %24, %50, %65, %63
  ret void
}

declare dso_local i32 @fs__create_junction(%struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i64 @CreateSymbolicLinkW(i32*, i32*, i32) #1

declare dso_local i32 @SET_REQ_RESULT(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @SET_REQ_WIN32_ERROR(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
