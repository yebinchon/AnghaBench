; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_signal.c_send_signal.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_signal.c_send_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task = type { %struct.TYPE_2__*, %struct.sighand*, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.sighand = type { i32 }
%struct.siginfo_ = type { i32 }

@SIGNAL_IGNORE = common dso_local global i64 0, align 8
@SIGCONT_ = common dso_local global i32 0, align 4
@SIGKILL_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_signal(%struct.task* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.siginfo_, align 4
  %5 = alloca %struct.task*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sighand*, align 8
  %8 = getelementptr inbounds %struct.siginfo_, %struct.siginfo_* %4, i32 0, i32 0
  store i32 %2, i32* %8, align 4
  store %struct.task* %0, %struct.task** %5, align 8
  store i32 %1, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %67

12:                                               ; preds = %3
  %13 = load %struct.task*, %struct.task** %5, align 8
  %14 = getelementptr inbounds %struct.task, %struct.task* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %67

18:                                               ; preds = %12
  %19 = load %struct.task*, %struct.task** %5, align 8
  %20 = getelementptr inbounds %struct.task, %struct.task* %19, i32 0, i32 1
  %21 = load %struct.sighand*, %struct.sighand** %20, align 8
  store %struct.sighand* %21, %struct.sighand** %7, align 8
  %22 = load %struct.sighand*, %struct.sighand** %7, align 8
  %23 = getelementptr inbounds %struct.sighand, %struct.sighand* %22, i32 0, i32 0
  %24 = call i32 @lock(i32* %23)
  %25 = load %struct.sighand*, %struct.sighand** %7, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @signal_action(%struct.sighand* %25, i32 %26)
  %28 = load i64, i64* @SIGNAL_IGNORE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %18
  %31 = load %struct.task*, %struct.task** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = getelementptr inbounds %struct.siginfo_, %struct.siginfo_* %4, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @deliver_signal_unlocked(%struct.task* %31, i32 %32, i32 %34)
  br label %36

36:                                               ; preds = %30, %18
  %37 = load %struct.sighand*, %struct.sighand** %7, align 8
  %38 = getelementptr inbounds %struct.sighand, %struct.sighand* %37, i32 0, i32 0
  %39 = call i32 @unlock(i32* %38)
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @SIGCONT_, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @SIGKILL_, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %43, %36
  %48 = load %struct.task*, %struct.task** %5, align 8
  %49 = getelementptr inbounds %struct.task, %struct.task* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = call i32 @lock(i32* %51)
  %53 = load %struct.task*, %struct.task** %5, align 8
  %54 = getelementptr inbounds %struct.task, %struct.task* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 0, i32* %56, align 4
  %57 = load %struct.task*, %struct.task** %5, align 8
  %58 = getelementptr inbounds %struct.task, %struct.task* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = call i32 @notify(i32* %60)
  %62 = load %struct.task*, %struct.task** %5, align 8
  %63 = getelementptr inbounds %struct.task, %struct.task* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = call i32 @unlock(i32* %65)
  br label %67

67:                                               ; preds = %11, %17, %47, %43
  ret void
}

declare dso_local i32 @lock(i32*) #1

declare dso_local i64 @signal_action(%struct.sighand*, i32) #1

declare dso_local i32 @deliver_signal_unlocked(%struct.task*, i32, i32) #1

declare dso_local i32 @unlock(i32*) #1

declare dso_local i32 @notify(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
