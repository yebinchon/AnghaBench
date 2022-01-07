; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_priv.c_handle_tpi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_priv.c_handle_tpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32 }
%struct.kvm_s390_interrupt_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@PGM_SPECIFICATION = common dso_local global i32 0, align 4
@__LC_SUBCHANNEL_ID = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @handle_tpi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_tpi(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_s390_interrupt_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [3 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %11 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 8
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %16 = call i32 @kvm_s390_get_base_disp_s(%struct.kvm_vcpu* %15, i32* %9)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = and i32 %17, 3
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %22 = load i32, i32* @PGM_SPECIFICATION, align 4
  %23 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %21, i32 %22)
  store i32 %23, i32* %2, align 4
  br label %117

24:                                               ; preds = %1
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %26 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %29 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 6
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.kvm_s390_interrupt_info* @kvm_s390_get_io_int(i32 %27, i32 %35, i32 0)
  store %struct.kvm_s390_interrupt_info* %36, %struct.kvm_s390_interrupt_info** %4, align 8
  %37 = load %struct.kvm_s390_interrupt_info*, %struct.kvm_s390_interrupt_info** %4, align 8
  %38 = icmp ne %struct.kvm_s390_interrupt_info* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %24
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %41 = call i32 @kvm_s390_set_psw_cc(%struct.kvm_vcpu* %40, i32 0)
  store i32 0, i32* %2, align 4
  br label %117

42:                                               ; preds = %24
  %43 = load %struct.kvm_s390_interrupt_info*, %struct.kvm_s390_interrupt_info** %4, align 8
  %44 = getelementptr inbounds %struct.kvm_s390_interrupt_info, %struct.kvm_s390_interrupt_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 16
  %48 = load %struct.kvm_s390_interrupt_info*, %struct.kvm_s390_interrupt_info** %4, align 8
  %49 = getelementptr inbounds %struct.kvm_s390_interrupt_info, %struct.kvm_s390_interrupt_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %47, %51
  %53 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  store i32 %52, i32* %53, align 4
  %54 = load %struct.kvm_s390_interrupt_info*, %struct.kvm_s390_interrupt_info** %4, align 8
  %55 = getelementptr inbounds %struct.kvm_s390_interrupt_info, %struct.kvm_s390_interrupt_info* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  store i32 %57, i32* %58, align 4
  %59 = load %struct.kvm_s390_interrupt_info*, %struct.kvm_s390_interrupt_info** %4, align 8
  %60 = getelementptr inbounds %struct.kvm_s390_interrupt_info, %struct.kvm_s390_interrupt_info* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %42
  store i64 8, i64* %5, align 8
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = bitcast [3 x i32]* %6 to i32**
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @write_guest(%struct.kvm_vcpu* %67, i32 %68, i32 %69, i32** %70, i64 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @kvm_s390_inject_prog_cond(%struct.kvm_vcpu* %76, i32 %77)
  store i32 %78, i32* %7, align 4
  br label %96

79:                                               ; preds = %66
  br label %91

80:                                               ; preds = %42
  store i64 12, i64* %5, align 8
  %81 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %82 = load i32, i32* @__LC_SUBCHANNEL_ID, align 4
  %83 = bitcast [3 x i32]* %6 to i32**
  %84 = load i64, i64* %5, align 8
  %85 = call i64 @write_guest_lc(%struct.kvm_vcpu* %81, i32 %82, i32** %83, i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load i32, i32* @EFAULT, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %7, align 4
  br label %96

90:                                               ; preds = %80
  br label %91

91:                                               ; preds = %90, %79
  %92 = load %struct.kvm_s390_interrupt_info*, %struct.kvm_s390_interrupt_info** %4, align 8
  %93 = call i32 @kfree(%struct.kvm_s390_interrupt_info* %92)
  %94 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %95 = call i32 @kvm_s390_set_psw_cc(%struct.kvm_vcpu* %94, i32 1)
  store i32 0, i32* %2, align 4
  br label %117

96:                                               ; preds = %87, %75
  %97 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %98 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.kvm_s390_interrupt_info*, %struct.kvm_s390_interrupt_info** %4, align 8
  %101 = call i64 @kvm_s390_reinject_io_int(i32 %99, %struct.kvm_s390_interrupt_info* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %96
  %104 = load %struct.kvm_s390_interrupt_info*, %struct.kvm_s390_interrupt_info** %4, align 8
  %105 = call i32 @kfree(%struct.kvm_s390_interrupt_info* %104)
  %106 = load i32, i32* @EFAULT, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %103, %96
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i32, i32* @EFAULT, align 4
  %113 = sub nsw i32 0, %112
  br label %115

114:                                              ; preds = %108
  br label %115

115:                                              ; preds = %114, %111
  %116 = phi i32 [ %113, %111 ], [ 0, %114 ]
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %115, %91, %39, %20
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @kvm_s390_get_base_disp_s(%struct.kvm_vcpu*, i32*) #1

declare dso_local i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu*, i32) #1

declare dso_local %struct.kvm_s390_interrupt_info* @kvm_s390_get_io_int(i32, i32, i32) #1

declare dso_local i32 @kvm_s390_set_psw_cc(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @write_guest(%struct.kvm_vcpu*, i32, i32, i32**, i64) #1

declare dso_local i32 @kvm_s390_inject_prog_cond(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @write_guest_lc(%struct.kvm_vcpu*, i32, i32**, i64) #1

declare dso_local i32 @kfree(%struct.kvm_s390_interrupt_info*) #1

declare dso_local i64 @kvm_s390_reinject_io_int(i32, %struct.kvm_s390_interrupt_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
