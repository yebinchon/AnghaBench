; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_fs.c_fs__access.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_fs.c_fs__access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@INVALID_FILE_ATTRIBUTES = common dso_local global i32 0, align 4
@W_OK = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_READONLY = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@UV_EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @fs__access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fs__access(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %4 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @GetFileAttributesW(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @INVALID_FILE_ATTRIBUTES, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %14 = call i32 (...) @GetLastError()
  %15 = call i32 @SET_REQ_WIN32_ERROR(%struct.TYPE_11__* %13, i32 %14)
  br label %42

16:                                               ; preds = %1
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @W_OK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %16
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @FILE_ATTRIBUTE_READONLY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30, %25, %16
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %37 = call i32 @SET_REQ_RESULT(%struct.TYPE_11__* %36, i32 0)
  br label %42

38:                                               ; preds = %30
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %40 = load i32, i32* @UV_EPERM, align 4
  %41 = call i32 @SET_REQ_WIN32_ERROR(%struct.TYPE_11__* %39, i32 %40)
  br label %42

42:                                               ; preds = %12, %38, %35
  ret void
}

declare dso_local i32 @GetFileAttributesW(i32) #1

declare dso_local i32 @SET_REQ_WIN32_ERROR(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @SET_REQ_RESULT(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
