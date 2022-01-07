; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xics.c_kvmppc_xics_set_xive.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xics.c_kvmppc_xics_set_xive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvmppc_xics* }
%struct.kvmppc_xics = type { i32 }
%struct.kvmppc_icp = type { i32 }
%struct.kvmppc_ics = type { %struct.ics_irq_state* }
%struct.ics_irq_state = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"set_xive %#x server %#x prio %#x MP:%d RS:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_xics_set_xive(%struct.kvm* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.kvmppc_xics*, align 8
  %11 = alloca %struct.kvmppc_icp*, align 8
  %12 = alloca %struct.kvmppc_ics*, align 8
  %13 = alloca %struct.ics_irq_state*, align 8
  %14 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.kvm*, %struct.kvm** %6, align 8
  %16 = getelementptr inbounds %struct.kvm, %struct.kvm* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %17, align 8
  store %struct.kvmppc_xics* %18, %struct.kvmppc_xics** %10, align 8
  %19 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %10, align 8
  %20 = icmp ne %struct.kvmppc_xics* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %72

24:                                               ; preds = %4
  %25 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %10, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call %struct.kvmppc_ics* @kvmppc_xics_find_ics(%struct.kvmppc_xics* %25, i32 %26, i64* %14)
  store %struct.kvmppc_ics* %27, %struct.kvmppc_ics** %12, align 8
  %28 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %12, align 8
  %29 = icmp ne %struct.kvmppc_ics* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %72

33:                                               ; preds = %24
  %34 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %12, align 8
  %35 = getelementptr inbounds %struct.kvmppc_ics, %struct.kvmppc_ics* %34, i32 0, i32 0
  %36 = load %struct.ics_irq_state*, %struct.ics_irq_state** %35, align 8
  %37 = load i64, i64* %14, align 8
  %38 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %36, i64 %37
  store %struct.ics_irq_state* %38, %struct.ics_irq_state** %13, align 8
  %39 = load %struct.kvm*, %struct.kvm** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call %struct.kvmppc_icp* @kvmppc_xics_find_server(%struct.kvm* %39, i32 %40)
  store %struct.kvmppc_icp* %41, %struct.kvmppc_icp** %11, align 8
  %42 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %11, align 8
  %43 = icmp ne %struct.kvmppc_icp* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %33
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %72

47:                                               ; preds = %33
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.ics_irq_state*, %struct.ics_irq_state** %13, align 8
  %52 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ics_irq_state*, %struct.ics_irq_state** %13, align 8
  %55 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @XICS_DBG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49, i32 %50, i32 %53, i32 %56)
  %58 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %10, align 8
  %59 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %12, align 8
  %60 = load %struct.ics_irq_state*, %struct.ics_irq_state** %13, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i64 @write_xive(%struct.kvmppc_xics* %58, %struct.kvmppc_ics* %59, %struct.ics_irq_state* %60, i32 %61, i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %47
  %67 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %10, align 8
  %68 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %11, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @icp_deliver_irq(%struct.kvmppc_xics* %67, %struct.kvmppc_icp* %68, i32 %69, i32 0)
  br label %71

71:                                               ; preds = %66, %47
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %71, %44, %30, %21
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local %struct.kvmppc_ics* @kvmppc_xics_find_ics(%struct.kvmppc_xics*, i32, i64*) #1

declare dso_local %struct.kvmppc_icp* @kvmppc_xics_find_server(%struct.kvm*, i32) #1

declare dso_local i32 @XICS_DBG(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @write_xive(%struct.kvmppc_xics*, %struct.kvmppc_ics*, %struct.ics_irq_state*, i32, i32, i32) #1

declare dso_local i32 @icp_deliver_irq(%struct.kvmppc_xics*, %struct.kvmppc_icp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
