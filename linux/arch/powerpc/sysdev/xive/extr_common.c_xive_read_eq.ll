; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_common.c_xive_read_eq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_common.c_xive_read_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xive_q = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xive_q*, i32)* @xive_read_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xive_read_eq(%struct.xive_q* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xive_q*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xive_q* %0, %struct.xive_q** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.xive_q*, %struct.xive_q** %4, align 8
  %8 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %56

12:                                               ; preds = %2
  %13 = load %struct.xive_q*, %struct.xive_q** %4, align 8
  %14 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.xive_q*, %struct.xive_q** %4, align 8
  %17 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %15, %19
  %21 = call i32 @be32_to_cpup(i64 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = ashr i32 %22, 31
  %24 = load %struct.xive_q*, %struct.xive_q** %4, align 8
  %25 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %56

29:                                               ; preds = %12
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %53, label %32

32:                                               ; preds = %29
  %33 = load %struct.xive_q*, %struct.xive_q** %4, align 8
  %34 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  %37 = load %struct.xive_q*, %struct.xive_q** %4, align 8
  %38 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %36, %39
  %41 = load %struct.xive_q*, %struct.xive_q** %4, align 8
  %42 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.xive_q*, %struct.xive_q** %4, align 8
  %44 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %32
  %48 = load %struct.xive_q*, %struct.xive_q** %4, align 8
  %49 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = xor i32 %50, 1
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %47, %32
  br label %53

53:                                               ; preds = %52, %29
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, 2147483647
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %53, %28, %11
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @be32_to_cpup(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
