; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_set_shared_msr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_set_shared_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.kvm_shared_msrs = type { i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@shared_msrs = common dso_local global i32 0, align 4
@shared_msrs_global = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@kvm_on_user_return = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_set_shared_msr(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvm_shared_msrs*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = call i32 (...) @smp_processor_id()
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @shared_msrs, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call %struct.kvm_shared_msrs* @per_cpu_ptr(i32 %12, i32 %13)
  store %struct.kvm_shared_msrs* %14, %struct.kvm_shared_msrs** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.kvm_shared_msrs*, %struct.kvm_shared_msrs** %9, align 8
  %17 = getelementptr inbounds %struct.kvm_shared_msrs, %struct.kvm_shared_msrs* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = xor i32 %15, %23
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %64

29:                                               ; preds = %3
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.kvm_shared_msrs*, %struct.kvm_shared_msrs** %9, align 8
  %32 = getelementptr inbounds %struct.kvm_shared_msrs, %struct.kvm_shared_msrs* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %30, i32* %37, align 4
  %38 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @shared_msrs_global, i32 0, i32 0), align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @wrmsrl_safe(i32 %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %29
  store i32 1, i32* %4, align 4
  br label %64

48:                                               ; preds = %29
  %49 = load %struct.kvm_shared_msrs*, %struct.kvm_shared_msrs** %9, align 8
  %50 = getelementptr inbounds %struct.kvm_shared_msrs, %struct.kvm_shared_msrs* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @kvm_on_user_return, align 4
  %55 = load %struct.kvm_shared_msrs*, %struct.kvm_shared_msrs** %9, align 8
  %56 = getelementptr inbounds %struct.kvm_shared_msrs, %struct.kvm_shared_msrs* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  %58 = load %struct.kvm_shared_msrs*, %struct.kvm_shared_msrs** %9, align 8
  %59 = getelementptr inbounds %struct.kvm_shared_msrs, %struct.kvm_shared_msrs* %58, i32 0, i32 1
  %60 = call i32 @user_return_notifier_register(%struct.TYPE_5__* %59)
  %61 = load %struct.kvm_shared_msrs*, %struct.kvm_shared_msrs** %9, align 8
  %62 = getelementptr inbounds %struct.kvm_shared_msrs, %struct.kvm_shared_msrs* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  br label %63

63:                                               ; preds = %53, %48
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %47, %28
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local %struct.kvm_shared_msrs* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @wrmsrl_safe(i32, i32) #1

declare dso_local i32 @user_return_notifier_register(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
