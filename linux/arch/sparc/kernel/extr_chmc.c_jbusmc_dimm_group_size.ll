; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_chmc.c_jbusmc_dimm_group_size.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_chmc.c_jbusmc_dimm_group_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_prom64_registers = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.linux_prom64_registers*, i32)* @jbusmc_dimm_group_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @jbusmc_dimm_group_size(i64 %0, %struct.linux_prom64_registers* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.linux_prom64_registers*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.linux_prom64_registers*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.linux_prom64_registers* %1, %struct.linux_prom64_registers** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i64, i64* %4, align 8
  %14 = add i64 %13, 8589934592
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %4, align 8
  store i64 %15, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %54, %3
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %57

20:                                               ; preds = %16
  %21 = load %struct.linux_prom64_registers*, %struct.linux_prom64_registers** %5, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.linux_prom64_registers, %struct.linux_prom64_registers* %21, i64 %23
  store %struct.linux_prom64_registers* %24, %struct.linux_prom64_registers** %10, align 8
  %25 = load %struct.linux_prom64_registers*, %struct.linux_prom64_registers** %10, align 8
  %26 = getelementptr inbounds %struct.linux_prom64_registers, %struct.linux_prom64_registers* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %11, align 8
  %29 = load %struct.linux_prom64_registers*, %struct.linux_prom64_registers** %10, align 8
  %30 = getelementptr inbounds %struct.linux_prom64_registers, %struct.linux_prom64_registers* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* %11, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %20
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* %12, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %20
  br label %54

41:                                               ; preds = %36
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i64, i64* %7, align 8
  store i64 %46, i64* %12, align 8
  br label %47

47:                                               ; preds = %45, %41
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* %8, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i64, i64* %12, align 8
  store i64 %52, i64* %8, align 8
  br label %53

53:                                               ; preds = %51, %47
  br label %54

54:                                               ; preds = %53, %40
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %16

57:                                               ; preds = %16
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %4, align 8
  %60 = sub nsw i64 %58, %59
  ret i64 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
