; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_start.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i64, i64 }
%struct.TYPE_17__ = type { i32*, %struct.TYPE_18__*, %struct.TYPE_19__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32 }

@fdstate = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@max_file_fd = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"A signal was caught on select(2)\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Unable to select: %s.\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Handled self-pipe to close event loop.\0A\00", align 1
@wsconfig = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ws_start(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_19__* %9, %struct.TYPE_19__** %3, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  store %struct.TYPE_18__* %12, %struct.TYPE_18__** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %13 = call i32 @memset(%struct.TYPE_16__* @fdstate, i32 0, i32 8)
  %14 = call i32 @ws_socket(i32* %5)
  br label %15

15:                                               ; preds = %1, %78
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @MAX(i32 %16, i32 %19)
  store i32 %20, i32* @max_file_fd, align 4
  %21 = call i32 @FD_ZERO(i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @fdstate, i32 0, i32 0))
  %22 = call i32 @FD_ZERO(i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @fdstate, i32 0, i32 1))
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %27 = call i32 @set_rfds_wfds(i32 %23, %struct.TYPE_17__* %24, %struct.TYPE_19__* %25, %struct.TYPE_18__* %26)
  %28 = load i32, i32* @max_file_fd, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @max_file_fd, align 4
  %30 = load i32, i32* @max_file_fd, align 4
  %31 = call i32 @select(i32 %30, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @fdstate, i32 0, i32 0), i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @fdstate, i32 0, i32 1), i32* null, i32* null)
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %42

33:                                               ; preds = %15
  %34 = load i32, i32* @errno, align 4
  switch i32 %34, label %37 [
    i32 128, label %35
  ]

35:                                               ; preds = %33
  %36 = call i32 @LOG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %41

37:                                               ; preds = %33
  %38 = load i32, i32* @errno, align 4
  %39 = call i32 @strerror(i32 %38)
  %40 = call i32 @FATAL(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %37, %35
  br label %42

42:                                               ; preds = %41, %15
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @FD_ISSET(i32 %47, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @fdstate, i32 0, i32 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = call i32 @LOG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %83

52:                                               ; preds = %42
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %75, %52
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @max_file_fd, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %78

57:                                               ; preds = %53
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %58, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %57
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %64, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %73 = call i32 @ws_listen(i32 %70, i32 %71, %struct.TYPE_17__* %72)
  br label %74

74:                                               ; preds = %69, %63, %57
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %53

78:                                               ; preds = %53
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %82 = call i32 @ws_fifos(%struct.TYPE_17__* %79, %struct.TYPE_19__* %80, %struct.TYPE_18__* %81)
  br label %15

83:                                               ; preds = %50
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @ws_socket(i32*) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @set_rfds_wfds(i32, %struct.TYPE_17__*, %struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @LOG(i8*) #1

declare dso_local i32 @FATAL(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @ws_listen(i32, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @ws_fifos(%struct.TYPE_17__*, %struct.TYPE_19__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
