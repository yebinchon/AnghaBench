; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/uv/extr_uv_nmi.c_uv_check_nmi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/uv/extr_uv_nmi.c_uv_check_nmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.uv_hub_nmi_s = type { i32, i32 }

@uv_nmi_count = common dso_local global i32 0, align 4
@uv_cpu_nmi = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@uv_nmi_slave_delay = common dso_local global i32 0, align 4
@uv_in_nmi = common dso_local global i32 0, align 4
@uv_nmi_misses = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uv_hub_nmi_s*)* @uv_check_nmi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv_check_nmi(%struct.uv_hub_nmi_s* %0) #0 {
  %2 = alloca %struct.uv_hub_nmi_s*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uv_hub_nmi_s* %0, %struct.uv_hub_nmi_s** %2, align 8
  %6 = call i32 (...) @smp_processor_id()
  store i32 %6, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = call i32 @local64_inc(i32* @uv_nmi_count)
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uv_cpu_nmi, i32 0, i32 0), align 4
  %9 = call i32 @this_cpu_inc(i32 %8)
  br label %10

10:                                               ; preds = %1
  %11 = load %struct.uv_hub_nmi_s*, %struct.uv_hub_nmi_s** %2, align 8
  %12 = getelementptr inbounds %struct.uv_hub_nmi_s, %struct.uv_hub_nmi_s* %11, i32 0, i32 1
  %13 = call i32 @atomic_read(i32* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %72

17:                                               ; preds = %10
  %18 = load %struct.uv_hub_nmi_s*, %struct.uv_hub_nmi_s** %2, align 8
  %19 = getelementptr inbounds %struct.uv_hub_nmi_s, %struct.uv_hub_nmi_s* %18, i32 0, i32 0
  %20 = call i64 @raw_spin_trylock(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %17
  %23 = load %struct.uv_hub_nmi_s*, %struct.uv_hub_nmi_s** %2, align 8
  %24 = call i32 @uv_test_nmi(%struct.uv_hub_nmi_s* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.uv_hub_nmi_s*, %struct.uv_hub_nmi_s** %2, align 8
  %30 = call i32 @uv_set_in_nmi(i32 %28, %struct.uv_hub_nmi_s* %29)
  store i32 1, i32* %4, align 4
  br label %72

31:                                               ; preds = %22
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %41

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.uv_hub_nmi_s*, %struct.uv_hub_nmi_s** %2, align 8
  %38 = getelementptr inbounds %struct.uv_hub_nmi_s, %struct.uv_hub_nmi_s* %37, i32 0, i32 0
  %39 = call i32 @raw_spin_unlock(i32* %38)
  br label %52

40:                                               ; preds = %17
  br label %41

41:                                               ; preds = %40, %34
  %42 = call i32 (...) @cpu_relax()
  %43 = load i32, i32* @uv_nmi_slave_delay, align 4
  %44 = call i32 @udelay(i32 %43)
  %45 = load %struct.uv_hub_nmi_s*, %struct.uv_hub_nmi_s** %2, align 8
  %46 = getelementptr inbounds %struct.uv_hub_nmi_s, %struct.uv_hub_nmi_s* %45, i32 0, i32 1
  %47 = call i32 @atomic_read(i32* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %72

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51, %36
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %52
  %56 = call i32 @atomic_read(i32* @uv_in_nmi)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i32, i32* %3, align 4
  %61 = load %struct.uv_hub_nmi_s*, %struct.uv_hub_nmi_s** %2, align 8
  %62 = call i32 @uv_set_in_nmi(i32 %60, %struct.uv_hub_nmi_s* %61)
  br label %63

63:                                               ; preds = %59, %55
  br label %64

64:                                               ; preds = %63, %52
  %65 = load i32, i32* %5, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load %struct.uv_hub_nmi_s*, %struct.uv_hub_nmi_s** %2, align 8
  %69 = getelementptr inbounds %struct.uv_hub_nmi_s, %struct.uv_hub_nmi_s* %68, i32 0, i32 0
  %70 = call i32 @raw_spin_unlock(i32* %69)
  br label %71

71:                                               ; preds = %67, %64
  br label %72

72:                                               ; preds = %71, %50, %27, %16
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = call i32 @local64_inc(i32* @uv_nmi_misses)
  br label %77

77:                                               ; preds = %75, %72
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @local64_inc(i32*) #1

declare dso_local i32 @this_cpu_inc(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @raw_spin_trylock(i32*) #1

declare dso_local i32 @uv_test_nmi(%struct.uv_hub_nmi_s*) #1

declare dso_local i32 @uv_set_in_nmi(i32, %struct.uv_hub_nmi_s*) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
