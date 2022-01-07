; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/mm/extr_tlb.c_down_spin.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/mm/extr_tlb.c_down_spin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spinaphore = type { i64, i32 }

@acq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spinaphore*)* @down_spin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @down_spin(%struct.spinaphore* %0) #0 {
  %2 = alloca %struct.spinaphore*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.spinaphore* %0, %struct.spinaphore** %2, align 8
  %5 = load %struct.spinaphore*, %struct.spinaphore** %2, align 8
  %6 = getelementptr inbounds %struct.spinaphore, %struct.spinaphore* %5, i32 0, i32 1
  %7 = load i32, i32* @acq, align 4
  %8 = call i64 @ia64_fetchadd(i32 1, i32* %6, i32 %7)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load %struct.spinaphore*, %struct.spinaphore** %2, align 8
  %11 = getelementptr inbounds %struct.spinaphore, %struct.spinaphore* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @time_before(i64 %9, i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %29

16:                                               ; preds = %1
  %17 = call i32 (...) @ia64_invala()
  br label %18

18:                                               ; preds = %27, %16
  %19 = load %struct.spinaphore*, %struct.spinaphore** %2, align 8
  %20 = getelementptr inbounds %struct.spinaphore, %struct.spinaphore* %19, i32 0, i32 0
  %21 = call i64 asm sideeffect "ld8.c.nc $0=[$1]", "=r,r,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %20) #2, !srcloc !2
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @time_before(i64 %22, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %29

27:                                               ; preds = %18
  %28 = call i32 (...) @cpu_relax()
  br label %18

29:                                               ; preds = %26, %15
  ret void
}

declare dso_local i64 @ia64_fetchadd(i32, i32*, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @ia64_invala(...) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 582}
