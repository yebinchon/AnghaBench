; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_mmu_host.c___write_host_tlbe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_mmu_host.c___write_host_tlbe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_book3e_206_tlb_entry = type { i64, i32, i64, i32 }

@SPRN_MAS0 = common dso_local global i32 0, align 4
@SPRN_MAS1 = common dso_local global i32 0, align 4
@SPRN_MAS2 = common dso_local global i32 0, align 4
@SPRN_MAS3 = common dso_local global i32 0, align 4
@SPRN_MAS7 = common dso_local global i32 0, align 4
@MAS8_TGS = common dso_local global i64 0, align 8
@SPRN_MAS8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_book3e_206_tlb_entry*, i64, i64)* @__write_host_tlbe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__write_host_tlbe(%struct.kvm_book3e_206_tlb_entry* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.kvm_book3e_206_tlb_entry*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.kvm_book3e_206_tlb_entry* %0, %struct.kvm_book3e_206_tlb_entry** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @local_irq_save(i64 %8)
  %10 = load i32, i32* @SPRN_MAS0, align 4
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @mtspr(i32 %10, i64 %11)
  %13 = load i32, i32* @SPRN_MAS1, align 4
  %14 = load %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry** %4, align 8
  %15 = getelementptr inbounds %struct.kvm_book3e_206_tlb_entry, %struct.kvm_book3e_206_tlb_entry* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @mtspr(i32 %13, i64 %16)
  %18 = load i32, i32* @SPRN_MAS2, align 4
  %19 = load %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry** %4, align 8
  %20 = getelementptr inbounds %struct.kvm_book3e_206_tlb_entry, %struct.kvm_book3e_206_tlb_entry* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @mtspr(i32 %18, i64 %21)
  %23 = load i32, i32* @SPRN_MAS3, align 4
  %24 = load %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry** %4, align 8
  %25 = getelementptr inbounds %struct.kvm_book3e_206_tlb_entry, %struct.kvm_book3e_206_tlb_entry* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = call i32 @mtspr(i32 %23, i64 %27)
  %29 = load i32, i32* @SPRN_MAS7, align 4
  %30 = load %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry** %4, align 8
  %31 = getelementptr inbounds %struct.kvm_book3e_206_tlb_entry, %struct.kvm_book3e_206_tlb_entry* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = ashr i32 %32, 32
  %34 = sext i32 %33 to i64
  %35 = call i32 @mtspr(i32 %29, i64 %34)
  call void asm sideeffect "isync; tlbwe", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @local_irq_restore(i64 %36)
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry** %4, align 8
  %40 = getelementptr inbounds %struct.kvm_book3e_206_tlb_entry, %struct.kvm_book3e_206_tlb_entry* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry** %4, align 8
  %43 = getelementptr inbounds %struct.kvm_book3e_206_tlb_entry, %struct.kvm_book3e_206_tlb_entry* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry** %4, align 8
  %46 = getelementptr inbounds %struct.kvm_book3e_206_tlb_entry, %struct.kvm_book3e_206_tlb_entry* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry** %4, align 8
  %49 = getelementptr inbounds %struct.kvm_book3e_206_tlb_entry, %struct.kvm_book3e_206_tlb_entry* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @trace_kvm_booke206_stlb_write(i64 %38, i32 %41, i64 %44, i64 %47, i32 %50)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @mtspr(i32, i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @trace_kvm_booke206_stlb_write(i64, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1104}
