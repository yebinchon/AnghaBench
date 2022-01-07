; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_emulate.c_assign_eip.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_emulate.c_assign_eip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_emulate_ctxt = type { i32, i64 }
%struct.segmented_address = type { i64, i32 }

@VCPU_SREG_CS = common dso_local global i32 0, align 4
@X86EMUL_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86_emulate_ctxt*, i64, i32)* @assign_eip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assign_eip(%struct.x86_emulate_ctxt* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.x86_emulate_ctxt*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.segmented_address, align 8
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = getelementptr inbounds %struct.segmented_address, %struct.segmented_address* %10, i32 0, i32 0
  %12 = load i64, i64* %5, align 8
  store i64 %12, i64* %11, align 8
  %13 = getelementptr inbounds %struct.segmented_address, %struct.segmented_address* %10, i32 0, i32 1
  %14 = load i32, i32* @VCPU_SREG_CS, align 4
  store i32 %14, i32* %13, align 8
  %15 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %16 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = icmp ne i64 %18, 8
  br i1 %19, label %20, label %31

20:                                               ; preds = %3
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %23 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = shl i32 %24, 3
  %26 = zext i32 %25 to i64
  %27 = shl i64 1, %26
  %28 = sub i64 %27, 1
  %29 = and i64 %21, %28
  %30 = getelementptr inbounds %struct.segmented_address, %struct.segmented_address* %10, i32 0, i32 0
  store i64 %29, i64* %30, align 8
  br label %31

31:                                               ; preds = %20, %3
  %32 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = bitcast %struct.segmented_address* %10 to { i64, i32 }*
  %35 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %34, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @__linearize(%struct.x86_emulate_ctxt* %32, i64 %36, i32 %38, i32* %9, i32 1, i32 0, i32 1, i32 %33, i64* %7)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @X86EMUL_CONTINUE, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.segmented_address, %struct.segmented_address* %10, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %47 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %43, %31
  %49 = load i32, i32* %8, align 4
  ret i32 %49
}

declare dso_local i32 @__linearize(%struct.x86_emulate_ctxt*, i64, i32, i32*, i32, i32, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
