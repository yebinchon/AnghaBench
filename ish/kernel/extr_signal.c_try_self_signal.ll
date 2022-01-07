; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_signal.c_try_self_signal.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_signal.c_try_self_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.sighand* }
%struct.sighand = type { i32 }

@SIGTTIN_ = common dso_local global i32 0, align 4
@SIGTTOU_ = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_3__* null, align 8
@SIGNAL_IGNORE = common dso_local global i64 0, align 8
@SIGINFO_NIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @try_self_signal(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sighand*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @SIGTTIN_, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @SIGTTOU_, align 4
  %11 = icmp eq i32 %9, %10
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi i1 [ true, %1 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load %struct.sighand*, %struct.sighand** %17, align 8
  store %struct.sighand* %18, %struct.sighand** %3, align 8
  %19 = load %struct.sighand*, %struct.sighand** %3, align 8
  %20 = getelementptr inbounds %struct.sighand, %struct.sighand* %19, i32 0, i32 0
  %21 = call i32 @lock(i32* %20)
  %22 = load %struct.sighand*, %struct.sighand** %3, align 8
  %23 = load i32, i32* %2, align 4
  %24 = call i64 @signal_action(%struct.sighand* %22, i32 %23)
  %25 = load i64, i64* @SIGNAL_IGNORE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %12
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @sigset_has(i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %27, %12
  %36 = phi i1 [ false, %12 ], [ %34, %27 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* @SIGINFO_NIL, align 4
  %44 = call i32 @deliver_signal_unlocked(%struct.TYPE_3__* %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %40, %35
  %46 = load %struct.sighand*, %struct.sighand** %3, align 8
  %47 = getelementptr inbounds %struct.sighand, %struct.sighand* %46, i32 0, i32 0
  %48 = call i32 @unlock(i32* %47)
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lock(i32*) #1

declare dso_local i64 @signal_action(%struct.sighand*, i32) #1

declare dso_local i32 @sigset_has(i32, i32) #1

declare dso_local i32 @deliver_signal_unlocked(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
