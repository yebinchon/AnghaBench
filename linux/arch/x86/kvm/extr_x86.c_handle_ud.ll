; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_handle_ud.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_handle_ud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.x86_exception = type { i32 }

@EMULTYPE_TRAP_UD = common dso_local global i32 0, align 4
@force_emulation_prefix = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"\0F\0Bkvm\00", align 1
@EMULTYPE_TRAP_UD_FORCED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_ud(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [5 x i8], align 1
  %5 = alloca %struct.x86_exception, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %6 = load i32, i32* @EMULTYPE_TRAP_UD, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i64, i64* @force_emulation_prefix, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %1
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %12 = call i32 @kvm_get_linear_rip(%struct.kvm_vcpu* %11)
  %13 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0
  %14 = call i64 @kvm_read_guest_virt(%struct.kvm_vcpu* %10, i32 %12, i8* %13, i32 5, %struct.x86_exception* %5)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %9
  %17 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0
  %18 = call i64 @memcmp(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %23 = call i64 @kvm_rip_read(%struct.kvm_vcpu* %22)
  %24 = add i64 %23, 5
  %25 = call i32 @kvm_rip_write(%struct.kvm_vcpu* %21, i64 %24)
  %26 = load i32, i32* @EMULTYPE_TRAP_UD_FORCED, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %20, %16, %9, %1
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @kvm_emulate_instruction(%struct.kvm_vcpu* %28, i32 %29)
  ret i32 %30
}

declare dso_local i64 @kvm_read_guest_virt(%struct.kvm_vcpu*, i32, i8*, i32, %struct.x86_exception*) #1

declare dso_local i32 @kvm_get_linear_rip(%struct.kvm_vcpu*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @kvm_rip_write(%struct.kvm_vcpu*, i64) #1

declare dso_local i64 @kvm_rip_read(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_emulate_instruction(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
