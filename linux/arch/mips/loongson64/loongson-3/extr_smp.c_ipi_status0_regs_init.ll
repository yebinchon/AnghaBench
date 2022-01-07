; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/loongson64/loongson-3/extr_smp.c_ipi_status0_regs_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/loongson64/loongson-3/extr_smp.c_ipi_status0_regs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SMP_CORE_GROUP0_BASE = common dso_local global i64 0, align 8
@SMP_CORE0_OFFSET = common dso_local global i64 0, align 8
@STATUS0 = common dso_local global i64 0, align 8
@ipi_status0_regs = common dso_local global i8** null, align 8
@SMP_CORE1_OFFSET = common dso_local global i64 0, align 8
@SMP_CORE2_OFFSET = common dso_local global i64 0, align 8
@SMP_CORE3_OFFSET = common dso_local global i64 0, align 8
@SMP_CORE_GROUP1_BASE = common dso_local global i64 0, align 8
@SMP_CORE_GROUP2_BASE = common dso_local global i64 0, align 8
@SMP_CORE_GROUP3_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ipi_status0_regs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipi_status0_regs_init() #0 {
  %1 = load i64, i64* @SMP_CORE_GROUP0_BASE, align 8
  %2 = load i64, i64* @SMP_CORE0_OFFSET, align 8
  %3 = add nsw i64 %1, %2
  %4 = load i64, i64* @STATUS0, align 8
  %5 = add nsw i64 %3, %4
  %6 = inttoptr i64 %5 to i8*
  %7 = load i8**, i8*** @ipi_status0_regs, align 8
  %8 = getelementptr inbounds i8*, i8** %7, i64 0
  store i8* %6, i8** %8, align 8
  %9 = load i64, i64* @SMP_CORE_GROUP0_BASE, align 8
  %10 = load i64, i64* @SMP_CORE1_OFFSET, align 8
  %11 = add nsw i64 %9, %10
  %12 = load i64, i64* @STATUS0, align 8
  %13 = add nsw i64 %11, %12
  %14 = inttoptr i64 %13 to i8*
  %15 = load i8**, i8*** @ipi_status0_regs, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  store i8* %14, i8** %16, align 8
  %17 = load i64, i64* @SMP_CORE_GROUP0_BASE, align 8
  %18 = load i64, i64* @SMP_CORE2_OFFSET, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i64, i64* @STATUS0, align 8
  %21 = add nsw i64 %19, %20
  %22 = inttoptr i64 %21 to i8*
  %23 = load i8**, i8*** @ipi_status0_regs, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 2
  store i8* %22, i8** %24, align 8
  %25 = load i64, i64* @SMP_CORE_GROUP0_BASE, align 8
  %26 = load i64, i64* @SMP_CORE3_OFFSET, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i64, i64* @STATUS0, align 8
  %29 = add nsw i64 %27, %28
  %30 = inttoptr i64 %29 to i8*
  %31 = load i8**, i8*** @ipi_status0_regs, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 3
  store i8* %30, i8** %32, align 8
  %33 = load i64, i64* @SMP_CORE_GROUP1_BASE, align 8
  %34 = load i64, i64* @SMP_CORE0_OFFSET, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i64, i64* @STATUS0, align 8
  %37 = add nsw i64 %35, %36
  %38 = inttoptr i64 %37 to i8*
  %39 = load i8**, i8*** @ipi_status0_regs, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 4
  store i8* %38, i8** %40, align 8
  %41 = load i64, i64* @SMP_CORE_GROUP1_BASE, align 8
  %42 = load i64, i64* @SMP_CORE1_OFFSET, align 8
  %43 = add nsw i64 %41, %42
  %44 = load i64, i64* @STATUS0, align 8
  %45 = add nsw i64 %43, %44
  %46 = inttoptr i64 %45 to i8*
  %47 = load i8**, i8*** @ipi_status0_regs, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 5
  store i8* %46, i8** %48, align 8
  %49 = load i64, i64* @SMP_CORE_GROUP1_BASE, align 8
  %50 = load i64, i64* @SMP_CORE2_OFFSET, align 8
  %51 = add nsw i64 %49, %50
  %52 = load i64, i64* @STATUS0, align 8
  %53 = add nsw i64 %51, %52
  %54 = inttoptr i64 %53 to i8*
  %55 = load i8**, i8*** @ipi_status0_regs, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 6
  store i8* %54, i8** %56, align 8
  %57 = load i64, i64* @SMP_CORE_GROUP1_BASE, align 8
  %58 = load i64, i64* @SMP_CORE3_OFFSET, align 8
  %59 = add nsw i64 %57, %58
  %60 = load i64, i64* @STATUS0, align 8
  %61 = add nsw i64 %59, %60
  %62 = inttoptr i64 %61 to i8*
  %63 = load i8**, i8*** @ipi_status0_regs, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 7
  store i8* %62, i8** %64, align 8
  %65 = load i64, i64* @SMP_CORE_GROUP2_BASE, align 8
  %66 = load i64, i64* @SMP_CORE0_OFFSET, align 8
  %67 = add nsw i64 %65, %66
  %68 = load i64, i64* @STATUS0, align 8
  %69 = add nsw i64 %67, %68
  %70 = inttoptr i64 %69 to i8*
  %71 = load i8**, i8*** @ipi_status0_regs, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 8
  store i8* %70, i8** %72, align 8
  %73 = load i64, i64* @SMP_CORE_GROUP2_BASE, align 8
  %74 = load i64, i64* @SMP_CORE1_OFFSET, align 8
  %75 = add nsw i64 %73, %74
  %76 = load i64, i64* @STATUS0, align 8
  %77 = add nsw i64 %75, %76
  %78 = inttoptr i64 %77 to i8*
  %79 = load i8**, i8*** @ipi_status0_regs, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 9
  store i8* %78, i8** %80, align 8
  %81 = load i64, i64* @SMP_CORE_GROUP2_BASE, align 8
  %82 = load i64, i64* @SMP_CORE2_OFFSET, align 8
  %83 = add nsw i64 %81, %82
  %84 = load i64, i64* @STATUS0, align 8
  %85 = add nsw i64 %83, %84
  %86 = inttoptr i64 %85 to i8*
  %87 = load i8**, i8*** @ipi_status0_regs, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 10
  store i8* %86, i8** %88, align 8
  %89 = load i64, i64* @SMP_CORE_GROUP2_BASE, align 8
  %90 = load i64, i64* @SMP_CORE3_OFFSET, align 8
  %91 = add nsw i64 %89, %90
  %92 = load i64, i64* @STATUS0, align 8
  %93 = add nsw i64 %91, %92
  %94 = inttoptr i64 %93 to i8*
  %95 = load i8**, i8*** @ipi_status0_regs, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 11
  store i8* %94, i8** %96, align 8
  %97 = load i64, i64* @SMP_CORE_GROUP3_BASE, align 8
  %98 = load i64, i64* @SMP_CORE0_OFFSET, align 8
  %99 = add nsw i64 %97, %98
  %100 = load i64, i64* @STATUS0, align 8
  %101 = add nsw i64 %99, %100
  %102 = inttoptr i64 %101 to i8*
  %103 = load i8**, i8*** @ipi_status0_regs, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 12
  store i8* %102, i8** %104, align 8
  %105 = load i64, i64* @SMP_CORE_GROUP3_BASE, align 8
  %106 = load i64, i64* @SMP_CORE1_OFFSET, align 8
  %107 = add nsw i64 %105, %106
  %108 = load i64, i64* @STATUS0, align 8
  %109 = add nsw i64 %107, %108
  %110 = inttoptr i64 %109 to i8*
  %111 = load i8**, i8*** @ipi_status0_regs, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i64 13
  store i8* %110, i8** %112, align 8
  %113 = load i64, i64* @SMP_CORE_GROUP3_BASE, align 8
  %114 = load i64, i64* @SMP_CORE2_OFFSET, align 8
  %115 = add nsw i64 %113, %114
  %116 = load i64, i64* @STATUS0, align 8
  %117 = add nsw i64 %115, %116
  %118 = inttoptr i64 %117 to i8*
  %119 = load i8**, i8*** @ipi_status0_regs, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i64 14
  store i8* %118, i8** %120, align 8
  %121 = load i64, i64* @SMP_CORE_GROUP3_BASE, align 8
  %122 = load i64, i64* @SMP_CORE3_OFFSET, align 8
  %123 = add nsw i64 %121, %122
  %124 = load i64, i64* @STATUS0, align 8
  %125 = add nsw i64 %123, %124
  %126 = inttoptr i64 %125 to i8*
  %127 = load i8**, i8*** @ipi_status0_regs, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i64 15
  store i8* %126, i8** %128, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
