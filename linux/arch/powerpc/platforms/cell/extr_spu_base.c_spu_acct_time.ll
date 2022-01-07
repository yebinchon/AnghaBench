; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/extr_spu_base.c_spu_acct_time.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/extr_spu_base.c_spu_acct_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, i32, i64 }

@NSEC_PER_MSEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.spu*, i32)* @spu_acct_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @spu_acct_time(%struct.spu* %0, i32 %1) #0 {
  %3 = alloca %struct.spu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.spu* %0, %struct.spu** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.spu*, %struct.spu** %3, align 8
  %7 = getelementptr inbounds %struct.spu, %struct.spu* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i64, i64* %9, i64 %11
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %5, align 8
  %14 = load %struct.spu*, %struct.spu** %3, align 8
  %15 = getelementptr inbounds %struct.spu, %struct.spu* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = call i64 (...) @ktime_get_ns()
  %22 = load %struct.spu*, %struct.spu** %3, align 8
  %23 = getelementptr inbounds %struct.spu, %struct.spu* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %21, %25
  %27 = load i64, i64* %5, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* %5, align 8
  br label %29

29:                                               ; preds = %20, %2
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @NSEC_PER_MSEC, align 8
  %32 = udiv i64 %30, %31
  ret i64 %32
}

declare dso_local i64 @ktime_get_ns(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
