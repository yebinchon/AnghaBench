; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_websocket.c_set_rfds_wfds.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_websocket.c_set_rfds_wfds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32*, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }

@WS_SENDING = common dso_local global i32 0, align 4
@fdstate = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@FD_SETSIZE = common dso_local global i32 0, align 4
@max_file_fd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_10__*, %struct.TYPE_12__*, %struct.TYPE_11__*)* @set_rfds_wfds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_rfds_wfds(i32 %0, %struct.TYPE_10__* %1, %struct.TYPE_12__* %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %9, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %28

15:                                               ; preds = %4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @WS_SENDING, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @FD_SET(i32 %25, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @fdstate, i32 0, i32 0))
  br label %27

27:                                               ; preds = %22, %15
  br label %28

28:                                               ; preds = %27, %4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, -1
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @FD_SET(i32 %36, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @fdstate, i32 0, i32 1))
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @FD_SET(i32 %43, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @fdstate, i32 0, i32 1))
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @FD_SET(i32 %45, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @fdstate, i32 0, i32 1))
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %102, %38
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @FD_SETSIZE, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %105

51:                                               ; preds = %47
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %58, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57, %51
  br label %102

64:                                               ; preds = %57
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 2
  %68 = call %struct.TYPE_13__* @ws_get_client_from_list(i32 %65, i32* %67)
  store %struct.TYPE_13__* %68, %struct.TYPE_13__** %9, align 8
  %69 = icmp ne %struct.TYPE_13__* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %64
  br label %102

71:                                               ; preds = %64
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @FD_SET(i32 %77, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @fdstate, i32 0, i32 1))
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @max_file_fd, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* @max_file_fd, align 4
  br label %84

84:                                               ; preds = %82, %76
  br label %85

85:                                               ; preds = %84, %71
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @WS_SENDING, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %85
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @FD_SET(i32 %93, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @fdstate, i32 0, i32 0))
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @max_file_fd, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* @max_file_fd, align 4
  br label %100

100:                                              ; preds = %98, %92
  br label %101

101:                                              ; preds = %100, %85
  br label %102

102:                                              ; preds = %101, %70, %63
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %47

105:                                              ; preds = %47
  ret void
}

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local %struct.TYPE_13__* @ws_get_client_from_list(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
