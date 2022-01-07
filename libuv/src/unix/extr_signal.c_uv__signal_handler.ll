; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_signal.c_uv__signal_handler.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_signal.c_uv__signal_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32* }

@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@uv__signal_tree_s = common dso_local global i32 0, align 4
@uv__signal_tree = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @uv__signal_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uv__signal_handler(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @errno, align 4
  store i32 %7, i32* %5, align 4
  %8 = call i32 @memset(%struct.TYPE_11__* %3, i32 0, i32 16)
  %9 = call i64 (...) @uv__signal_lock()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* @errno, align 4
  br label %88

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = call %struct.TYPE_10__* @uv__signal_first_handle(i32 %14)
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %4, align 8
  br label %16

16:                                               ; preds = %81, %13
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = icmp ne %struct.TYPE_10__* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %2, align 4
  %24 = icmp eq i32 %22, %23
  br label %25

25:                                               ; preds = %19, %16
  %26 = phi i1 [ false, %16 ], [ %24, %19 ]
  br i1 %26, label %27, label %85

27:                                               ; preds = %25
  %28 = load i32, i32* %2, align 4
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %31, align 8
  br label %32

32:                                               ; preds = %48, %27
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @write(i32 %39, %struct.TYPE_11__* %3, i32 16)
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* @errno, align 4
  %46 = load i32, i32* @EINTR, align 4
  %47 = icmp eq i32 %45, %46
  br label %48

48:                                               ; preds = %44, %41
  %49 = phi i1 [ false, %41 ], [ %47, %44 ]
  br i1 %49, label %32, label %50

50:                                               ; preds = %48
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp eq i64 %52, 16
  br i1 %53, label %69, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load i32, i32* @errno, align 4
  %59 = load i32, i32* @EAGAIN, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* @errno, align 4
  %63 = load i32, i32* @EWOULDBLOCK, align 4
  %64 = icmp eq i32 %62, %63
  br label %65

65:                                               ; preds = %61, %57
  %66 = phi i1 [ true, %57 ], [ %64, %61 ]
  br label %67

67:                                               ; preds = %65, %54
  %68 = phi i1 [ false, %54 ], [ %66, %65 ]
  br label %69

69:                                               ; preds = %67, %50
  %70 = phi i1 [ true, %50 ], [ %68, %67 ]
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, -1
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %75, %69
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* @uv__signal_tree_s, align 4
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %84 = call %struct.TYPE_10__* @RB_NEXT(i32 %82, i32* @uv__signal_tree, %struct.TYPE_10__* %83)
  store %struct.TYPE_10__* %84, %struct.TYPE_10__** %4, align 8
  br label %16

85:                                               ; preds = %25
  %86 = call i32 (...) @uv__signal_unlock()
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* @errno, align 4
  br label %88

88:                                               ; preds = %85, %11
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i64 @uv__signal_lock(...) #1

declare dso_local %struct.TYPE_10__* @uv__signal_first_handle(i32) #1

declare dso_local i32 @write(i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_10__* @RB_NEXT(i32, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @uv__signal_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
