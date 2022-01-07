; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_priv.c_kvm_s390_handle_lctl.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_priv.c_kvm_s390_handle_lctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@PSW_MASK_PSTATE = common dso_local global i32 0, align 4
@PGM_PRIVILEGED_OP = common dso_local global i32 0, align 4
@PGM_SPECIFICATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"LCTL: r1:%d, r3:%d, addr: 0x%llx\00", align 1
@KVM_REQ_TLB_FLUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_s390_handle_lctl(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [16 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 240
  %19 = ashr i32 %18, 4
  store i32 %19, i32* %4, align 4
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %21 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, 15
  store i32 %26, i32* %5, align 4
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %28 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %33 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @PSW_MASK_PSTATE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %1
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %44 = load i32, i32* @PGM_PRIVILEGED_OP, align 4
  %45 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %43, i32 %44)
  store i32 %45, i32* %2, align 4
  br label %132

46:                                               ; preds = %1
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %48 = call i32 @kvm_s390_get_base_disp_rs(%struct.kvm_vcpu* %47, i32* %11)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %49, 3
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %54 = load i32, i32* @PGM_SPECIFICATION, align 4
  %55 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %53, i32 %54)
  store i32 %55, i32* %2, align 4
  br label %132

56:                                               ; preds = %46
  %57 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @VCPU_EVENT(%struct.kvm_vcpu* %57, i32 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59, i32 %60)
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @trace_kvm_s390_handle_lctl(%struct.kvm_vcpu* %62, i32 0, i32 %63, i32 %64, i32 %65)
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %4, align 4
  %69 = sub nsw i32 %67, %68
  %70 = and i32 %69, 15
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  %72 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %11, align 4
  %75 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 4
  %79 = trunc i64 %78 to i32
  %80 = call i32 @read_guest(%struct.kvm_vcpu* %72, i32 %73, i32 %74, i32* %75, i32 %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %56
  %84 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @kvm_s390_inject_prog_cond(%struct.kvm_vcpu* %84, i32 %85)
  store i32 %86, i32* %2, align 4
  br label %132

87:                                               ; preds = %56
  %88 = load i32, i32* %4, align 4
  store i32 %88, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %89

89:                                               ; preds = %127, %87
  %90 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %91 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = and i64 %100, -4294967296
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %98, align 4
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %8, align 4
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %109 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %107
  store i32 %118, i32* %116, align 4
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* %5, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %89
  br label %128

123:                                              ; preds = %89
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, 1
  %126 = srem i32 %125, 16
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %123
  br i1 true, label %89, label %128

128:                                              ; preds = %127, %122
  %129 = load i32, i32* @KVM_REQ_TLB_FLUSH, align 4
  %130 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %131 = call i32 @kvm_make_request(i32 %129, %struct.kvm_vcpu* %130)
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %128, %83, %52, %42
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_s390_get_base_disp_rs(%struct.kvm_vcpu*, i32*) #1

declare dso_local i32 @VCPU_EVENT(%struct.kvm_vcpu*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @trace_kvm_s390_handle_lctl(%struct.kvm_vcpu*, i32, i32, i32, i32) #1

declare dso_local i32 @read_guest(%struct.kvm_vcpu*, i32, i32, i32*, i32) #1

declare dso_local i32 @kvm_s390_inject_prog_cond(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_make_request(i32, %struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
