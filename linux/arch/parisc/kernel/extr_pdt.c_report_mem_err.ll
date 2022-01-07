; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_pdt.c_report_mem_err.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_pdt.c_report_mem_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdc_pat_mem_phys_mem_location = type { i32 }

@PDT_ADDR_PHYS_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"DIMM slot %02x, \00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"PDT: BAD MEMORY at 0x%08lx, %s%s%s-bit error.\0A\00", align 1
@PDT_ADDR_PERM_ERR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"permanent \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PDT_ADDR_SINGLE_ERR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"single\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"multi\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @report_mem_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_mem_err(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pdc_pat_mem_phys_mem_location, align 4
  %4 = alloca i64, align 8
  %5 = alloca [32 x i8], align 16
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = load i64, i64* @PDT_ADDR_PHYS_MASK, align 8
  %8 = and i64 %6, %7
  store i64 %8, i64* %4, align 8
  %9 = call i64 (...) @is_pdc_pat()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @pdc_pat_mem_get_dimm_phys_location(%struct.pdc_pat_mem_phys_mem_location* %3, i64 %12)
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %15 = getelementptr inbounds %struct.pdc_pat_mem_phys_mem_location, %struct.pdc_pat_mem_phys_mem_location* %3, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %20

18:                                               ; preds = %1
  %19 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %19, align 16
  br label %20

20:                                               ; preds = %18, %11
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %23 = load i64, i64* %2, align 8
  %24 = load i64, i64* @PDT_ADDR_PERM_ERR, align 8
  %25 = and i64 %23, %24
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %29 = load i64, i64* %2, align 8
  %30 = load i64, i64* @PDT_ADDR_SINGLE_ERR, align 8
  %31 = and i64 %29, %30
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %35 = call i32 @pr_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %21, i8* %22, i8* %28, i8* %34)
  ret void
}

declare dso_local i64 @is_pdc_pat(...) #1

declare dso_local i32 @pdc_pat_mem_get_dimm_phys_location(%struct.pdc_pat_mem_phys_mem_location*, i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @pr_warn(i8*, i64, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
