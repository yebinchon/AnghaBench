; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/acpi/extr_cppc_msr.c_cpc_write_ffh.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/acpi/extr_cppc_msr.c_cpc_write_ffh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpc_reg = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpc_write_ffh(i32 %0, %struct.cpc_reg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpc_reg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.cpc_reg* %1, %struct.cpc_reg** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.cpc_reg*, %struct.cpc_reg** %5, align 8
  %12 = getelementptr inbounds %struct.cpc_reg, %struct.cpc_reg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @rdmsrl_safe_on_cpu(i32 %10, i32 %13, i32* %7)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %52, label %17

17:                                               ; preds = %3
  %18 = load %struct.cpc_reg*, %struct.cpc_reg** %5, align 8
  %19 = getelementptr inbounds %struct.cpc_reg, %struct.cpc_reg* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = load %struct.cpc_reg*, %struct.cpc_reg** %5, align 8
  %23 = getelementptr inbounds %struct.cpc_reg, %struct.cpc_reg* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = sub nsw i64 %25, 1
  %27 = load %struct.cpc_reg*, %struct.cpc_reg** %5, align 8
  %28 = getelementptr inbounds %struct.cpc_reg, %struct.cpc_reg* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @GENMASK_ULL(i64 %26, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.cpc_reg*, %struct.cpc_reg** %5, align 8
  %32 = getelementptr inbounds %struct.cpc_reg, %struct.cpc_reg* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = shl i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %9, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.cpc_reg*, %struct.cpc_reg** %5, align 8
  %48 = getelementptr inbounds %struct.cpc_reg, %struct.cpc_reg* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @wrmsrl_safe_on_cpu(i32 %46, i32 %49, i32 %50)
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %17, %3
  %53 = load i32, i32* %8, align 4
  ret i32 %53
}

declare dso_local i32 @rdmsrl_safe_on_cpu(i32, i32, i32*) #1

declare dso_local i32 @GENMASK_ULL(i64, i32) #1

declare dso_local i32 @wrmsrl_safe_on_cpu(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
