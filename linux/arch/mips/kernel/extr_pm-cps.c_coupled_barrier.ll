; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_pm-cps.c_coupled_barrier.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_pm-cps.c_coupled_barrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@coupled_coherence = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @coupled_barrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coupled_barrier(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @coupled_coherence, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %36

8:                                                ; preds = %2
  %9 = call i32 (...) @smp_mb__before_atomic()
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @atomic_inc(i32* %10)
  br label %12

12:                                               ; preds = %17, %8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @atomic_read(i32* %13)
  %15 = load i32, i32* %4, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call i32 (...) @cpu_relax()
  br label %12

19:                                               ; preds = %12
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @atomic_inc_return(i32* %20)
  %22 = load i32, i32* %4, align 4
  %23 = mul i32 %22, 2
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @atomic_set(i32* %26, i32 0)
  br label %36

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %34, %28
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @atomic_read(i32* %30)
  %32 = load i32, i32* %4, align 4
  %33 = icmp ugt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 (...) @cpu_relax()
  br label %29

36:                                               ; preds = %7, %25, %29
  ret void
}

declare dso_local i32 @smp_mb__before_atomic(...) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
