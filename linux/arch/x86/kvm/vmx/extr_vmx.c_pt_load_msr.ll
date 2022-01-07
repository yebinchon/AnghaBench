; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_pt_load_msr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_pt_load_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_ctx = type { i32*, i32*, i32, i32, i32, i32 }

@MSR_IA32_RTIT_STATUS = common dso_local global i64 0, align 8
@MSR_IA32_RTIT_OUTPUT_BASE = common dso_local global i64 0, align 8
@MSR_IA32_RTIT_OUTPUT_MASK = common dso_local global i64 0, align 8
@MSR_IA32_RTIT_CR3_MATCH = common dso_local global i64 0, align 8
@MSR_IA32_RTIT_ADDR0_A = common dso_local global i64 0, align 8
@MSR_IA32_RTIT_ADDR0_B = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_ctx*, i32)* @pt_load_msr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pt_load_msr(%struct.pt_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.pt_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pt_ctx* %0, %struct.pt_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @MSR_IA32_RTIT_STATUS, align 8
  %7 = load %struct.pt_ctx*, %struct.pt_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.pt_ctx, %struct.pt_ctx* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @wrmsrl(i64 %6, i32 %9)
  %11 = load i64, i64* @MSR_IA32_RTIT_OUTPUT_BASE, align 8
  %12 = load %struct.pt_ctx*, %struct.pt_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.pt_ctx, %struct.pt_ctx* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @wrmsrl(i64 %11, i32 %14)
  %16 = load i64, i64* @MSR_IA32_RTIT_OUTPUT_MASK, align 8
  %17 = load %struct.pt_ctx*, %struct.pt_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.pt_ctx, %struct.pt_ctx* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @wrmsrl(i64 %16, i32 %19)
  %21 = load i64, i64* @MSR_IA32_RTIT_CR3_MATCH, align 8
  %22 = load %struct.pt_ctx*, %struct.pt_ctx** %3, align 8
  %23 = getelementptr inbounds %struct.pt_ctx, %struct.pt_ctx* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @wrmsrl(i64 %21, i32 %24)
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %57, %2
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %60

30:                                               ; preds = %26
  %31 = load i64, i64* @MSR_IA32_RTIT_ADDR0_A, align 8
  %32 = load i32, i32* %5, align 4
  %33 = mul nsw i32 %32, 2
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %31, %34
  %36 = load %struct.pt_ctx*, %struct.pt_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.pt_ctx, %struct.pt_ctx* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @wrmsrl(i64 %35, i32 %42)
  %44 = load i64, i64* @MSR_IA32_RTIT_ADDR0_B, align 8
  %45 = load i32, i32* %5, align 4
  %46 = mul nsw i32 %45, 2
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %44, %47
  %49 = load %struct.pt_ctx*, %struct.pt_ctx** %3, align 8
  %50 = getelementptr inbounds %struct.pt_ctx, %struct.pt_ctx* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @wrmsrl(i64 %48, i32 %55)
  br label %57

57:                                               ; preds = %30
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %26

60:                                               ; preds = %26
  ret void
}

declare dso_local i32 @wrmsrl(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
