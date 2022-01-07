; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_xen_hvm_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_xen_hvm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.kvm* }
%struct.kvm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64, i64 }

@PAGE_MASK = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32)* @xen_hvm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_hvm_config(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %14 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %13, i32 0, i32 0
  %15 = load %struct.kvm*, %struct.kvm** %14, align 8
  store %struct.kvm* %15, %struct.kvm** %5, align 8
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %17 = call i32 @is_long_mode(%struct.kvm_vcpu* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.kvm*, %struct.kvm** %5, align 8
  %22 = getelementptr inbounds %struct.kvm, %struct.kvm* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i32*
  br label %34

27:                                               ; preds = %2
  %28 = load %struct.kvm*, %struct.kvm** %5, align 8
  %29 = getelementptr inbounds %struct.kvm, %struct.kvm* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i32*
  br label %34

34:                                               ; preds = %27, %20
  %35 = phi i32* [ %26, %20 ], [ %33, %27 ]
  store i32* %35, i32** %7, align 8
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load %struct.kvm*, %struct.kvm** %5, align 8
  %40 = getelementptr inbounds %struct.kvm, %struct.kvm* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  br label %50

44:                                               ; preds = %34
  %45 = load %struct.kvm*, %struct.kvm** %5, align 8
  %46 = getelementptr inbounds %struct.kvm, %struct.kvm* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  br label %50

50:                                               ; preds = %44, %38
  %51 = phi i32 [ %43, %38 ], [ %49, %44 ]
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @PAGE_MASK, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @PAGE_MASK, align 4
  %58 = and i32 %56, %57
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* @E2BIG, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %50
  br label %94

65:                                               ; preds = %50
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %12, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @PAGE_SIZE, align 4
  %71 = mul nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  %74 = load i32, i32* @PAGE_SIZE, align 4
  %75 = call i32* @memdup_user(i32* %73, i32 %74)
  store i32* %75, i32** %11, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = call i64 @IS_ERR(i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %65
  %80 = load i32*, i32** %11, align 8
  %81 = call i32 @PTR_ERR(i32* %80)
  store i32 %81, i32* %12, align 4
  br label %94

82:                                               ; preds = %65
  %83 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* @PAGE_SIZE, align 4
  %87 = call i64 @kvm_vcpu_write_guest(%struct.kvm_vcpu* %83, i32 %84, i32* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %91

90:                                               ; preds = %82
  store i32 0, i32* %12, align 4
  br label %91

91:                                               ; preds = %90, %89
  %92 = load i32*, i32** %11, align 8
  %93 = call i32 @kfree(i32* %92)
  br label %94

94:                                               ; preds = %91, %79, %64
  %95 = load i32, i32* %12, align 4
  ret i32 %95
}

declare dso_local i32 @is_long_mode(%struct.kvm_vcpu*) #1

declare dso_local i32* @memdup_user(i32*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i64 @kvm_vcpu_write_guest(%struct.kvm_vcpu*, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
