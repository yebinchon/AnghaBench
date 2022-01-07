; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_io_apic.c_ioapic_read_entry.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_io_apic.c_ioapic_read_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IO_APIC_route_entry = type { i32 }
%union.entry_union = type { %struct.IO_APIC_route_entry }

@ioapic_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ioapic_read_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioapic_read_entry(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.IO_APIC_route_entry, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %union.entry_union, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.IO_APIC_route_entry, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i64, i64* %7, align 8
  %10 = call i32 @raw_spin_lock_irqsave(i32* @ioapic_lock, i64 %9)
  %11 = bitcast %union.entry_union* %6 to %struct.IO_APIC_route_entry*
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @__ioapic_read_entry(i32 %12, i32 %13)
  %15 = getelementptr inbounds %struct.IO_APIC_route_entry, %struct.IO_APIC_route_entry* %8, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = bitcast %struct.IO_APIC_route_entry* %11 to i8*
  %17 = bitcast %struct.IO_APIC_route_entry* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 4, i1 false)
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @raw_spin_unlock_irqrestore(i32* @ioapic_lock, i64 %18)
  %20 = bitcast %union.entry_union* %6 to %struct.IO_APIC_route_entry*
  %21 = bitcast %struct.IO_APIC_route_entry* %3 to i8*
  %22 = bitcast %struct.IO_APIC_route_entry* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  %23 = getelementptr inbounds %struct.IO_APIC_route_entry, %struct.IO_APIC_route_entry* %3, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  ret i32 %24
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__ioapic_read_entry(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
