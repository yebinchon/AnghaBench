; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_s390_handle_requests.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_s390_handle_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_12__, %struct.TYPE_10__*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@KVM_REQ_MMU_RELOAD = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@KVM_REQ_TLB_FLUSH = common dso_local global i32 0, align 4
@KVM_REQ_ENABLE_IBS = common dso_local global i32 0, align 4
@CPUSTAT_IBS = common dso_local global i32 0, align 4
@KVM_REQ_DISABLE_IBS = common dso_local global i32 0, align 4
@KVM_REQ_ICPT_OPEREXC = common dso_local global i32 0, align 4
@ICTL_OPEREXC = common dso_local global i32 0, align 4
@KVM_REQ_START_MIGRATION = common dso_local global i32 0, align 4
@ECB2_CMMA = common dso_local global i32 0, align 4
@KVM_REQ_STOP_MIGRATION = common dso_local global i32 0, align 4
@KVM_REQ_UNHALT = common dso_local global i32 0, align 4
@KVM_REQ_VSIE_RESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @kvm_s390_handle_requests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_s390_handle_requests(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  br label %5

5:                                                ; preds = %144, %102, %88, %82, %64, %41, %35, %1
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = call i32 @kvm_s390_vcpu_request_handled(%struct.kvm_vcpu* %6)
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = call i32 @kvm_request_pending(%struct.kvm_vcpu* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %152

12:                                               ; preds = %5
  %13 = load i32, i32* @KVM_REQ_MMU_RELOAD, align 4
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %15 = call i64 @kvm_check_request(i32 %13, %struct.kvm_vcpu* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %12
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %19 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %23 = call i32 @kvm_s390_get_prefix(%struct.kvm_vcpu* %22)
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = mul nsw i32 %24, 2
  %26 = load i32, i32* @PROT_WRITE, align 4
  %27 = call i32 @gmap_mprotect_notify(i32 %21, i32 %23, i32 %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %17
  %31 = load i32, i32* @KVM_REQ_MMU_RELOAD, align 4
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %33 = call i32 @kvm_make_request(i32 %31, %struct.kvm_vcpu* %32)
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %152

35:                                               ; preds = %17
  br label %5

36:                                               ; preds = %12
  %37 = load i32, i32* @KVM_REQ_TLB_FLUSH, align 4
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %39 = call i64 @kvm_check_request(i32 %37, %struct.kvm_vcpu* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %43 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  store i32 65535, i32* %46, align 4
  br label %5

47:                                               ; preds = %36
  %48 = load i32, i32* @KVM_REQ_ENABLE_IBS, align 4
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %50 = call i64 @kvm_check_request(i32 %48, %struct.kvm_vcpu* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %47
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %54 = call i64 @ibs_enabled(%struct.kvm_vcpu* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %52
  %57 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %58 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @trace_kvm_s390_enable_disable_ibs(i32 %59, i32 1)
  %61 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %62 = load i32, i32* @CPUSTAT_IBS, align 4
  %63 = call i32 @kvm_s390_set_cpuflags(%struct.kvm_vcpu* %61, i32 %62)
  br label %64

64:                                               ; preds = %56, %52
  br label %5

65:                                               ; preds = %47
  %66 = load i32, i32* @KVM_REQ_DISABLE_IBS, align 4
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %68 = call i64 @kvm_check_request(i32 %66, %struct.kvm_vcpu* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %65
  %71 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %72 = call i64 @ibs_enabled(%struct.kvm_vcpu* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %76 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @trace_kvm_s390_enable_disable_ibs(i32 %77, i32 0)
  %79 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %80 = load i32, i32* @CPUSTAT_IBS, align 4
  %81 = call i32 @kvm_s390_clear_cpuflags(%struct.kvm_vcpu* %79, i32 %80)
  br label %82

82:                                               ; preds = %74, %70
  br label %5

83:                                               ; preds = %65
  %84 = load i32, i32* @KVM_REQ_ICPT_OPEREXC, align 4
  %85 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %86 = call i64 @kvm_check_request(i32 %84, %struct.kvm_vcpu* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %83
  %89 = load i32, i32* @ICTL_OPEREXC, align 4
  %90 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %91 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %89
  store i32 %96, i32* %94, align 4
  br label %5

97:                                               ; preds = %83
  %98 = load i32, i32* @KVM_REQ_START_MIGRATION, align 4
  %99 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %100 = call i64 @kvm_check_request(i32 %98, %struct.kvm_vcpu* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %97
  %103 = load i32, i32* @ECB2_CMMA, align 4
  %104 = xor i32 %103, -1
  %105 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %106 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, %104
  store i32 %111, i32* %109, align 4
  br label %5

112:                                              ; preds = %97
  %113 = load i32, i32* @KVM_REQ_STOP_MIGRATION, align 4
  %114 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %115 = call i64 @kvm_check_request(i32 %113, %struct.kvm_vcpu* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %145

117:                                              ; preds = %112
  %118 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %119 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %118, i32 0, i32 1
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %144

125:                                              ; preds = %117
  %126 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %127 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %126, i32 0, i32 1
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %125
  %136 = load i32, i32* @ECB2_CMMA, align 4
  %137 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %138 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %136
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %135, %125, %117
  br label %5

145:                                              ; preds = %112
  %146 = load i32, i32* @KVM_REQ_UNHALT, align 4
  %147 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %148 = call i32 @kvm_clear_request(i32 %146, %struct.kvm_vcpu* %147)
  %149 = load i32, i32* @KVM_REQ_VSIE_RESTART, align 4
  %150 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %151 = call i32 @kvm_clear_request(i32 %149, %struct.kvm_vcpu* %150)
  store i32 0, i32* %2, align 4
  br label %152

152:                                              ; preds = %145, %30, %11
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i32 @kvm_s390_vcpu_request_handled(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_request_pending(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_check_request(i32, %struct.kvm_vcpu*) #1

declare dso_local i32 @gmap_mprotect_notify(i32, i32, i32, i32) #1

declare dso_local i32 @kvm_s390_get_prefix(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_make_request(i32, %struct.kvm_vcpu*) #1

declare dso_local i64 @ibs_enabled(%struct.kvm_vcpu*) #1

declare dso_local i32 @trace_kvm_s390_enable_disable_ibs(i32, i32) #1

declare dso_local i32 @kvm_s390_set_cpuflags(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_s390_clear_cpuflags(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_clear_request(i32, %struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
