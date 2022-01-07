; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/lib/extr_r3k_dump_tlb.c_dump_tlb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/lib/extr_r3k_dump_tlb.c_dump_tlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_cpu_data = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@KSEG0 = common dso_local global i64 0, align 8
@R3K_ENTRYLO_G = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"Index: %2d \00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"va=%08lx asid=%08lx  [pa=%06lx n=%d d=%d v=%d g=%d]\00", align 1
@R3K_ENTRYLO_N = common dso_local global i64 0, align 8
@R3K_ENTRYLO_D = common dso_local global i64 0, align 8
@R3K_ENTRYLO_V = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @dump_tlb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_tlb(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = call i64 @cpu_asid_mask(i32* @current_cpu_data)
  store i64 %10, i64* %9, align 8
  %11 = call i64 (...) @read_c0_entryhi()
  %12 = load i64, i64* %9, align 8
  %13 = and i64 %11, %12
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %3, align 4
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %81, %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %84

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = shl i32 %21, 8
  %23 = call i32 @write_c0_index(i32 %22)
  call void asm sideeffect ".set\09noreorder\0A\09tlbr\0A\09nop\0A\09.set\09reorder", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %24 = call i64 (...) @read_c0_entryhi()
  store i64 %24, i64* %7, align 8
  %25 = call i64 (...) @read_c0_entrylo0()
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @PAGE_MASK, align 8
  %28 = and i64 %26, %27
  %29 = load i64, i64* @KSEG0, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %80

31:                                               ; preds = %20
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @R3K_ENTRYLO_G, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %31
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %9, align 8
  %39 = and i64 %37, %38
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = icmp eq i64 %39, %41
  br i1 %42, label %43, label %80

43:                                               ; preds = %36, %31
  %44 = load i32, i32* %5, align 4
  %45 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @PAGE_MASK, align 8
  %48 = and i64 %46, %47
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %9, align 8
  %51 = and i64 %49, %50
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* @PAGE_MASK, align 8
  %54 = and i64 %52, %53
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* @R3K_ENTRYLO_N, align 8
  %57 = and i64 %55, %56
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 1, i32 0
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* @R3K_ENTRYLO_D, align 8
  %63 = and i64 %61, %62
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 1, i32 0
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* @R3K_ENTRYLO_V, align 8
  %69 = and i64 %67, %68
  %70 = icmp ne i64 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 1, i32 0
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* @R3K_ENTRYLO_G, align 8
  %75 = and i64 %73, %74
  %76 = icmp ne i64 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 1, i32 0
  %79 = call i32 @pr_cont(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %48, i64 %51, i64 %54, i32 %60, i32 %66, i32 %72, i32 %78)
  br label %80

80:                                               ; preds = %43, %36, %20
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %16

84:                                               ; preds = %16
  %85 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @write_c0_entryhi(i32 %86)
  ret void
}

declare dso_local i64 @cpu_asid_mask(i32*) #1

declare dso_local i64 @read_c0_entryhi(...) #1

declare dso_local i32 @write_c0_index(i32) #1

declare dso_local i64 @read_c0_entrylo0(...) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @pr_cont(i8*, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @write_c0_entryhi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 931, i32 949, i32 963, i32 976}
