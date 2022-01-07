; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_mpic.c_mpic_host_map.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_mpic.c_mpic_host_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.mpic* }
%struct.mpic = type { i64, i64*, i32, i64*, i64, %struct.irq_chip, %struct.irq_chip, %struct.irq_chip, %struct.irq_chip, i64 }
%struct.irq_chip = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"mpic: map virq %d, hwirq 0x%lx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"mpic: Mapping of source 0x%x failed, source protected by firmware !\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@MPIC_SECONDARY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"mpic: mapping as timer\0A\00", align 1
@handle_fasteoi_irq = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [60 x i8] c"mpic: Mapping of source 0x%x failed, source out of range !\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"mpic: mapping to irq chip @%p\0A\00", align 1
@IRQ_TYPE_DEFAULT = common dso_local global i32 0, align 4
@MPIC_NO_RESET = common dso_local global i32 0, align 4
@handle_percpu_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i64)* @mpic_host_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpic_host_map(%struct.irq_domain* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_domain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.mpic*, align 8
  %9 = alloca %struct.irq_chip*, align 8
  %10 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %12 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %11, i32 0, i32 0
  %13 = load %struct.mpic*, %struct.mpic** %12, align 8
  store %struct.mpic* %13, %struct.mpic** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i64, i64* %7, align 8
  %16 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %14, i64 %15)
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.mpic*, %struct.mpic** %8, align 8
  %19 = getelementptr inbounds %struct.mpic, %struct.mpic* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %137

25:                                               ; preds = %3
  %26 = load %struct.mpic*, %struct.mpic** %8, align 8
  %27 = getelementptr inbounds %struct.mpic, %struct.mpic* %26, i32 0, i32 9
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.mpic*, %struct.mpic** %8, align 8
  %33 = getelementptr inbounds %struct.mpic, %struct.mpic* %32, i32 0, i32 9
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @test_bit(i64 %31, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load i64, i64* %7, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @pr_warn(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @EPERM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %137

43:                                               ; preds = %30, %25
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.mpic*, %struct.mpic** %8, align 8
  %46 = getelementptr inbounds %struct.mpic, %struct.mpic* %45, i32 0, i32 3
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sge i64 %44, %49
  br i1 %50, label %51, label %75

51:                                               ; preds = %43
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.mpic*, %struct.mpic** %8, align 8
  %54 = getelementptr inbounds %struct.mpic, %struct.mpic* %53, i32 0, i32 3
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 7
  %57 = load i64, i64* %56, align 8
  %58 = icmp sle i64 %52, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %51
  %60 = load %struct.mpic*, %struct.mpic** %8, align 8
  %61 = getelementptr inbounds %struct.mpic, %struct.mpic* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @MPIC_SECONDARY, align 4
  %64 = and i32 %62, %63
  %65 = call i32 @WARN_ON(i32 %64)
  %66 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.mpic*, %struct.mpic** %8, align 8
  %69 = call i32 @irq_set_chip_data(i32 %67, %struct.mpic* %68)
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.mpic*, %struct.mpic** %8, align 8
  %72 = getelementptr inbounds %struct.mpic, %struct.mpic* %71, i32 0, i32 7
  %73 = load i32, i32* @handle_fasteoi_irq, align 4
  %74 = call i32 @irq_set_chip_and_handler(i32 %70, %struct.irq_chip* %72, i32 %73)
  store i32 0, i32* %4, align 4
  br label %137

75:                                               ; preds = %51, %43
  %76 = load %struct.mpic*, %struct.mpic** %8, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i64, i64* %7, align 8
  %79 = call i64 @mpic_map_error_int(%struct.mpic* %76, i32 %77, i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  store i32 0, i32* %4, align 4
  br label %137

82:                                               ; preds = %75
  %83 = load i64, i64* %7, align 8
  %84 = load %struct.mpic*, %struct.mpic** %8, align 8
  %85 = getelementptr inbounds %struct.mpic, %struct.mpic* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = icmp sge i64 %83, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load i64, i64* %7, align 8
  %90 = trunc i64 %89 to i32
  %91 = call i32 @pr_warn(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %137

94:                                               ; preds = %82
  %95 = load %struct.mpic*, %struct.mpic** %8, align 8
  %96 = load i64, i64* %7, align 8
  %97 = call i32 @mpic_msi_reserve_hwirq(%struct.mpic* %95, i64 %96)
  %98 = load %struct.mpic*, %struct.mpic** %8, align 8
  %99 = getelementptr inbounds %struct.mpic, %struct.mpic* %98, i32 0, i32 6
  store %struct.irq_chip* %99, %struct.irq_chip** %9, align 8
  %100 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %101 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), %struct.irq_chip* %100)
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.mpic*, %struct.mpic** %8, align 8
  %104 = call i32 @irq_set_chip_data(i32 %102, %struct.mpic* %103)
  %105 = load i32, i32* %6, align 4
  %106 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %107 = load i32, i32* @handle_fasteoi_irq, align 4
  %108 = call i32 @irq_set_chip_and_handler(i32 %105, %struct.irq_chip* %106, i32 %107)
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @IRQ_TYPE_DEFAULT, align 4
  %111 = call i32 @irq_set_irq_type(i32 %109, i32 %110)
  %112 = load %struct.mpic*, %struct.mpic** %8, align 8
  %113 = load i64, i64* %7, align 8
  %114 = call i32 @mpic_is_ipi(%struct.mpic* %112, i64 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %136, label %116

116:                                              ; preds = %94
  %117 = load %struct.mpic*, %struct.mpic** %8, align 8
  %118 = getelementptr inbounds %struct.mpic, %struct.mpic* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @MPIC_NO_RESET, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %136

123:                                              ; preds = %116
  %124 = call i32 (...) @preempt_disable()
  %125 = load %struct.mpic*, %struct.mpic** %8, align 8
  %126 = call i32 @mpic_processor_id(%struct.mpic* %125)
  store i32 %126, i32* %10, align 4
  %127 = call i32 (...) @preempt_enable()
  %128 = load i32, i32* %6, align 4
  %129 = load i64, i64* %7, align 8
  %130 = call i32 @mpic_set_vector(i32 %128, i64 %129)
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @mpic_set_destination(i32 %131, i32 %132)
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @mpic_irq_set_priority(i32 %134, i32 8)
  br label %136

136:                                              ; preds = %123, %116, %94
  store i32 0, i32* %4, align 4
  br label %137

137:                                              ; preds = %136, %88, %81, %59, %37, %22
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local i32 @DBG(i8*, ...) #1

declare dso_local i64 @test_bit(i64, i64) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @irq_set_chip_data(i32, %struct.mpic*) #1

declare dso_local i32 @irq_set_chip_and_handler(i32, %struct.irq_chip*, i32) #1

declare dso_local i64 @mpic_map_error_int(%struct.mpic*, i32, i64) #1

declare dso_local i32 @mpic_msi_reserve_hwirq(%struct.mpic*, i64) #1

declare dso_local i32 @irq_set_irq_type(i32, i32) #1

declare dso_local i32 @mpic_is_ipi(%struct.mpic*, i64) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @mpic_processor_id(%struct.mpic*) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @mpic_set_vector(i32, i64) #1

declare dso_local i32 @mpic_set_destination(i32, i32) #1

declare dso_local i32 @mpic_irq_set_priority(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
