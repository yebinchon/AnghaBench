; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_cerr-sb1.c_check_bus_watcher.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_cerr-sb1.c_check_bus_watcher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A_SCD_BUS_ERR_STATUS = common dso_local global i32 0, align 4
@A_BUS_L2_ERRORS = common dso_local global i32 0, align 4
@A_BUS_MEM_IO_ERRORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Bus watcher error counters: %08x %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"\0ALast recorded signature:\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Request %02x from %d, answered by %d with Dcode %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Bus watcher indicates no error\0A\00", align 1
@A_L2_ECC_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_bus_watcher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_bus_watcher() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @A_SCD_BUS_ERR_STATUS, align 4
  %5 = call i32 @IOADDR(i32 %4)
  %6 = call i64 @csr_in32(i32 %5)
  store i64 %6, i64* %1, align 8
  %7 = load i64, i64* %1, align 8
  %8 = and i64 %7, -2147483649
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %34

10:                                               ; preds = %0
  %11 = load i32, i32* @A_BUS_L2_ERRORS, align 4
  %12 = call i32 @IOADDR(i32 %11)
  %13 = call i64 @csr_in32(i32 %12)
  store i64 %13, i64* %2, align 8
  %14 = load i32, i32* @A_BUS_MEM_IO_ERRORS, align 4
  %15 = call i32 @IOADDR(i32 %14)
  %16 = call i64 @csr_in32(i32 %15)
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* %2, align 8
  %18 = load i64, i64* %3, align 8
  %19 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %17, i64 %18)
  %20 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i64, i64* %1, align 8
  %22 = call i32 @G_SCD_BERR_TID(i64 %21)
  %23 = and i32 %22, 63
  %24 = load i64, i64* %1, align 8
  %25 = call i32 @G_SCD_BERR_TID(i64 %24)
  %26 = ashr i32 %25, 6
  %27 = load i64, i64* %1, align 8
  %28 = call i64 @G_SCD_BERR_RID(i64 %27)
  %29 = trunc i64 %28 to i32
  %30 = load i64, i64* %1, align 8
  %31 = call i64 @G_SCD_BERR_DCODE(i64 %30)
  %32 = trunc i64 %31 to i32
  %33 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %23, i32 %26, i32 %29, i32 %32)
  br label %36

34:                                               ; preds = %0
  %35 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %10
  ret void
}

declare dso_local i64 @csr_in32(i32) #1

declare dso_local i32 @IOADDR(i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @G_SCD_BERR_TID(i64) #1

declare dso_local i64 @G_SCD_BERR_RID(i64) #1

declare dso_local i64 @G_SCD_BERR_DCODE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
