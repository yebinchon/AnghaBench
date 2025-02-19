; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_trap_vz_no_handler_guest_exit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_trap_vz_no_handler_guest_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@CAUSEF_BD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"Guest Exception Code: %d not yet handled @ PC: %p, inst: 0x%08x  Status: %#x\0A\00", align 1
@EMULATE_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, %struct.kvm_vcpu*)* @kvm_trap_vz_no_handler_guest_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_trap_vz_no_handler_guest_exit(i32 %0, i32 %1, i32* %2, %struct.kvm_vcpu* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.kvm_vcpu*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.kvm_vcpu* %3, %struct.kvm_vcpu** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @CAUSEF_BD, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32*, i32** %7, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  store i32* %16, i32** %7, align 8
  br label %17

17:                                               ; preds = %14, %4
  %18 = load i32*, i32** %7, align 8
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %20 = call i32 @kvm_get_badinstr(i32* %18, %struct.kvm_vcpu* %19, i32* %9)
  %21 = load i32, i32* %5, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 (...) @read_gc0_status()
  %25 = call i32 @kvm_err(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %21, i32* %22, i32 %23, i32 %24)
  %26 = load i32, i32* @EMULATE_FAIL, align 4
  ret i32 %26
}

declare dso_local i32 @kvm_get_badinstr(i32*, %struct.kvm_vcpu*, i32*) #1

declare dso_local i32 @kvm_err(i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @read_gc0_status(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
