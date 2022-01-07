; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_tlb.c_choose_new_asid.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_tlb.c_choose_new_asid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.mm_struct = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@X86_FEATURE_PCID = common dso_local global i32 0, align 4
@cpu_tlbstate = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@TLB_NR_DYN_ASIDS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*, i64, i64*, i32*)* @choose_new_asid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @choose_new_asid(%struct.mm_struct* %0, i64 %1, i64* %2, i32* %3) #0 {
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32, i32* @X86_FEATURE_PCID, align 4
  %11 = call i32 @static_cpu_has(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load i64*, i64** %7, align 8
  store i64 0, i64* %14, align 8
  %15 = load i32*, i32** %8, align 8
  store i32 1, i32* %15, align 4
  br label %71

16:                                               ; preds = %4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cpu_tlbstate, i32 0, i32 2), align 8
  %18 = call i64 @this_cpu_read(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 (...) @clear_asid_other()
  br label %22

22:                                               ; preds = %20, %16
  store i64 0, i64* %9, align 8
  br label %23

23:                                               ; preds = %53, %22
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @TLB_NR_DYN_ASIDS, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %56

27:                                               ; preds = %23
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cpu_tlbstate, i32 0, i32 1), align 8
  %29 = load i64, i64* %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @this_cpu_read(i32 %32)
  %34 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %35 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %33, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  br label %53

40:                                               ; preds = %27
  %41 = load i64, i64* %9, align 8
  %42 = load i64*, i64** %7, align 8
  store i64 %41, i64* %42, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cpu_tlbstate, i32 0, i32 1), align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @this_cpu_read(i32 %47)
  %49 = load i64, i64* %6, align 8
  %50 = icmp slt i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i32*, i32** %8, align 8
  store i32 %51, i32* %52, align 4
  br label %71

53:                                               ; preds = %39
  %54 = load i64, i64* %9, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %9, align 8
  br label %23

56:                                               ; preds = %23
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cpu_tlbstate, i32 0, i32 0), align 8
  %58 = call i64 @this_cpu_add_return(i32 %57, i32 1)
  %59 = sub i64 %58, 1
  %60 = load i64*, i64** %7, align 8
  store i64 %59, i64* %60, align 8
  %61 = load i64*, i64** %7, align 8
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @TLB_NR_DYN_ASIDS, align 8
  %64 = icmp uge i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = load i64*, i64** %7, align 8
  store i64 0, i64* %66, align 8
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cpu_tlbstate, i32 0, i32 0), align 8
  %68 = call i32 @this_cpu_write(i32 %67, i32 1)
  br label %69

69:                                               ; preds = %65, %56
  %70 = load i32*, i32** %8, align 8
  store i32 1, i32* %70, align 4
  br label %71

71:                                               ; preds = %69, %40, %13
  ret void
}

declare dso_local i32 @static_cpu_has(i32) #1

declare dso_local i64 @this_cpu_read(i32) #1

declare dso_local i32 @clear_asid_other(...) #1

declare dso_local i64 @this_cpu_add_return(i32, i32) #1

declare dso_local i32 @this_cpu_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
