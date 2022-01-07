; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xics.c_kvmppc_xics_create_icp.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xics.c_kvmppc_xics_create_icp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_6__, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { %struct.kvmppc_icp* }
%struct.kvmppc_icp = type { i64, %struct.TYPE_5__, %struct.kvm_vcpu* }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MASKED = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"created server for vcpu %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i64)* @kvmppc_xics_create_icp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_xics_create_icp(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.kvmppc_icp*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 2
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %58

17:                                               ; preds = %2
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %19 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %18, i32 0, i32 2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i64 @kvmppc_xics_find_server(%struct.TYPE_8__* %20, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @EEXIST, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %58

27:                                               ; preds = %17
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.kvmppc_icp* @kzalloc(i32 32, i32 %28)
  store %struct.kvmppc_icp* %29, %struct.kvmppc_icp** %6, align 8
  %30 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %31 = icmp ne %struct.kvmppc_icp* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %58

35:                                               ; preds = %27
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %37 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %38 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %37, i32 0, i32 2
  store %struct.kvm_vcpu* %36, %struct.kvm_vcpu** %38, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %41 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load i8*, i8** @MASKED, align 8
  %43 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %44 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i8* %42, i8** %45, align 8
  %46 = load i8*, i8** @MASKED, align 8
  %47 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %48 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i8* %46, i8** %49, align 8
  %50 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %52 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store %struct.kvmppc_icp* %50, %struct.kvmppc_icp** %53, align 8
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %55 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @XICS_DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %35, %32, %24, %14
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @kvmppc_xics_find_server(%struct.TYPE_8__*, i64) #1

declare dso_local %struct.kvmppc_icp* @kzalloc(i32, i32) #1

declare dso_local i32 @XICS_DBG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
