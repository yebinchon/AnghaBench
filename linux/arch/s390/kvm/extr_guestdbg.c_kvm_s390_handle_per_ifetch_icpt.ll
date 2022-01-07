; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_guestdbg.c_kvm_s390_handle_per_ifetch_icpt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_guestdbg.c_kvm_s390_handle_per_ifetch_icpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32*, i32 }
%struct.kvm_s390_pgm_info = type { i32, i32, i32 }

@PER_CODE_IFETCH = common dso_local global i32 0, align 4
@PGM_PER = common dso_local global i32 0, align 4
@KVM_GUESTDBG_EXIT_PENDING = common dso_local global i32 0, align 4
@PER_EVENT_IFETCH = common dso_local global i32 0, align 4
@PGM_ADDRESSING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_s390_handle_per_ifetch_icpt(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_s390_pgm_info, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %11 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 10
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %19 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 11
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %5, align 4
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %27 = call i32 @kvm_s390_get_ilen(%struct.kvm_vcpu* %26)
  store i32 %27, i32* %6, align 4
  %28 = getelementptr inbounds %struct.kvm_s390_pgm_info, %struct.kvm_s390_pgm_info* %7, i32 0, i32 0
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %30 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @__rewind_psw(i32 %34, i32 %35)
  store i32 %36, i32* %28, align 4
  %37 = getelementptr inbounds %struct.kvm_s390_pgm_info, %struct.kvm_s390_pgm_info* %7, i32 0, i32 1
  %38 = load i32, i32* @PER_CODE_IFETCH, align 4
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds %struct.kvm_s390_pgm_info, %struct.kvm_s390_pgm_info* %7, i32 0, i32 2
  %40 = load i32, i32* @PGM_PER, align 4
  store i32 %40, i32* %39, align 4
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %42 = call i32 @guestdbg_enabled(%struct.kvm_vcpu* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %1
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %46 = call i32 @kvm_s390_inject_prog_irq(%struct.kvm_vcpu* %45, %struct.kvm_s390_pgm_info* %7)
  store i32 %46, i32* %2, align 4
  br label %102

47:                                               ; preds = %1
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %49 = getelementptr inbounds %struct.kvm_s390_pgm_info, %struct.kvm_s390_pgm_info* %7, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.kvm_s390_pgm_info, %struct.kvm_s390_pgm_info* %7, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @debug_exit_required(%struct.kvm_vcpu* %48, i32 %50, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %47
  %56 = load i32, i32* @KVM_GUESTDBG_EXIT_PENDING, align 4
  %57 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %58 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %55, %47
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %63 = call i32 @guest_per_enabled(%struct.kvm_vcpu* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %61
  %66 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %67 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 9
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @PER_EVENT_IFETCH, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %65, %61
  store i32 0, i32* %2, align 4
  br label %102

78:                                               ; preds = %65
  %79 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %80 = call i32 @per_fetched_addr(%struct.kvm_vcpu* %79, i64* %8)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %2, align 4
  br label %102

85:                                               ; preds = %78
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %90 = load i32, i32* @PGM_ADDRESSING, align 4
  %91 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %89, i32 %90)
  store i32 %91, i32* %2, align 4
  br label %102

92:                                               ; preds = %85
  %93 = load i64, i64* %8, align 8
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* %5, align 4
  %96 = call i64 @in_addr_range(i64 %93, i32 %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %100 = call i32 @kvm_s390_inject_prog_irq(%struct.kvm_vcpu* %99, %struct.kvm_s390_pgm_info* %7)
  store i32 %100, i32* %2, align 4
  br label %102

101:                                              ; preds = %92
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %101, %98, %88, %83, %77, %44
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @kvm_s390_get_ilen(%struct.kvm_vcpu*) #1

declare dso_local i32 @__rewind_psw(i32, i32) #1

declare dso_local i32 @guestdbg_enabled(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_s390_inject_prog_irq(%struct.kvm_vcpu*, %struct.kvm_s390_pgm_info*) #1

declare dso_local i64 @debug_exit_required(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @guest_per_enabled(%struct.kvm_vcpu*) #1

declare dso_local i32 @per_fetched_addr(%struct.kvm_vcpu*, i64*) #1

declare dso_local i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @in_addr_range(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
