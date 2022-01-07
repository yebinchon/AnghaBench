; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_fetch_guest_virt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_fetch_guest_virt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.kvm_vcpu*)* }
%struct.kvm_vcpu = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.kvm_vcpu*, i32, i32, %struct.x86_exception*)* }
%struct.x86_exception = type { i32 }
%struct.x86_emulate_ctxt = type { i32 }

@kvm_x86_ops = common dso_local global %struct.TYPE_6__* null, align 8
@PFERR_USER_MASK = common dso_local global i32 0, align 4
@PFERR_FETCH_MASK = common dso_local global i32 0, align 4
@UNMAPPED_GVA = common dso_local global i32 0, align 4
@X86EMUL_PROPAGATE_FAULT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@X86EMUL_IO_NEEDED = common dso_local global i32 0, align 4
@X86EMUL_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86_emulate_ctxt*, i32, i8*, i32, %struct.x86_exception*)* @kvm_fetch_guest_virt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_fetch_guest_virt(%struct.x86_emulate_ctxt* %0, i32 %1, i8* %2, i32 %3, %struct.x86_exception* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.x86_emulate_ctxt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.x86_exception*, align 8
  %12 = alloca %struct.kvm_vcpu*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.x86_exception* %4, %struct.x86_exception** %11, align 8
  %17 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %7, align 8
  %18 = call %struct.kvm_vcpu* @emul_to_vcpu(%struct.x86_emulate_ctxt* %17)
  store %struct.kvm_vcpu* %18, %struct.kvm_vcpu** %12, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kvm_x86_ops, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %20, align 8
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %23 = call i32 %21(%struct.kvm_vcpu* %22)
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* @PFERR_USER_MASK, align 4
  br label %28

27:                                               ; preds = %5
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ]
  store i32 %29, i32* %13, align 4
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %31 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32 (%struct.kvm_vcpu*, i32, i32, %struct.x86_exception*)*, i32 (%struct.kvm_vcpu*, i32, i32, %struct.x86_exception*)** %34, align 8
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @PFERR_FETCH_MASK, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.x86_exception*, %struct.x86_exception** %11, align 8
  %42 = call i32 %35(%struct.kvm_vcpu* %36, i32 %37, i32 %40, %struct.x86_exception* %41)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* @UNMAPPED_GVA, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %28
  %50 = load i32, i32* @X86EMUL_PROPAGATE_FAULT, align 4
  store i32 %50, i32* %6, align 4
  br label %86

51:                                               ; preds = %28
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @PAGE_SIZE, align 4
  %54 = sub nsw i32 %53, 1
  %55 = and i32 %52, %54
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %10, align 4
  %58 = add i32 %56, %57
  %59 = load i32, i32* @PAGE_SIZE, align 4
  %60 = icmp ugt i32 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i64 @WARN_ON(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %51
  %65 = load i32, i32* @PAGE_SIZE, align 4
  %66 = load i32, i32* %14, align 4
  %67 = sub i32 %65, %66
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %64, %51
  %69 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %70 = load i32, i32* %16, align 4
  %71 = load i32, i32* @PAGE_SHIFT, align 4
  %72 = ashr i32 %70, %71
  %73 = load i8*, i8** %9, align 8
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @kvm_vcpu_read_guest_page(%struct.kvm_vcpu* %69, i32 %72, i8* %73, i32 %74, i32 %75)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp slt i32 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i64 @unlikely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %68
  %83 = load i32, i32* @X86EMUL_IO_NEEDED, align 4
  store i32 %83, i32* %6, align 4
  br label %86

84:                                               ; preds = %68
  %85 = load i32, i32* @X86EMUL_CONTINUE, align 4
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %84, %82, %49
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local %struct.kvm_vcpu* @emul_to_vcpu(%struct.x86_emulate_ctxt*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @kvm_vcpu_read_guest_page(%struct.kvm_vcpu*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
