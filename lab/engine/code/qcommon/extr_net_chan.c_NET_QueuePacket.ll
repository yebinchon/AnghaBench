; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_net_chan.c_NET_QueuePacket.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_net_chan.c_NET_QueuePacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_4__*, i64, i32, i8* }
%struct.TYPE_5__ = type { float }

@packetQueue = common dso_local global %struct.TYPE_4__* null, align 8
@com_timescale = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32, i32)* @NET_QueuePacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @NET_QueuePacket(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @packetQueue, align 8
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %10, align 8
  %12 = load i32, i32* %8, align 4
  %13 = icmp sgt i32 %12, 999
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 999, i32* %8, align 4
  br label %15

15:                                               ; preds = %14, %4
  %16 = call i8* @S_Malloc(i32 40)
  %17 = bitcast i8* %16 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %9, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i8* @S_Malloc(i32 %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 4
  store i8* %19, i8** %21, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 4
  %24 = load i8*, i8** %23, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @Com_Memcpy(i8* %24, i8* %25, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = call i64 (...) @Sys_Milliseconds()
  %35 = load i32, i32* %8, align 4
  %36 = sitofp i32 %35 to float
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @com_timescale, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load float, float* %38, align 4
  %40 = fdiv float %36, %39
  %41 = fptosi float %40 to i32
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %34, %42
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %47, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @packetQueue, align 8
  %49 = icmp ne %struct.TYPE_4__* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %15
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %51, %struct.TYPE_4__** @packetQueue, align 8
  br label %69

52:                                               ; preds = %15
  br label %53

53:                                               ; preds = %65, %52
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %55 = icmp ne %struct.TYPE_4__* %54, null
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = icmp ne %struct.TYPE_4__* %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store %struct.TYPE_4__* %62, %struct.TYPE_4__** %64, align 8
  br label %69

65:                                               ; preds = %56
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  store %struct.TYPE_4__* %68, %struct.TYPE_4__** %10, align 8
  br label %53

69:                                               ; preds = %50, %61, %53
  ret void
}

declare dso_local i8* @S_Malloc(i32) #1

declare dso_local i32 @Com_Memcpy(i8*, i8*, i32) #1

declare dso_local i64 @Sys_Milliseconds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
