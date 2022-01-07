; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_perf_event.c_supported_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_perf_event.c_supported_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.percpu_struct = type { i32 }

@hwrpb = common dso_local global %struct.TYPE_2__* null, align 8
@EV67_CPU = common dso_local global i64 0, align 8
@EV69_CPU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @supported_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @supported_cpu() #0 {
  %1 = alloca %struct.percpu_struct*, align 8
  %2 = alloca i64, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hwrpb, align 8
  %4 = bitcast %struct.TYPE_2__* %3 to i8*
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hwrpb, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, i8* %4, i64 %8
  %10 = bitcast i8* %9 to %struct.percpu_struct*
  store %struct.percpu_struct* %10, %struct.percpu_struct** %1, align 8
  %11 = load %struct.percpu_struct*, %struct.percpu_struct** %1, align 8
  %12 = getelementptr inbounds %struct.percpu_struct, %struct.percpu_struct* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %2, align 8
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* @EV67_CPU, align 8
  %17 = icmp uge i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %0
  %19 = load i64, i64* %2, align 8
  %20 = load i64, i64* @EV69_CPU, align 8
  %21 = icmp ule i64 %19, %20
  br label %22

22:                                               ; preds = %18, %0
  %23 = phi i1 [ false, %0 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
