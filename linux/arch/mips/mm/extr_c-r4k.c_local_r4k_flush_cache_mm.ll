; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r4k.c_local_r4k_flush_cache_mm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r4k.c_local_r4k_flush_cache_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@R4K_INDEX = common dso_local global i32 0, align 4
@CPU_R4000SC = common dso_local global i64 0, align 8
@CPU_R4000MC = common dso_local global i64 0, align 8
@CPU_R4400SC = common dso_local global i64 0, align 8
@CPU_R4400MC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @local_r4k_flush_cache_mm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @local_r4k_flush_cache_mm(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mm_struct*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.mm_struct*
  store %struct.mm_struct* %5, %struct.mm_struct** %3, align 8
  %6 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %7 = load i32, i32* @R4K_INDEX, align 4
  %8 = call i32 @has_valid_asid(%struct.mm_struct* %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %31

11:                                               ; preds = %1
  %12 = call i64 (...) @current_cpu_type()
  %13 = load i64, i64* @CPU_R4000SC, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %27, label %15

15:                                               ; preds = %11
  %16 = call i64 (...) @current_cpu_type()
  %17 = load i64, i64* @CPU_R4000MC, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = call i64 (...) @current_cpu_type()
  %21 = load i64, i64* @CPU_R4400SC, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = call i64 (...) @current_cpu_type()
  %25 = load i64, i64* @CPU_R4400MC, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %19, %15, %11
  %28 = call i32 (...) @r4k_blast_scache()
  br label %31

29:                                               ; preds = %23
  %30 = call i32 (...) @r4k_blast_dcache()
  br label %31

31:                                               ; preds = %29, %27, %10
  ret void
}

declare dso_local i32 @has_valid_asid(%struct.mm_struct*, i32) #1

declare dso_local i64 @current_cpu_type(...) #1

declare dso_local i32 @r4k_blast_scache(...) #1

declare dso_local i32 @r4k_blast_dcache(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
