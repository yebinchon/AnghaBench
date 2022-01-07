; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_smpboot.c_sync_master.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_smpboot.c_sync_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@go = common dso_local global i64* null, align 8
@MASTER = common dso_local global i64 0, align 8
@NUM_ROUNDS = common dso_local global i64 0, align 8
@NUM_ITERS = common dso_local global i64 0, align 8
@SLAVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sync_master(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i64*, i64** @go, align 8
  %6 = load i64, i64* @MASTER, align 8
  %7 = getelementptr inbounds i64, i64* %5, i64 %6
  store i64 0, i64* %7, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @local_irq_save(i64 %8)
  store i64 0, i64* %4, align 8
  br label %10

10:                                               ; preds = %34, %1
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @NUM_ROUNDS, align 8
  %13 = load i64, i64* @NUM_ITERS, align 8
  %14 = mul i64 %12, %13
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %24, %16
  %18 = load i64*, i64** @go, align 8
  %19 = load i64, i64* @MASTER, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  %23 = xor i1 %22, true
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = call i32 (...) @cpu_relax()
  br label %17

26:                                               ; preds = %17
  %27 = load i64*, i64** @go, align 8
  %28 = load i64, i64* @MASTER, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  store i64 0, i64* %29, align 8
  %30 = call i64 (...) @ia64_get_itc()
  %31 = load i64*, i64** @go, align 8
  %32 = load i64, i64* @SLAVE, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  store i64 %30, i64* %33, align 8
  br label %34

34:                                               ; preds = %26
  %35 = load i64, i64* %4, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %4, align 8
  br label %10

37:                                               ; preds = %10
  %38 = load i64, i64* %3, align 8
  %39 = call i32 @local_irq_restore(i64 %38)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @ia64_get_itc(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
