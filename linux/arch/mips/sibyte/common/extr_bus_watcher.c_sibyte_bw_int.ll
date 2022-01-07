; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sibyte/common/extr_bus_watcher.c_sibyte_bw_int.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sibyte/common/extr_bus_watcher.c_sibyte_bw_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bw_stats_struct = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@A_SCD_BUS_ERR_STATUS = common dso_local global i32 0, align 4
@A_BUS_L2_ERRORS = common dso_local global i32 0, align 4
@A_BUS_MEM_IO_ERRORS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@A_SCD_TRACE_CFG = common dso_local global i32 0, align 4
@A_SCD_TRACE_READ = common dso_local global i32 0, align 4
@M_SCD_TRACE_CFG_FREEZE = common dso_local global i32 0, align 4
@M_SCD_TRACE_CFG_RESET = common dso_local global i32 0, align 4
@M_SCD_TRACE_CFG_START = common dso_local global i32 0, align 4
@M_SCD_TRACE_CFG_START_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sibyte_bw_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sibyte_bw_int(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bw_stats_struct*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.bw_stats_struct*
  store %struct.bw_stats_struct* %8, %struct.bw_stats_struct** %5, align 8
  %9 = load i32, i32* @A_SCD_BUS_ERR_STATUS, align 4
  %10 = call i32 @IOADDR(i32 %9)
  %11 = call i8* @csr_in32(i32 %10)
  %12 = load %struct.bw_stats_struct*, %struct.bw_stats_struct** %5, align 8
  %13 = getelementptr inbounds %struct.bw_stats_struct, %struct.bw_stats_struct* %12, i32 0, i32 10
  store i8* %11, i8** %13, align 8
  %14 = load %struct.bw_stats_struct*, %struct.bw_stats_struct** %5, align 8
  %15 = getelementptr inbounds %struct.bw_stats_struct, %struct.bw_stats_struct* %14, i32 0, i32 9
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @A_BUS_L2_ERRORS, align 4
  %17 = call i32 @IOADDR(i32 %16)
  %18 = call i8* @csr_in32(i32 %17)
  %19 = ptrtoint i8* %18 to i64
  store i64 %19, i64* %6, align 8
  %20 = load %struct.bw_stats_struct*, %struct.bw_stats_struct** %5, align 8
  %21 = getelementptr inbounds %struct.bw_stats_struct, %struct.bw_stats_struct* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @G_SCD_L2ECC_CORR_D(i64 %22)
  %24 = load %struct.bw_stats_struct*, %struct.bw_stats_struct** %5, align 8
  %25 = getelementptr inbounds %struct.bw_stats_struct, %struct.bw_stats_struct* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %23
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %25, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @G_SCD_L2ECC_BAD_D(i64 %30)
  %32 = load %struct.bw_stats_struct*, %struct.bw_stats_struct** %5, align 8
  %33 = getelementptr inbounds %struct.bw_stats_struct, %struct.bw_stats_struct* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %31
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 4
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @G_SCD_L2ECC_CORR_T(i64 %38)
  %40 = load %struct.bw_stats_struct*, %struct.bw_stats_struct** %5, align 8
  %41 = getelementptr inbounds %struct.bw_stats_struct, %struct.bw_stats_struct* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %39
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %41, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i64 @G_SCD_L2ECC_BAD_T(i64 %46)
  %48 = load %struct.bw_stats_struct*, %struct.bw_stats_struct** %5, align 8
  %49 = getelementptr inbounds %struct.bw_stats_struct, %struct.bw_stats_struct* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %47
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %49, align 4
  %54 = load i32, i32* @A_BUS_L2_ERRORS, align 4
  %55 = call i32 @IOADDR(i32 %54)
  %56 = call i32 @csr_out32(i32 0, i32 %55)
  %57 = load i32, i32* @A_BUS_MEM_IO_ERRORS, align 4
  %58 = call i32 @IOADDR(i32 %57)
  %59 = call i8* @csr_in32(i32 %58)
  %60 = ptrtoint i8* %59 to i64
  store i64 %60, i64* %6, align 8
  %61 = load %struct.bw_stats_struct*, %struct.bw_stats_struct** %5, align 8
  %62 = getelementptr inbounds %struct.bw_stats_struct, %struct.bw_stats_struct* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load i64, i64* %6, align 8
  %64 = call i64 @G_SCD_MEM_ECC_CORR(i64 %63)
  %65 = load %struct.bw_stats_struct*, %struct.bw_stats_struct** %5, align 8
  %66 = getelementptr inbounds %struct.bw_stats_struct, %struct.bw_stats_struct* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %64
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %66, align 8
  %71 = load i64, i64* %6, align 8
  %72 = call i64 @G_SCD_MEM_ECC_BAD(i64 %71)
  %73 = load %struct.bw_stats_struct*, %struct.bw_stats_struct** %5, align 8
  %74 = getelementptr inbounds %struct.bw_stats_struct, %struct.bw_stats_struct* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %72
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %74, align 4
  %79 = load i64, i64* %6, align 8
  %80 = call i64 @G_SCD_MEM_BUSERR(i64 %79)
  %81 = load %struct.bw_stats_struct*, %struct.bw_stats_struct** %5, align 8
  %82 = getelementptr inbounds %struct.bw_stats_struct, %struct.bw_stats_struct* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %80
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %82, align 8
  %87 = load i32, i32* @A_BUS_MEM_IO_ERRORS, align 4
  %88 = call i32 @IOADDR(i32 %87)
  %89 = call i32 @csr_out32(i32 0, i32 %88)
  %90 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %90
}

declare dso_local i8* @csr_in32(i32) #1

declare dso_local i32 @IOADDR(i32) #1

declare dso_local i64 @G_SCD_L2ECC_CORR_D(i64) #1

declare dso_local i64 @G_SCD_L2ECC_BAD_D(i64) #1

declare dso_local i64 @G_SCD_L2ECC_CORR_T(i64) #1

declare dso_local i64 @G_SCD_L2ECC_BAD_T(i64) #1

declare dso_local i32 @csr_out32(i32, i32) #1

declare dso_local i64 @G_SCD_MEM_ECC_CORR(i64) #1

declare dso_local i64 @G_SCD_MEM_ECC_BAD(i64) #1

declare dso_local i64 @G_SCD_MEM_BUSERR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
