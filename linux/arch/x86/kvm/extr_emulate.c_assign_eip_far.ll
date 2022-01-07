; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_emulate.c_assign_eip_far.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_emulate.c_assign_eip_far.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_emulate_ctxt = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.x86_emulate_ctxt*, i32, i32*)* }
%struct.desc_struct = type { i64, i64 }

@X86EMUL_MODE_PROT16 = common dso_local global i64 0, align 8
@X86EMUL_MODE_PROT32 = common dso_local global i32 0, align 4
@X86EMUL_CONTINUE = common dso_local global i32 0, align 4
@EFER_LMA = common dso_local global i32 0, align 4
@MSR_EFER = common dso_local global i32 0, align 4
@X86EMUL_MODE_PROT64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86_emulate_ctxt*, i32, %struct.desc_struct*)* @assign_eip_far to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assign_eip_far(%struct.x86_emulate_ctxt* %0, i32 %1, %struct.desc_struct* %2) #0 {
  %4 = alloca %struct.x86_emulate_ctxt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.desc_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.desc_struct* %2, %struct.desc_struct** %6, align 8
  %9 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %10 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* @X86EMUL_MODE_PROT16, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @X86EMUL_MODE_PROT32, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %16, %3
  %21 = load %struct.desc_struct*, %struct.desc_struct** %6, align 8
  %22 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @X86EMUL_MODE_PROT32, align 4
  %27 = sext i32 %26 to i64
  br label %30

28:                                               ; preds = %20
  %29 = load i64, i64* @X86EMUL_MODE_PROT16, align 8
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi i64 [ %27, %25 ], [ %29, %28 ]
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %30, %16
  %34 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @assign_eip(%struct.x86_emulate_ctxt* %34, i32 %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @X86EMUL_CONTINUE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %44 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %41, %33
  %46 = load i32, i32* %8, align 4
  ret i32 %46
}

declare dso_local i32 @assign_eip(%struct.x86_emulate_ctxt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
