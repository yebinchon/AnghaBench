; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_setup.c_octeon_check_cpu_bist.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_setup.c_octeon_check_cpu_bist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [48 x i8] c"Core%d BIST Failure: CacheErr(icache) = 0x%llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Core%d L1 Dcache parity error: CacheErr(dcache) = 0x%llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Core%d BIST Failure: COP0_CVM_MEM_CTL = 0x%llx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @octeon_check_cpu_bist() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = call i32 (...) @cvmx_get_core_num()
  store i32 %4, i32* %1, align 4
  store i64 133143986176, i64* %2, align 8
  %5 = call i64 (...) @read_octeon_c0_icacheerr()
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* %2, align 8
  %8 = and i64 %6, %7
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %0
  %11 = load i32, i32* %1, align 4
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %11, i64 %12)
  br label %14

14:                                               ; preds = %10, %0
  %15 = call i64 (...) @read_octeon_c0_dcacheerr()
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = and i64 %16, 1
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i32, i32* %1, align 4
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %20, i64 %21)
  br label %23

23:                                               ; preds = %19, %14
  store i64 -288230376151711744, i64* %2, align 8
  %24 = call i64 (...) @read_c0_cvmmemctl()
  store i64 %24, i64* %3, align 8
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* %2, align 8
  %27 = and i64 %25, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32, i32* %1, align 4
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %30, i64 %31)
  br label %33

33:                                               ; preds = %29, %23
  %34 = call i32 @write_octeon_c0_dcacheerr(i32 0)
  ret void
}

declare dso_local i32 @cvmx_get_core_num(...) #1

declare dso_local i64 @read_octeon_c0_icacheerr(...) #1

declare dso_local i32 @pr_err(i8*, i32, i64) #1

declare dso_local i64 @read_octeon_c0_dcacheerr(...) #1

declare dso_local i64 @read_c0_cvmmemctl(...) #1

declare dso_local i32 @write_octeon_c0_dcacheerr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
