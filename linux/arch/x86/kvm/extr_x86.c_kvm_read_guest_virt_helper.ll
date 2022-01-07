; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_read_guest_virt_helper.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_read_guest_virt_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.kvm_vcpu*, i32, i32, %struct.x86_exception*)* }
%struct.x86_exception = type { i32 }

@X86EMUL_CONTINUE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@UNMAPPED_GVA = common dso_local global i32 0, align 4
@X86EMUL_PROPAGATE_FAULT = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@X86EMUL_IO_NEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, %struct.kvm_vcpu*, i32, %struct.x86_exception*)* @kvm_read_guest_virt_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_read_guest_virt_helper(i32 %0, i8* %1, i32 %2, %struct.kvm_vcpu* %3, i32 %4, %struct.x86_exception* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.kvm_vcpu*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.x86_exception*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.kvm_vcpu* %3, %struct.kvm_vcpu** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.x86_exception* %5, %struct.x86_exception** %13, align 8
  %20 = load i8*, i8** %9, align 8
  store i8* %20, i8** %14, align 8
  %21 = load i32, i32* @X86EMUL_CONTINUE, align 4
  store i32 %21, i32* %15, align 4
  br label %22

22:                                               ; preds = %64, %6
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %75

25:                                               ; preds = %22
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %11, align 8
  %27 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32 (%struct.kvm_vcpu*, i32, i32, %struct.x86_exception*)*, i32 (%struct.kvm_vcpu*, i32, i32, %struct.x86_exception*)** %30, align 8
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %11, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.x86_exception*, %struct.x86_exception** %13, align 8
  %36 = call i32 %31(%struct.kvm_vcpu* %32, i32 %33, i32 %34, %struct.x86_exception* %35)
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = sub nsw i32 %38, 1
  %40 = and i32 %37, %39
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @PAGE_SIZE, align 4
  %43 = load i32, i32* %17, align 4
  %44 = sub i32 %42, %43
  %45 = call i32 @min(i32 %41, i32 %44)
  store i32 %45, i32* %18, align 4
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* @UNMAPPED_GVA, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %25
  %50 = load i32, i32* @X86EMUL_PROPAGATE_FAULT, align 4
  store i32 %50, i32* %7, align 4
  br label %78

51:                                               ; preds = %25
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %11, align 8
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* @PAGE_SHIFT, align 4
  %55 = ashr i32 %53, %54
  %56 = load i8*, i8** %14, align 8
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %18, align 4
  %59 = call i32 @kvm_vcpu_read_guest_page(%struct.kvm_vcpu* %52, i32 %55, i8* %56, i32 %57, i32 %58)
  store i32 %59, i32* %19, align 4
  %60 = load i32, i32* %19, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %51
  %63 = load i32, i32* @X86EMUL_IO_NEEDED, align 4
  store i32 %63, i32* %15, align 4
  br label %76

64:                                               ; preds = %51
  %65 = load i32, i32* %18, align 4
  %66 = load i32, i32* %10, align 4
  %67 = sub i32 %66, %65
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %18, align 4
  %69 = load i8*, i8** %14, align 8
  %70 = zext i32 %68 to i64
  %71 = getelementptr i8, i8* %69, i64 %70
  store i8* %71, i8** %14, align 8
  %72 = load i32, i32* %18, align 4
  %73 = load i32, i32* %8, align 4
  %74 = add i32 %73, %72
  store i32 %74, i32* %8, align 4
  br label %22

75:                                               ; preds = %22
  br label %76

76:                                               ; preds = %75, %62
  %77 = load i32, i32* %15, align 4
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %76, %49
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @kvm_vcpu_read_guest_page(%struct.kvm_vcpu*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
