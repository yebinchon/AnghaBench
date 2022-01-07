; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-call.c_opal_call.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-call.c_opal_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSR_IR = common dso_local global i64 0, align 8
@MSR_DR = common dso_local global i64 0, align 8
@MSR_EE = common dso_local global i64 0, align 8
@DO_TRACE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32)* @opal_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opal_call(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %24 = call i64 (...) @mfmsr()
  store i64 %24, i64* %21, align 8
  %25 = load i64, i64* %21, align 8
  %26 = load i64, i64* @MSR_IR, align 8
  %27 = load i64, i64* @MSR_DR, align 8
  %28 = or i64 %26, %27
  %29 = and i64 %25, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %22, align 4
  %31 = load i64, i64* @MSR_EE, align 8
  %32 = xor i64 %31, -1
  %33 = load i64, i64* %21, align 8
  %34 = and i64 %33, %32
  store i64 %34, i64* %21, align 8
  %35 = load i32, i32* %22, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %9
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* %18, align 4
  %50 = load i32, i32* %19, align 4
  %51 = load i64, i64* %21, align 8
  %52 = call i32 @__opal_call(i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, i64 %51)
  store i32 %52, i32* %10, align 4
  br label %87

53:                                               ; preds = %9
  %54 = load i64, i64* %20, align 8
  %55 = call i32 @local_save_flags(i64 %54)
  %56 = call i32 (...) @hard_irq_disable()
  %57 = load i64, i64* @DO_TRACE, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %53
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* %19, align 4
  %69 = load i64, i64* %21, align 8
  %70 = call i32 @__opal_call_trace(i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i64 %69)
  store i32 %70, i32* %23, align 4
  br label %83

71:                                               ; preds = %53
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* %18, align 4
  %80 = load i32, i32* %19, align 4
  %81 = load i64, i64* %21, align 8
  %82 = call i32 @__opal_call(i32 %72, i32 %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80, i64 %81)
  store i32 %82, i32* %23, align 4
  br label %83

83:                                               ; preds = %71, %59
  %84 = load i64, i64* %20, align 8
  %85 = call i32 @local_irq_restore(i64 %84)
  %86 = load i32, i32* %23, align 4
  store i32 %86, i32* %10, align 4
  br label %87

87:                                               ; preds = %83, %41
  %88 = load i32, i32* %10, align 4
  ret i32 %88
}

declare dso_local i64 @mfmsr(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__opal_call(i32, i32, i32, i32, i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @local_save_flags(i64) #1

declare dso_local i32 @hard_irq_disable(...) #1

declare dso_local i32 @__opal_call_trace(i32, i32, i32, i32, i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
