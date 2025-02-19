; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_loaded_vmcs_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_loaded_vmcs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loaded_vmcs = type { i32, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @loaded_vmcs_init(%struct.loaded_vmcs* %0) #0 {
  %2 = alloca %struct.loaded_vmcs*, align 8
  store %struct.loaded_vmcs* %0, %struct.loaded_vmcs** %2, align 8
  %3 = load %struct.loaded_vmcs*, %struct.loaded_vmcs** %2, align 8
  %4 = getelementptr inbounds %struct.loaded_vmcs, %struct.loaded_vmcs* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = call i32 @vmcs_clear(i64 %5)
  %7 = load %struct.loaded_vmcs*, %struct.loaded_vmcs** %2, align 8
  %8 = getelementptr inbounds %struct.loaded_vmcs, %struct.loaded_vmcs* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.loaded_vmcs*, %struct.loaded_vmcs** %2, align 8
  %13 = getelementptr inbounds %struct.loaded_vmcs, %struct.loaded_vmcs* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.loaded_vmcs*, %struct.loaded_vmcs** %2, align 8
  %18 = getelementptr inbounds %struct.loaded_vmcs, %struct.loaded_vmcs* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @vmcs_clear(i64 %19)
  br label %21

21:                                               ; preds = %16, %11, %1
  %22 = load %struct.loaded_vmcs*, %struct.loaded_vmcs** %2, align 8
  %23 = getelementptr inbounds %struct.loaded_vmcs, %struct.loaded_vmcs* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 8
  %24 = load %struct.loaded_vmcs*, %struct.loaded_vmcs** %2, align 8
  %25 = getelementptr inbounds %struct.loaded_vmcs, %struct.loaded_vmcs* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  ret void
}

declare dso_local i32 @vmcs_clear(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
