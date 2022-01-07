; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_read_dpdes.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_read_dpdes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@do_nothing = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kvm_vcpu*)* @kvmppc_read_dpdes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kvmppc_read_dpdes(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  store i64 0, i64* %8, align 8
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sub nsw i32 %18, 1
  %20 = xor i32 %19, -1
  %21 = and i32 %17, %20
  store i32 %21, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %57, %1
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %62

26:                                               ; preds = %22
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %28 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call %struct.kvm_vcpu* @kvmppc_find_vcpu(%struct.TYPE_4__* %29, i32 %30)
  store %struct.kvm_vcpu* %31, %struct.kvm_vcpu** %7, align 8
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %33 = icmp ne %struct.kvm_vcpu* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  br label %57

35:                                               ; preds = %26
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %37 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @READ_ONCE(i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @do_nothing, align 4
  %45 = call i32 @smp_call_function_single(i32 %43, i32 %44, i32* null, i32 1)
  br label %46

46:                                               ; preds = %42, %35
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %48 = call i64 @kvmppc_doorbell_pending(%struct.kvm_vcpu* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i32, i32* %3, align 4
  %52 = shl i32 1, %51
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %8, align 8
  %55 = or i64 %54, %53
  store i64 %55, i64* %8, align 8
  br label %56

56:                                               ; preds = %50, %46
  br label %57

57:                                               ; preds = %56, %34
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %22

62:                                               ; preds = %22
  %63 = load i64, i64* %8, align 8
  ret i64 %63
}

declare dso_local %struct.kvm_vcpu* @kvmppc_find_vcpu(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @smp_call_function_single(i32, i32, i32*, i32) #1

declare dso_local i64 @kvmppc_doorbell_pending(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
