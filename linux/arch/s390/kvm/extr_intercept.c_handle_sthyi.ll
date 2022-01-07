; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_intercept.c_handle_sthyi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_intercept.c_handle_sthyi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_8__*, %struct.TYPE_5__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32 }
%struct.sthyi_sctns = type { i32 }

@PGM_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"STHYI: fc: %llu addr: 0x%016llx\00", align 1
@PGM_SPECIFICATION = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_sthyi(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sthyi_sctns*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store %struct.sthyi_sctns* null, %struct.sthyi_sctns** %11, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @test_kvm_facility(i32 %14, i32 74)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %19 = load i32, i32* @PGM_OPERATION, align 4
  %20 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %18, i32 %19)
  store i32 %20, i32* %2, align 4
  br label %142

21:                                               ; preds = %1
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %23 = call i32 @kvm_s390_get_regs_rre(%struct.kvm_vcpu* %22, i32* %4, i32* %5)
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %25 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %7, align 4
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %36 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %8, align 4
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %47 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @VCPU_EVENT(%struct.kvm_vcpu* %51, i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @trace_kvm_s390_handle_sthyi(%struct.kvm_vcpu* %55, i32 %56, i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %70, label %62

62:                                               ; preds = %21
  %63 = load i32, i32* %4, align 4
  %64 = and i32 %63, 1
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %5, align 4
  %68 = and i32 %67, 1
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66, %62, %21
  %71 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %72 = load i32, i32* @PGM_SPECIFICATION, align 4
  %73 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %71, i32 %72)
  store i32 %73, i32* %2, align 4
  br label %142

74:                                               ; preds = %66
  %75 = load i32, i32* %7, align 4
  %76 = and i32 %75, 65535
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32 3, i32* %9, align 4
  store i32 4, i32* %10, align 4
  br label %102

79:                                               ; preds = %74
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @PAGE_MASK, align 4
  %82 = xor i32 %81, -1
  %83 = and i32 %80, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %87 = load i32, i32* @PGM_SPECIFICATION, align 4
  %88 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %86, i32 %87)
  store i32 %88, i32* %2, align 4
  br label %142

89:                                               ; preds = %79
  %90 = load i32, i32* @GFP_KERNEL, align 4
  %91 = call i64 @get_zeroed_page(i32 %90)
  %92 = inttoptr i64 %91 to i8*
  %93 = bitcast i8* %92 to %struct.sthyi_sctns*
  store %struct.sthyi_sctns* %93, %struct.sthyi_sctns** %11, align 8
  %94 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %11, align 8
  %95 = icmp ne %struct.sthyi_sctns* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %89
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %142

99:                                               ; preds = %89
  %100 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %11, align 8
  %101 = call i32 @sthyi_fill(%struct.sthyi_sctns* %100, i32* %10)
  store i32 %101, i32* %9, align 4
  br label %102

102:                                              ; preds = %99, %78
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %122, label %105

105:                                              ; preds = %102
  %106 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %5, align 4
  %109 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %11, align 8
  %110 = load i32, i32* @PAGE_SIZE, align 4
  %111 = call i32 @write_guest(%struct.kvm_vcpu* %106, i32 %107, i32 %108, %struct.sthyi_sctns* %109, i32 %110)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %105
  %115 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %11, align 8
  %116 = ptrtoint %struct.sthyi_sctns* %115 to i64
  %117 = call i32 @free_page(i64 %116)
  %118 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @kvm_s390_inject_prog_cond(%struct.kvm_vcpu* %118, i32 %119)
  store i32 %120, i32* %2, align 4
  br label %142

121:                                              ; preds = %105
  br label %122

122:                                              ; preds = %121, %102
  %123 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %11, align 8
  %124 = ptrtoint %struct.sthyi_sctns* %123 to i64
  %125 = call i32 @free_page(i64 %124)
  %126 = load i32, i32* %10, align 4
  %127 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %128 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %127, i32 0, i32 0
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %5, align 4
  %135 = add nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  store i32 %126, i32* %137, align 4
  %138 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @kvm_s390_set_psw_cc(%struct.kvm_vcpu* %138, i32 %139)
  %141 = load i32, i32* %6, align 4
  store i32 %141, i32* %2, align 4
  br label %142

142:                                              ; preds = %122, %114, %96, %85, %70, %17
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @test_kvm_facility(i32, i32) #1

declare dso_local i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_s390_get_regs_rre(%struct.kvm_vcpu*, i32*, i32*) #1

declare dso_local i32 @VCPU_EVENT(%struct.kvm_vcpu*, i32, i8*, i32, i32) #1

declare dso_local i32 @trace_kvm_s390_handle_sthyi(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @sthyi_fill(%struct.sthyi_sctns*, i32*) #1

declare dso_local i32 @write_guest(%struct.kvm_vcpu*, i32, i32, %struct.sthyi_sctns*, i32) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kvm_s390_inject_prog_cond(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_s390_set_psw_cc(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
