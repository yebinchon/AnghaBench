; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_stat_br.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_stat_br.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.binder_proc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.binder_thread = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@binder_stats = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.binder_proc*, %struct.binder_thread*, i32)* @binder_stat_br to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @binder_stat_br(%struct.binder_proc* %0, %struct.binder_thread* %1, i32 %2) #0 {
  %4 = alloca %struct.binder_proc*, align 8
  %5 = alloca %struct.binder_thread*, align 8
  %6 = alloca i32, align 4
  store %struct.binder_proc* %0, %struct.binder_proc** %4, align 8
  store %struct.binder_thread* %1, %struct.binder_thread** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @trace_binder_return(i32 %7)
  %9 = load i32, i32* %6, align 4
  %10 = call i64 @_IOC_NR(i32 %9)
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @binder_stats, i32 0, i32 0), align 8
  %12 = call i64 @ARRAY_SIZE(i32* %11)
  %13 = icmp ult i64 %10, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %3
  %15 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @binder_stats, i32 0, i32 0), align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @_IOC_NR(i32 %16)
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = call i32 @atomic_inc(i32* %18)
  %20 = load %struct.binder_proc*, %struct.binder_proc** %4, align 8
  %21 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @_IOC_NR(i32 %24)
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i32 @atomic_inc(i32* %26)
  %28 = load %struct.binder_thread*, %struct.binder_thread** %5, align 8
  %29 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @_IOC_NR(i32 %32)
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = call i32 @atomic_inc(i32* %34)
  br label %36

36:                                               ; preds = %14, %3
  ret void
}

declare dso_local i32 @trace_binder_return(i32) #1

declare dso_local i64 @_IOC_NR(i32) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
