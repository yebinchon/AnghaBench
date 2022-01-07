; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_get_msr_feature.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_get_msr_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.kvm_msr_entry*)* }
%struct.kvm_msr_entry = type { i32, i32 }

@kvm_x86_ops = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_msr_entry*)* @kvm_get_msr_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_get_msr_feature(%struct.kvm_msr_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_msr_entry*, align 8
  store %struct.kvm_msr_entry* %0, %struct.kvm_msr_entry** %3, align 8
  %4 = load %struct.kvm_msr_entry*, %struct.kvm_msr_entry** %3, align 8
  %5 = getelementptr inbounds %struct.kvm_msr_entry, %struct.kvm_msr_entry* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %18 [
    i32 129, label %7
    i32 128, label %11
  ]

7:                                                ; preds = %1
  %8 = call i32 (...) @kvm_get_arch_capabilities()
  %9 = load %struct.kvm_msr_entry*, %struct.kvm_msr_entry** %3, align 8
  %10 = getelementptr inbounds %struct.kvm_msr_entry, %struct.kvm_msr_entry* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  br label %27

11:                                               ; preds = %1
  %12 = load %struct.kvm_msr_entry*, %struct.kvm_msr_entry** %3, align 8
  %13 = getelementptr inbounds %struct.kvm_msr_entry, %struct.kvm_msr_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.kvm_msr_entry*, %struct.kvm_msr_entry** %3, align 8
  %16 = getelementptr inbounds %struct.kvm_msr_entry, %struct.kvm_msr_entry* %15, i32 0, i32 1
  %17 = call i32 @rdmsrl_safe(i32 %14, i32* %16)
  br label %27

18:                                               ; preds = %1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.kvm_msr_entry*)*, i32 (%struct.kvm_msr_entry*)** %20, align 8
  %22 = load %struct.kvm_msr_entry*, %struct.kvm_msr_entry** %3, align 8
  %23 = call i32 %21(%struct.kvm_msr_entry* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %28

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %11, %7
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %25
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @kvm_get_arch_capabilities(...) #1

declare dso_local i32 @rdmsrl_safe(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
