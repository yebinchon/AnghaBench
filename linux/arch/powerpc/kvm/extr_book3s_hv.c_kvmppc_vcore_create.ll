; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_vcore_create.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_vcore_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_vcore = type { i32, i32, %struct.kvm*, i32, i32, i32, i32, i32 }
%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@TB_NIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kvmppc_vcore* (%struct.kvm*, i32)* @kvmppc_vcore_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kvmppc_vcore* @kvmppc_vcore_create(%struct.kvm* %0, i32 %1) #0 {
  %3 = alloca %struct.kvmppc_vcore*, align 8
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvmppc_vcore*, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.kvmppc_vcore* @kzalloc(i32 40, i32 %7)
  store %struct.kvmppc_vcore* %8, %struct.kvmppc_vcore** %6, align 8
  %9 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %6, align 8
  %10 = icmp eq %struct.kvmppc_vcore* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.kvmppc_vcore* null, %struct.kvmppc_vcore** %3, align 8
  br label %41

12:                                               ; preds = %2
  %13 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %6, align 8
  %14 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %13, i32 0, i32 7
  %15 = call i32 @spin_lock_init(i32* %14)
  %16 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %6, align 8
  %17 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %16, i32 0, i32 6
  %18 = call i32 @spin_lock_init(i32* %17)
  %19 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %6, align 8
  %20 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %19, i32 0, i32 5
  %21 = call i32 @init_swait_queue_head(i32* %20)
  %22 = load i32, i32* @TB_NIL, align 4
  %23 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %6, align 8
  %24 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  %25 = load %struct.kvm*, %struct.kvm** %4, align 8
  %26 = getelementptr inbounds %struct.kvm, %struct.kvm* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %6, align 8
  %30 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %6, align 8
  %33 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.kvm*, %struct.kvm** %4, align 8
  %35 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %6, align 8
  %36 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %35, i32 0, i32 2
  store %struct.kvm* %34, %struct.kvm** %36, align 8
  %37 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %6, align 8
  %38 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %37, i32 0, i32 1
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %6, align 8
  store %struct.kvmppc_vcore* %40, %struct.kvmppc_vcore** %3, align 8
  br label %41

41:                                               ; preds = %12, %11
  %42 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %3, align 8
  ret %struct.kvmppc_vcore* %42
}

declare dso_local %struct.kvmppc_vcore* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_swait_queue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
