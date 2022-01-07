; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/paravirt/extr_paravirt-smp.c_paravirt_smp_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/paravirt/extr_paravirt-smp.c_paravirt_smp_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NR_CPUS = common dso_local global i32 0, align 4
@__cpu_number_map = common dso_local global i32* null, align 8
@__cpu_logical_map = common dso_local global i32* null, align 8
@numcpus = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @paravirt_smp_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @paravirt_smp_setup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @get_ebase_cpunum()
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @NR_CPUS, align 4
  %6 = icmp uge i32 %4, %5
  %7 = zext i1 %6 to i32
  %8 = call i64 @WARN_ON(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  br label %60

11:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %27, %11
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @NR_CPUS, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @set_cpu_possible(i32 %17, i32 %20)
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* %1, align 4
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @set_cpu_present(i32 %22, i32 %25)
  br label %27

27:                                               ; preds = %16
  %28 = load i32, i32* %1, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %1, align 4
  br label %12

30:                                               ; preds = %12
  %31 = load i32*, i32** @__cpu_number_map, align 8
  %32 = load i32, i32* %2, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 0, i32* %34, align 4
  %35 = load i32, i32* %2, align 4
  %36 = load i32*, i32** @__cpu_logical_map, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %35, i32* %37, align 4
  store i32 0, i32* %1, align 4
  br label %38

38:                                               ; preds = %57, %30
  %39 = load i32, i32* %1, align 4
  %40 = load i32, i32* @numcpus, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %38
  %43 = load i32, i32* %1, align 4
  %44 = call i32 @set_cpu_possible(i32 %43, i32 1)
  %45 = load i32, i32* %1, align 4
  %46 = call i32 @set_cpu_present(i32 %45, i32 1)
  %47 = load i32, i32* %1, align 4
  %48 = load i32*, i32** @__cpu_number_map, align 8
  %49 = load i32, i32* %1, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %47, i32* %51, align 4
  %52 = load i32, i32* %1, align 4
  %53 = load i32*, i32** @__cpu_logical_map, align 8
  %54 = load i32, i32* %1, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %52, i32* %56, align 4
  br label %57

57:                                               ; preds = %42
  %58 = load i32, i32* %1, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %1, align 4
  br label %38

60:                                               ; preds = %10, %38
  ret void
}

declare dso_local i32 @get_ebase_cpunum(...) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @set_cpu_possible(i32, i32) #1

declare dso_local i32 @set_cpu_present(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
