; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Hunk_SwapBanks.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Hunk_SwapBanks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64 }

@hunk_temp = common dso_local global %struct.TYPE_4__* null, align 8
@hunk_permanent = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Hunk_SwapBanks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Hunk_SwapBanks() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hunk_temp, align 8
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hunk_temp, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %4, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %30

10:                                               ; preds = %0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hunk_temp, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hunk_temp, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %13, %16
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hunk_permanent, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hunk_permanent, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %20, %23
  %25 = icmp sgt i64 %17, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %10
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hunk_temp, align 8
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %1, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hunk_permanent, align 8
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** @hunk_temp, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** @hunk_permanent, align 8
  br label %30

30:                                               ; preds = %9, %26, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
