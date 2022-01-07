; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_signal.c_deliver_signal_unlocked.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_signal.c_deliver_signal_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_5__, %struct.TYPE_5__*, i32*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.siginfo_ = type { i32 }
%struct.sigqueue = type { i32, %struct.siginfo_ }

@current = common dso_local global %struct.task* null, align 8
@SIGUSR1 = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task*, i32, i32)* @deliver_signal_unlocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deliver_signal_unlocked(%struct.task* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.siginfo_, align 4
  %5 = alloca %struct.task*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sigqueue*, align 8
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.siginfo_, %struct.siginfo_* %4, i32 0, i32 0
  store i32 %2, i32* %9, align 4
  store %struct.task* %0, %struct.task** %5, align 8
  store i32 %1, i32* %6, align 4
  %10 = load %struct.task*, %struct.task** %5, align 8
  %11 = getelementptr inbounds %struct.task, %struct.task* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @sigset_has(i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %123

17:                                               ; preds = %3
  %18 = load %struct.task*, %struct.task** %5, align 8
  %19 = getelementptr inbounds %struct.task, %struct.task* %18, i32 0, i32 0
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @sigset_add(i32* %19, i32 %20)
  %22 = call %struct.sigqueue* @malloc(i32 8)
  store %struct.sigqueue* %22, %struct.sigqueue** %7, align 8
  %23 = load %struct.sigqueue*, %struct.sigqueue** %7, align 8
  %24 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %23, i32 0, i32 1
  %25 = bitcast %struct.siginfo_* %24 to i8*
  %26 = bitcast %struct.siginfo_* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 4, i1 false)
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.sigqueue*, %struct.sigqueue** %7, align 8
  %29 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.siginfo_, %struct.siginfo_* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load %struct.task*, %struct.task** %5, align 8
  %32 = getelementptr inbounds %struct.task, %struct.task* %31, i32 0, i32 8
  %33 = load %struct.sigqueue*, %struct.sigqueue** %7, align 8
  %34 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %33, i32 0, i32 0
  %35 = call i32 @list_add_tail(i32* %32, i32* %34)
  %36 = load %struct.task*, %struct.task** %5, align 8
  %37 = getelementptr inbounds %struct.task, %struct.task* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.task*, %struct.task** %5, align 8
  %40 = getelementptr inbounds %struct.task, %struct.task* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = xor i32 %41, -1
  %43 = and i32 %38, %42
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @sigset_has(i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %17
  %48 = load i32, i32* %6, align 4
  %49 = call i64 @signal_is_blockable(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %123

52:                                               ; preds = %47, %17
  %53 = load %struct.task*, %struct.task** %5, align 8
  %54 = load %struct.task*, %struct.task** @current, align 8
  %55 = icmp ne %struct.task* %53, %54
  br i1 %55, label %56, label %123

56:                                               ; preds = %52
  %57 = load %struct.task*, %struct.task** %5, align 8
  %58 = getelementptr inbounds %struct.task, %struct.task* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @SIGUSR1, align 4
  %61 = call i32 @pthread_kill(i32 %59, i32 %60)
  %62 = load %struct.task*, %struct.task** %5, align 8
  %63 = getelementptr inbounds %struct.task, %struct.task* %62, i32 0, i32 3
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = call i32 @unlock(%struct.TYPE_5__* %65)
  br label %67

67:                                               ; preds = %96, %56
  %68 = load %struct.task*, %struct.task** %5, align 8
  %69 = getelementptr inbounds %struct.task, %struct.task* %68, i32 0, i32 4
  %70 = call i32 @lock(%struct.TYPE_5__* %69)
  %71 = load %struct.task*, %struct.task** %5, align 8
  %72 = getelementptr inbounds %struct.task, %struct.task* %71, i32 0, i32 6
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %114

75:                                               ; preds = %67
  store i32 0, i32* %8, align 4
  %76 = load %struct.task*, %struct.task** %5, align 8
  %77 = getelementptr inbounds %struct.task, %struct.task* %76, i32 0, i32 5
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = call i64 @pthread_mutex_trylock(i32* %79)
  %81 = load i64, i64* @EBUSY, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %101

83:                                               ; preds = %75
  %84 = load %struct.task*, %struct.task** %5, align 8
  %85 = getelementptr inbounds %struct.task, %struct.task* %84, i32 0, i32 5
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (...) @pthread_self()
  %90 = call i64 @pthread_equal(i32 %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  store i32 1, i32* %8, align 4
  br label %93

93:                                               ; preds = %92, %83
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %93
  %97 = load %struct.task*, %struct.task** %5, align 8
  %98 = getelementptr inbounds %struct.task, %struct.task* %97, i32 0, i32 4
  %99 = call i32 @unlock(%struct.TYPE_5__* %98)
  br label %67

100:                                              ; preds = %93
  br label %101

101:                                              ; preds = %100, %75
  %102 = load %struct.task*, %struct.task** %5, align 8
  %103 = getelementptr inbounds %struct.task, %struct.task* %102, i32 0, i32 6
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @notify(i32* %104)
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %101
  %109 = load %struct.task*, %struct.task** %5, align 8
  %110 = getelementptr inbounds %struct.task, %struct.task* %109, i32 0, i32 5
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = call i32 @unlock(%struct.TYPE_5__* %111)
  br label %113

113:                                              ; preds = %108, %101
  br label %114

114:                                              ; preds = %113, %67
  %115 = load %struct.task*, %struct.task** %5, align 8
  %116 = getelementptr inbounds %struct.task, %struct.task* %115, i32 0, i32 4
  %117 = call i32 @unlock(%struct.TYPE_5__* %116)
  %118 = load %struct.task*, %struct.task** %5, align 8
  %119 = getelementptr inbounds %struct.task, %struct.task* %118, i32 0, i32 3
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = call i32 @lock(%struct.TYPE_5__* %121)
  br label %123

123:                                              ; preds = %16, %51, %114, %52
  ret void
}

declare dso_local i64 @sigset_has(i32, i32) #1

declare dso_local i32 @sigset_add(i32*, i32) #1

declare dso_local %struct.sigqueue* @malloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @signal_is_blockable(i32) #1

declare dso_local i32 @pthread_kill(i32, i32) #1

declare dso_local i32 @unlock(%struct.TYPE_5__*) #1

declare dso_local i32 @lock(%struct.TYPE_5__*) #1

declare dso_local i64 @pthread_mutex_trylock(i32*) #1

declare dso_local i64 @pthread_equal(i32, i32) #1

declare dso_local i32 @pthread_self(...) #1

declare dso_local i32 @notify(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
