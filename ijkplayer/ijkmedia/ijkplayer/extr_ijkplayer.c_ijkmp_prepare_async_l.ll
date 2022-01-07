; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ijkplayer.c_ijkmp_prepare_async_l.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ijkplayer.c_ijkmp_prepare_async_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_9__*, %struct.TYPE_10__*, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@MP_STATE_IDLE = common dso_local global i32 0, align 4
@MP_STATE_ASYNC_PREPARING = common dso_local global i32 0, align 4
@MP_STATE_PREPARED = common dso_local global i32 0, align 4
@MP_STATE_STARTED = common dso_local global i32 0, align 4
@MP_STATE_PAUSED = common dso_local global i32 0, align 4
@MP_STATE_COMPLETED = common dso_local global i32 0, align 4
@MP_STATE_ERROR = common dso_local global i32 0, align 4
@MP_STATE_END = common dso_local global i32 0, align 4
@ijkmp_msg_loop = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ff_msg_loop\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @ijkmp_prepare_async_l to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ijkmp_prepare_async_l(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %6 = call i32 @assert(%struct.TYPE_9__* %5)
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @MP_STATE_IDLE, align 4
  %11 = call i32 @MPST_RET_IF_EQ(i32 %9, i32 %10)
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @MP_STATE_ASYNC_PREPARING, align 4
  %16 = call i32 @MPST_RET_IF_EQ(i32 %14, i32 %15)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @MP_STATE_PREPARED, align 4
  %21 = call i32 @MPST_RET_IF_EQ(i32 %19, i32 %20)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @MP_STATE_STARTED, align 4
  %26 = call i32 @MPST_RET_IF_EQ(i32 %24, i32 %25)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @MP_STATE_PAUSED, align 4
  %31 = call i32 @MPST_RET_IF_EQ(i32 %29, i32 %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @MP_STATE_COMPLETED, align 4
  %36 = call i32 @MPST_RET_IF_EQ(i32 %34, i32 %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @MP_STATE_ERROR, align 4
  %41 = call i32 @MPST_RET_IF_EQ(i32 %39, i32 %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @MP_STATE_END, align 4
  %46 = call i32 @MPST_RET_IF_EQ(i32 %44, i32 %45)
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = call i32 @assert(%struct.TYPE_9__* %49)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = load i32, i32* @MP_STATE_ASYNC_PREPARING, align 4
  %53 = call i32 @ijkmp_change_state_l(%struct.TYPE_9__* %51, i32 %52)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = call i32 @msg_queue_start(i32* %57)
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = call i32 @ijkmp_inc_ref(%struct.TYPE_9__* %59)
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  %63 = load i32, i32* @ijkmp_msg_loop, align 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %65 = call i32 @SDL_CreateThreadEx(i32* %62, i32 %63, %struct.TYPE_9__* %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = call i32 @ffp_prepare_async_l(%struct.TYPE_10__* %70, %struct.TYPE_9__* %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %1
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %79 = load i32, i32* @MP_STATE_ERROR, align 4
  %80 = call i32 @ijkmp_change_state_l(%struct.TYPE_9__* %78, i32 %79)
  %81 = load i32, i32* %4, align 4
  store i32 %81, i32* %2, align 4
  br label %83

82:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %77
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @assert(%struct.TYPE_9__*) #1

declare dso_local i32 @MPST_RET_IF_EQ(i32, i32) #1

declare dso_local i32 @ijkmp_change_state_l(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @msg_queue_start(i32*) #1

declare dso_local i32 @ijkmp_inc_ref(%struct.TYPE_9__*) #1

declare dso_local i32 @SDL_CreateThreadEx(i32*, i32, %struct.TYPE_9__*, i8*) #1

declare dso_local i32 @ffp_prepare_async_l(%struct.TYPE_10__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
