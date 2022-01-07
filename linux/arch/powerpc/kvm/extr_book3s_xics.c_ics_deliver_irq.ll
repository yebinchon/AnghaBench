; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xics.c_ics_deliver_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xics.c_ics_deliver_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_xics = type { i32 }
%struct.ics_irq_state = type { i64, i32, i64, i64, i32 }
%struct.kvmppc_ics = type { %struct.ics_irq_state* }

@.str = private unnamed_addr constant [29 x i8] c"ics deliver %#x (level: %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"ics_deliver_irq: IRQ 0x%06x not found !\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@KVM_INTERRUPT_SET_LEVEL = common dso_local global i64 0, align 8
@KVM_INTERRUPT_SET = common dso_local global i64 0, align 8
@KVM_INTERRUPT_UNSET = common dso_local global i64 0, align 8
@PQ_PRESENTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvmppc_xics*, i64, i64)* @ics_deliver_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ics_deliver_irq(%struct.kvmppc_xics* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvmppc_xics*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ics_irq_state*, align 8
  %9 = alloca %struct.kvmppc_ics*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.kvmppc_xics* %0, %struct.kvmppc_xics** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i32 (i8*, i64, ...) @XICS_DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %13, i64 %14)
  %16 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call %struct.kvmppc_ics* @kvmppc_xics_find_ics(%struct.kvmppc_xics* %16, i64 %17, i64* %10)
  store %struct.kvmppc_ics* %18, %struct.kvmppc_ics** %9, align 8
  %19 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %9, align 8
  %20 = icmp ne %struct.kvmppc_ics* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %3
  %22 = load i64, i64* %6, align 8
  %23 = call i32 (i8*, i64, ...) @XICS_DBG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %118

26:                                               ; preds = %3
  %27 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %9, align 8
  %28 = getelementptr inbounds %struct.kvmppc_ics, %struct.kvmppc_ics* %27, i32 0, i32 0
  %29 = load %struct.ics_irq_state*, %struct.ics_irq_state** %28, align 8
  %30 = load i64, i64* %10, align 8
  %31 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %29, i64 %30
  store %struct.ics_irq_state* %31, %struct.ics_irq_state** %8, align 8
  %32 = load %struct.ics_irq_state*, %struct.ics_irq_state** %8, align 8
  %33 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %26
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %118

39:                                               ; preds = %26
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* @KVM_INTERRUPT_SET_LEVEL, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @KVM_INTERRUPT_SET, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43, %39
  store i64 1, i64* %7, align 8
  br label %54

48:                                               ; preds = %43
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @KVM_INTERRUPT_UNSET, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i64 0, i64* %7, align 8
  br label %53

53:                                               ; preds = %52, %48
  br label %54

54:                                               ; preds = %53, %47
  %55 = load %struct.ics_irq_state*, %struct.ics_irq_state** %8, align 8
  %56 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = load i64, i64* %7, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %118

63:                                               ; preds = %59, %54
  br label %64

64:                                               ; preds = %92, %63
  %65 = load %struct.ics_irq_state*, %struct.ics_irq_state** %8, align 8
  %66 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %11, align 8
  %68 = load %struct.ics_irq_state*, %struct.ics_irq_state** %8, align 8
  %69 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %64
  %73 = load i64, i64* %7, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* @PQ_PRESENTED, align 8
  %78 = and i64 %76, %77
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store i32 0, i32* %4, align 4
  br label %118

81:                                               ; preds = %75
  %82 = load i64, i64* @PQ_PRESENTED, align 8
  store i64 %82, i64* %12, align 8
  br label %84

83:                                               ; preds = %72
  store i64 0, i64* %12, align 8
  br label %84

84:                                               ; preds = %83, %81
  br label %91

85:                                               ; preds = %64
  %86 = load i64, i64* %11, align 8
  %87 = shl i64 %86, 1
  %88 = and i64 %87, 3
  %89 = load i64, i64* @PQ_PRESENTED, align 8
  %90 = or i64 %88, %89
  store i64 %90, i64* %12, align 8
  br label %91

91:                                               ; preds = %85, %84
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.ics_irq_state*, %struct.ics_irq_state** %8, align 8
  %94 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %93, i32 0, i32 0
  %95 = load i64, i64* %11, align 8
  %96 = load i64, i64* %12, align 8
  %97 = call i64 @cmpxchg(i64* %94, i64 %95, i64 %96)
  %98 = load i64, i64* %11, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %64, label %100

100:                                              ; preds = %92
  %101 = load i64, i64* %12, align 8
  %102 = load i64, i64* @PQ_PRESENTED, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %5, align 8
  %106 = load i64, i64* %6, align 8
  %107 = call i32 @icp_deliver_irq(%struct.kvmppc_xics* %105, i32* null, i64 %106, i32 0)
  br label %108

108:                                              ; preds = %104, %100
  %109 = load %struct.ics_irq_state*, %struct.ics_irq_state** %8, align 8
  %110 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = call i32 (...) @raw_smp_processor_id()
  %115 = load %struct.ics_irq_state*, %struct.ics_irq_state** %8, align 8
  %116 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 8
  br label %117

117:                                              ; preds = %113, %108
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %117, %80, %62, %36, %21
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @XICS_DBG(i8*, i64, ...) #1

declare dso_local %struct.kvmppc_ics* @kvmppc_xics_find_ics(%struct.kvmppc_xics*, i64, i64*) #1

declare dso_local i64 @cmpxchg(i64*, i64, i64) #1

declare dso_local i32 @icp_deliver_irq(%struct.kvmppc_xics*, i32*, i64, i32) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
