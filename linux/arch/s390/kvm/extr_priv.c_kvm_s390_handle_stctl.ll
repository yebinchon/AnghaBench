; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_priv.c_kvm_s390_handle_stctl.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_priv.c_kvm_s390_handle_stctl.c"
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
@.str = private unnamed_addr constant [33 x i8] c"STCTL r1:%d, r3:%d, addr: 0x%llx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_s390_handle_stctl(%struct.kvm_vcpu* %0) #0 {
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
  br label %111

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
  br label %111

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
  %66 = call i32 @trace_kvm_s390_handle_stctl(%struct.kvm_vcpu* %62, i32 0, i32 %63, i32 %64, i32 %65)
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %91, %56
  %69 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %70 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 %81
  store i32 %78, i32* %82, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %68
  br label %92

87:                                               ; preds = %68
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  %90 = srem i32 %89, 16
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %87
  br i1 true, label %68, label %92

92:                                               ; preds = %91, %86
  %93 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %11, align 4
  %96 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = mul i64 %98, 4
  %100 = trunc i64 %99 to i32
  %101 = call i32 @write_guest(%struct.kvm_vcpu* %93, i32 %94, i32 %95, i32* %96, i32 %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %92
  %105 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @kvm_s390_inject_prog_cond(%struct.kvm_vcpu* %105, i32 %106)
  br label %109

108:                                              ; preds = %92
  br label %109

109:                                              ; preds = %108, %104
  %110 = phi i32 [ %107, %104 ], [ 0, %108 ]
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %109, %52, %42
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_s390_get_base_disp_rs(%struct.kvm_vcpu*, i32*) #1

declare dso_local i32 @VCPU_EVENT(%struct.kvm_vcpu*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @trace_kvm_s390_handle_stctl(%struct.kvm_vcpu*, i32, i32, i32, i32) #1

declare dso_local i32 @write_guest(%struct.kvm_vcpu*, i32, i32, i32*, i32) #1

declare dso_local i32 @kvm_s390_inject_prog_cond(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
