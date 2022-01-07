; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_xive_pre_save_set_queued.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_xive_pre_save_set_queued.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_xive = type { i32 }
%struct.kvmppc_xive_src_block = type { %struct.kvmppc_xive_irq_state* }
%struct.kvmppc_xive_irq_state = type { i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"invalid irq 0x%x in cpu queue!\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Interrupt 0x%x is marked in a queue but P not set !\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvmppc_xive*, i32)* @xive_pre_save_set_queued to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xive_pre_save_set_queued(%struct.kvmppc_xive* %0, i32 %1) #0 {
  %3 = alloca %struct.kvmppc_xive*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvmppc_xive_src_block*, align 8
  %6 = alloca %struct.kvmppc_xive_irq_state*, align 8
  %7 = alloca i64, align 8
  store %struct.kvmppc_xive* %0, %struct.kvmppc_xive** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.kvmppc_xive_src_block* @kvmppc_xive_find_source(%struct.kvmppc_xive* %8, i32 %9, i64* %7)
  store %struct.kvmppc_xive_src_block* %10, %struct.kvmppc_xive_src_block** %5, align 8
  %11 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %5, align 8
  %12 = icmp ne %struct.kvmppc_xive_src_block* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %38

14:                                               ; preds = %2
  %15 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %5, align 8
  %16 = getelementptr inbounds %struct.kvmppc_xive_src_block, %struct.kvmppc_xive_src_block* %15, i32 0, i32 0
  %17 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %16, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %17, i64 %18
  store %struct.kvmppc_xive_irq_state* %19, %struct.kvmppc_xive_irq_state** %6, align 8
  %20 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %6, align 8
  %21 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %14
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %38

27:                                               ; preds = %14
  %28 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %6, align 8
  %29 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %32, %27
  %36 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %6, align 8
  %37 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %24, %13
  ret void
}

declare dso_local %struct.kvmppc_xive_src_block* @kvmppc_xive_find_source(%struct.kvmppc_xive*, i32, i64*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
