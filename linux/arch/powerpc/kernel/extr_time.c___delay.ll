; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_time.c___delay.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_time.c___delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tb_invalid = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__delay(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = call i32 (...) @spin_begin()
  %6 = call i64 (...) @__USE_RTC()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %1
  %9 = call i64 (...) @get_rtcl()
  store i64 %9, i64* %3, align 8
  br label %10

10:                                               ; preds = %22, %8
  %11 = call i64 (...) @get_rtcl()
  %12 = load i64, i64* %3, align 8
  %13 = sub i64 %11, %12
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 1000000000
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %17, %10
  %21 = call i32 (...) @spin_cpu_relax()
  br label %22

22:                                               ; preds = %20
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* %2, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %10, label %27

27:                                               ; preds = %22
  br label %45

28:                                               ; preds = %1
  %29 = load i64, i64* @tb_invalid, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 (...) @spin_cpu_relax()
  br label %44

33:                                               ; preds = %28
  %34 = call i64 (...) @get_tbl()
  store i64 %34, i64* %3, align 8
  br label %35

35:                                               ; preds = %41, %33
  %36 = call i64 (...) @get_tbl()
  %37 = load i64, i64* %3, align 8
  %38 = sub i64 %36, %37
  %39 = load i64, i64* %2, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = call i32 (...) @spin_cpu_relax()
  br label %35

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %31
  br label %45

45:                                               ; preds = %44, %27
  %46 = call i32 (...) @spin_end()
  ret void
}

declare dso_local i32 @spin_begin(...) #1

declare dso_local i64 @__USE_RTC(...) #1

declare dso_local i64 @get_rtcl(...) #1

declare dso_local i32 @spin_cpu_relax(...) #1

declare dso_local i64 @get_tbl(...) #1

declare dso_local i32 @spin_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
