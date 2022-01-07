; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_err_marvel.c_marvel_process_io_error.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_err_marvel.c_marvel_process_io_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ev7_lf_subpackets = type { i64, %struct.ev7_pal_io_subpacket*, i32 }
%struct.ev7_pal_io_subpacket = type { i64, %struct.TYPE_2__*, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@MCHK_DISPOSITION_UNKNOWN_ERROR = common dso_local global i32 0, align 4
@MCHK_DISPOSITION_REPORT = common dso_local global i32 0, align 4
@IO7_NUM_PORTS = common dso_local global i32 0, align 4
@IO7__PO7_ERRSUM__ERR_MASK = common dso_local global i32 0, align 4
@err_print_prefix = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ev7_lf_subpackets*, i32)* @marvel_process_io_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marvel_process_io_error(%struct.ev7_lf_subpackets* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ev7_lf_subpackets*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ev7_lf_subpackets* %0, %struct.ev7_lf_subpackets** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @MCHK_DISPOSITION_UNKNOWN_ERROR, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.ev7_lf_subpackets*, %struct.ev7_lf_subpackets** %4, align 8
  %9 = getelementptr inbounds %struct.ev7_lf_subpackets, %struct.ev7_lf_subpackets* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.ev7_lf_subpackets*, %struct.ev7_lf_subpackets** %4, align 8
  %14 = getelementptr inbounds %struct.ev7_lf_subpackets, %struct.ev7_lf_subpackets* %13, i32 0, i32 1
  %15 = load %struct.ev7_pal_io_subpacket*, %struct.ev7_pal_io_subpacket** %14, align 8
  %16 = icmp ne %struct.ev7_pal_io_subpacket* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %12, %2
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %81

19:                                               ; preds = %12
  %20 = load %struct.ev7_lf_subpackets*, %struct.ev7_lf_subpackets** %4, align 8
  %21 = getelementptr inbounds %struct.ev7_lf_subpackets, %struct.ev7_lf_subpackets* %20, i32 0, i32 1
  %22 = load %struct.ev7_pal_io_subpacket*, %struct.ev7_pal_io_subpacket** %21, align 8
  %23 = getelementptr inbounds %struct.ev7_pal_io_subpacket, %struct.ev7_pal_io_subpacket* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = and i64 %24, 4294967296
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %71, label %27

27:                                               ; preds = %19
  %28 = load %struct.ev7_lf_subpackets*, %struct.ev7_lf_subpackets** %4, align 8
  %29 = getelementptr inbounds %struct.ev7_lf_subpackets, %struct.ev7_lf_subpackets* %28, i32 0, i32 1
  %30 = load %struct.ev7_pal_io_subpacket*, %struct.ev7_pal_io_subpacket** %29, align 8
  %31 = getelementptr inbounds %struct.ev7_pal_io_subpacket, %struct.ev7_pal_io_subpacket* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ev7_lf_subpackets*, %struct.ev7_lf_subpackets** %4, align 8
  %34 = getelementptr inbounds %struct.ev7_lf_subpackets, %struct.ev7_lf_subpackets* %33, i32 0, i32 1
  %35 = load %struct.ev7_pal_io_subpacket*, %struct.ev7_pal_io_subpacket** %34, align 8
  %36 = getelementptr inbounds %struct.ev7_pal_io_subpacket, %struct.ev7_pal_io_subpacket* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = or i64 %32, %40
  %42 = load %struct.ev7_lf_subpackets*, %struct.ev7_lf_subpackets** %4, align 8
  %43 = getelementptr inbounds %struct.ev7_lf_subpackets, %struct.ev7_lf_subpackets* %42, i32 0, i32 1
  %44 = load %struct.ev7_pal_io_subpacket*, %struct.ev7_pal_io_subpacket** %43, align 8
  %45 = getelementptr inbounds %struct.ev7_pal_io_subpacket, %struct.ev7_pal_io_subpacket* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = or i64 %41, %49
  %51 = load %struct.ev7_lf_subpackets*, %struct.ev7_lf_subpackets** %4, align 8
  %52 = getelementptr inbounds %struct.ev7_lf_subpackets, %struct.ev7_lf_subpackets* %51, i32 0, i32 1
  %53 = load %struct.ev7_pal_io_subpacket*, %struct.ev7_pal_io_subpacket** %52, align 8
  %54 = getelementptr inbounds %struct.ev7_pal_io_subpacket, %struct.ev7_pal_io_subpacket* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = or i64 %50, %58
  %60 = load %struct.ev7_lf_subpackets*, %struct.ev7_lf_subpackets** %4, align 8
  %61 = getelementptr inbounds %struct.ev7_lf_subpackets, %struct.ev7_lf_subpackets* %60, i32 0, i32 1
  %62 = load %struct.ev7_pal_io_subpacket*, %struct.ev7_pal_io_subpacket** %61, align 8
  %63 = getelementptr inbounds %struct.ev7_pal_io_subpacket, %struct.ev7_pal_io_subpacket* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 3
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = or i64 %59, %67
  %69 = and i64 %68, -9223372036854775808
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %27, %19
  %72 = load %struct.ev7_lf_subpackets*, %struct.ev7_lf_subpackets** %4, align 8
  %73 = call i32 @marvel_find_io7_with_error(%struct.ev7_lf_subpackets* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %3, align 4
  br label %81

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %77, %27
  %79 = load i32, i32* @MCHK_DISPOSITION_REPORT, align 4
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %78, %75, %17
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @marvel_find_io7_with_error(%struct.ev7_lf_subpackets*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
