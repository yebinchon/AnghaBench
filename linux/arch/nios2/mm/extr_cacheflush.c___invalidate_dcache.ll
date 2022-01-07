; ModuleID = '/home/carl/AnghaBench/linux/arch/nios2/mm/extr_cacheflush.c___invalidate_dcache.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nios2/mm/extr_cacheflush.c___invalidate_dcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@cpuinfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @__invalidate_dcache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__invalidate_dcache(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 0), align 4
  %7 = sub nsw i32 %6, 1
  %8 = xor i32 %7, -1
  %9 = sext i32 %8 to i64
  %10 = load i64, i64* %3, align 8
  %11 = and i64 %10, %9
  store i64 %11, i64* %3, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 0), align 4
  %13 = sub nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* %4, align 8
  %16 = add i64 %15, %14
  store i64 %16, i64* %4, align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 0), align 4
  %18 = sub nsw i32 %17, 1
  %19 = xor i32 %18, -1
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* %4, align 8
  %22 = and i64 %21, %20
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %3, align 8
  store i64 %23, i64* %5, align 8
  br label %24

24:                                               ; preds = %30, %2
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i64, i64* %5, align 8
  call void asm sideeffect "   initda 0($0)\0A", "r,~{dirflag},~{fpsr},~{flags}"(i64 %29) #1, !srcloc !2
  br label %30

30:                                               ; preds = %28
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 0), align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %5, align 8
  %34 = add i64 %33, %32
  store i64 %34, i64* %5, align 8
  br label %24

35:                                               ; preds = %24
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 575}
