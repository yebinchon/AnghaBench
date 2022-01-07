; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r4k.c_alias_74k_erratum.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r4k.c_alias_74k_erratum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_mips = type { i32 }

@PRID_IMP_MASK = common dso_local global i32 0, align 4
@PRID_REV_MASK = common dso_local global i32 0, align 4
@MIPS_CONF6_SYND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuinfo_mips*)* @alias_74k_erratum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alias_74k_erratum(%struct.cpuinfo_mips* %0) #0 {
  %2 = alloca %struct.cpuinfo_mips*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cpuinfo_mips* %0, %struct.cpuinfo_mips** %2, align 8
  %6 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %7 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @PRID_IMP_MASK, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %3, align 4
  %11 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %12 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PRID_REV_MASK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %16 = load i32, i32* %3, align 4
  switch i32 %16, label %42 [
    i32 128, label %17
    i32 129, label %32
  ]

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @PRID_REV_ENCODE_332(i32 2, i32 4, i32 0)
  %20 = icmp ule i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 1, i32* %5, align 4
  br label %22

22:                                               ; preds = %21, %17
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @PRID_REV_ENCODE_332(i32 2, i32 4, i32 0)
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = call i32 (...) @read_c0_config6()
  %28 = load i32, i32* @MIPS_CONF6_SYND, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @write_c0_config6(i32 %29)
  br label %31

31:                                               ; preds = %26, %22
  br label %44

32:                                               ; preds = %1
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @PRID_REV_ENCODE_332(i32 1, i32 1, i32 0)
  %35 = icmp ule i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  store i32 1, i32* %5, align 4
  %37 = call i32 (...) @read_c0_config6()
  %38 = load i32, i32* @MIPS_CONF6_SYND, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @write_c0_config6(i32 %39)
  br label %41

41:                                               ; preds = %36, %32
  br label %44

42:                                               ; preds = %1
  %43 = call i32 (...) @BUG()
  br label %44

44:                                               ; preds = %42, %41, %31
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @PRID_REV_ENCODE_332(i32, i32, i32) #1

declare dso_local i32 @write_c0_config6(i32) #1

declare dso_local i32 @read_c0_config6(...) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
