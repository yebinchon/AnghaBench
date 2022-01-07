; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_fault.c_access_error.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_fault.c_access_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }

@X86_PF_PK = common dso_local global i64 0, align 8
@X86_PF_WRITE = common dso_local global i64 0, align 8
@X86_PF_INSTR = common dso_local global i64 0, align 8
@VM_WRITE = common dso_local global i32 0, align 4
@X86_PF_PROT = common dso_local global i64 0, align 8
@VM_READ = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.vm_area_struct*)* @access_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @access_error(i64 %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @X86_PF_PK, align 8
  %9 = and i64 %7, %8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %67

12:                                               ; preds = %2
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @X86_PF_WRITE, align 8
  %16 = and i64 %14, %15
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @X86_PF_INSTR, align 8
  %19 = and i64 %17, %18
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @arch_vma_access_permitted(%struct.vm_area_struct* %13, i64 %16, i64 %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %67

24:                                               ; preds = %12
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @X86_PF_WRITE, align 8
  %27 = and i64 %25, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %31 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @VM_WRITE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %67

41:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %67

42:                                               ; preds = %24
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* @X86_PF_PROT, align 8
  %45 = and i64 %43, %44
  %46 = trunc i64 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %67

50:                                               ; preds = %42
  %51 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %52 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @VM_READ, align 4
  %55 = load i32, i32* @VM_EXEC, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @VM_WRITE, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %53, %58
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %50
  store i32 1, i32* %3, align 4
  br label %67

66:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %65, %49, %41, %40, %23, %11
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @arch_vma_access_permitted(%struct.vm_area_struct*, i64, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
