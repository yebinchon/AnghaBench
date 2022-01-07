; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_sun4m_smp.c_sun4m_cross_call.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_sun4m_smp.c_sun4m_cross_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i32*, i32*, i64, i32 }

@SUN4M_NCPUS = common dso_local global i32 0, align 4
@cross_call_lock = common dso_local global i32 0, align 4
@ccall_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@cpu_online_mask = common dso_local global i32 0, align 4
@IRQ_CROSS_CALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64, i64, i64, i64)* @sun4m_cross_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4m_cross_call(i32 %0, i32 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %17 = load i32, i32* @SUN4M_NCPUS, align 4
  store i32 %17, i32* %13, align 4
  %18 = load i64, i64* %14, align 8
  %19 = call i32 @spin_lock_irqsave(i32* @cross_call_lock, i64 %18)
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccall_info, i32 0, i32 7), align 8
  %21 = load i64, i64* %9, align 8
  store i64 %21, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccall_info, i32 0, i32 0), align 8
  %22 = load i64, i64* %10, align 8
  store i64 %22, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccall_info, i32 0, i32 1), align 8
  %23 = load i64, i64* %11, align 8
  store i64 %23, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccall_info, i32 0, i32 2), align 8
  %24 = load i64, i64* %12, align 8
  store i64 %24, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccall_info, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccall_info, i32 0, i32 6), align 8
  %25 = call i32 (...) @smp_processor_id()
  %26 = call i32 @cpumask_clear_cpu(i32 %25, i32* %8)
  %27 = load i32, i32* @cpu_online_mask, align 4
  %28 = call i32 @cpumask_and(i32* %8, i32 %27, i32* %8)
  store i32 0, i32* %15, align 4
  br label %29

29:                                               ; preds = %59, %6
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %62

33:                                               ; preds = %29
  %34 = load i32, i32* %15, align 4
  %35 = call i64 @cpumask_test_cpu(i32 %34, i32* %8)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccall_info, i32 0, i32 4), align 8
  %39 = load i32, i32* %15, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 0, i32* %41, align 4
  %42 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccall_info, i32 0, i32 5), align 8
  %43 = load i32, i32* %15, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 0, i32* %45, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* @IRQ_CROSS_CALL, align 4
  %48 = call i32 @sun4m_send_ipi(i32 %46, i32 %47)
  br label %58

49:                                               ; preds = %33
  %50 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccall_info, i32 0, i32 4), align 8
  %51 = load i32, i32* %15, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 1, i32* %53, align 4
  %54 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccall_info, i32 0, i32 5), align 8
  %55 = load i32, i32* %15, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 1, i32* %57, align 4
  br label %58

58:                                               ; preds = %49, %37
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %15, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %15, align 4
  br label %29

62:                                               ; preds = %29
  store i32 0, i32* %16, align 4
  br label %63

63:                                               ; preds = %80, %62
  %64 = load i32, i32* %16, align 4
  %65 = call i64 @cpumask_test_cpu(i32 %64, i32* %8)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  br label %80

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %77, %68
  %70 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccall_info, i32 0, i32 4), align 8
  %71 = load i32, i32* %16, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = call i32 (...) @barrier()
  br label %69

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %79, %67
  %81 = load i32, i32* %16, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %63, label %85

85:                                               ; preds = %80
  store i32 0, i32* %16, align 4
  br label %86

86:                                               ; preds = %103, %85
  %87 = load i32, i32* %16, align 4
  %88 = call i64 @cpumask_test_cpu(i32 %87, i32* %8)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  br label %103

91:                                               ; preds = %86
  br label %92

92:                                               ; preds = %100, %91
  %93 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccall_info, i32 0, i32 5), align 8
  %94 = load i32, i32* %16, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  br i1 %99, label %100, label %102

100:                                              ; preds = %92
  %101 = call i32 (...) @barrier()
  br label %92

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102, %90
  %104 = load i32, i32* %16, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %13, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %86, label %108

108:                                              ; preds = %103
  %109 = load i64, i64* %14, align 8
  %110 = call i32 @spin_unlock_irqrestore(i32* @cross_call_lock, i64 %109)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cpumask_clear_cpu(i32, i32*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @cpumask_and(i32*, i32, i32*) #1

declare dso_local i64 @cpumask_test_cpu(i32, i32*) #1

declare dso_local i32 @sun4m_send_ipi(i32, i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
