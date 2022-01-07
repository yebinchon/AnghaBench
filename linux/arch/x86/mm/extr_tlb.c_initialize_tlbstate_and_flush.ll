; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_tlb.c_initialize_tlbstate_and_flush.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_tlb.c_initialize_tlbstate_and_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__*, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.mm_struct = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }

@cpu_tlbstate = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@init_mm = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@CR3_ADDR_MASK = common dso_local global i64 0, align 8
@X86_FEATURE_PCID = common dso_local global i32 0, align 4
@X86_CR4_PCIDE = common dso_local global i32 0, align 4
@LAST_USER_MM_IBPB = common dso_local global i32 0, align 4
@TLB_NR_DYN_ASIDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initialize_tlbstate_and_flush() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cpu_tlbstate, i32 0, i32 4), align 4
  %6 = call %struct.mm_struct* @this_cpu_read(i32 %5)
  store %struct.mm_struct* %6, %struct.mm_struct** %2, align 8
  %7 = call i32 @atomic64_read(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @init_mm, i32 0, i32 0, i32 0))
  store i32 %7, i32* %3, align 4
  %8 = call i64 (...) @__read_cr3()
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @CR3_ADDR_MASK, align 8
  %11 = and i64 %9, %10
  %12 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %13 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @__pa(i32 %14)
  %16 = icmp ne i64 %11, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load i32, i32* @X86_FEATURE_PCID, align 4
  %20 = call i64 @boot_cpu_has(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %0
  %23 = call i32 (...) @cr4_read_shadow()
  %24 = load i32, i32* @X86_CR4_PCIDE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %22, %0
  %29 = phi i1 [ false, %0 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @WARN_ON(i32 %30)
  %32 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %33 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @build_cr3(i32 %34, i32 0)
  %36 = call i32 @write_cr3(i32 %35)
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cpu_tlbstate, i32 0, i32 3), align 8
  %38 = load i32, i32* @LAST_USER_MM_IBPB, align 4
  %39 = call i32 @this_cpu_write(i32 %37, i32 %38)
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cpu_tlbstate, i32 0, i32 2), align 4
  %41 = call i32 @this_cpu_write(i32 %40, i32 0)
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cpu_tlbstate, i32 0, i32 1), align 8
  %43 = call i32 @this_cpu_write(i32 %42, i32 1)
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cpu_tlbstate, i32 0, i32 0), align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %49 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @this_cpu_write(i32 %47, i32 %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cpu_tlbstate, i32 0, i32 0), align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @this_cpu_write(i32 %56, i32 %57)
  store i32 1, i32* %1, align 4
  br label %59

59:                                               ; preds = %71, %28
  %60 = load i32, i32* %1, align 4
  %61 = load i32, i32* @TLB_NR_DYN_ASIDS, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %59
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cpu_tlbstate, i32 0, i32 0), align 8
  %65 = load i32, i32* %1, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @this_cpu_write(i32 %69, i32 0)
  br label %71

71:                                               ; preds = %63
  %72 = load i32, i32* %1, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %1, align 4
  br label %59

74:                                               ; preds = %59
  ret void
}

declare dso_local %struct.mm_struct* @this_cpu_read(i32) #1

declare dso_local i32 @atomic64_read(i32*) #1

declare dso_local i64 @__read_cr3(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @__pa(i32) #1

declare dso_local i64 @boot_cpu_has(i32) #1

declare dso_local i32 @cr4_read_shadow(...) #1

declare dso_local i32 @write_cr3(i32) #1

declare dso_local i32 @build_cr3(i32, i32) #1

declare dso_local i32 @this_cpu_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
