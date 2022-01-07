; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_fault.c_do_protection_exception.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_fault.c_do_protection_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MACHINE_HAS_NX = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@VM_EXEC = common dso_local global i32 0, align 4
@VM_FAULT_BADACCESS = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_protection_exception(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %6 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %7 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %3, align 8
  %9 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %10 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, 512
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %1
  %15 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %16 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %15, i32 0, i32 2
  %17 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %18 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = ashr i32 %19, 16
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @__rewind_psw(i64 %22, i32 %20)
  %24 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %25 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i64 %23, i64* %26, align 8
  br label %27

27:                                               ; preds = %14, %1
  %28 = load i64, i64* %3, align 8
  %29 = and i64 %28, 4
  %30 = icmp ne i64 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %37 = call i32 @do_low_address(%struct.pt_regs* %36)
  br label %80

38:                                               ; preds = %27
  %39 = load i64, i64* @MACHINE_HAS_NX, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i64, i64* %3, align 8
  %43 = and i64 %42, 128
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %41, %38
  %46 = phi i1 [ false, %38 ], [ %44, %41 ]
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %45
  %51 = load i64, i64* %3, align 8
  %52 = load i64, i64* @PAGE_MASK, align 8
  %53 = xor i64 %52, -1
  %54 = and i64 %51, %53
  %55 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %56 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @PAGE_MASK, align 8
  %60 = and i64 %58, %59
  %61 = or i64 %54, %60
  %62 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %63 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load i32, i32* @VM_EXEC, align 4
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* @VM_FAULT_BADACCESS, align 4
  store i32 %65, i32* %5, align 4
  br label %71

66:                                               ; preds = %45
  %67 = load i32, i32* @VM_WRITE, align 4
  store i32 %67, i32* %4, align 4
  %68 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @do_exception(%struct.pt_regs* %68, i32 %69)
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %66, %50
  %72 = load i32, i32* %5, align 4
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @do_fault_error(%struct.pt_regs* %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %35, %75, %71
  ret void
}

declare dso_local i64 @__rewind_psw(i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @do_low_address(%struct.pt_regs*) #1

declare dso_local i32 @do_exception(%struct.pt_regs*, i32) #1

declare dso_local i32 @do_fault_error(%struct.pt_regs*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
