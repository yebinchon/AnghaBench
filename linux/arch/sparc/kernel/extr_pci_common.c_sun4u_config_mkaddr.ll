; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_common.c_sun4u_config_mkaddr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_common.c_sun4u_config_mkaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_pbm_info = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.pci_pbm_info*, i64, i64, i64)* @sun4u_config_mkaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sun4u_config_mkaddr(%struct.pci_pbm_info* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pci_pbm_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.pci_pbm_info* %0, %struct.pci_pbm_info** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %12 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %10, align 8
  %14 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call i64 @config_out_of_range(%struct.pci_pbm_info* %14, i64 %15, i64 %16, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %46

21:                                               ; preds = %4
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = trunc i64 %23 to i32
  %25 = shl i32 1, %24
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = and i64 %22, %27
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %8, align 8
  %31 = shl i64 %30, %29
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %10, align 8
  %33 = add i64 %32, 8
  %34 = load i64, i64* %7, align 8
  %35 = shl i64 %34, %33
  store i64 %35, i64* %7, align 8
  %36 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %37 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = or i64 %38, %39
  %41 = load i64, i64* %8, align 8
  %42 = or i64 %40, %41
  %43 = load i64, i64* %9, align 8
  %44 = or i64 %42, %43
  %45 = inttoptr i64 %44 to i8*
  store i8* %45, i8** %5, align 8
  br label %46

46:                                               ; preds = %21, %20
  %47 = load i8*, i8** %5, align 8
  ret i8* %47
}

declare dso_local i64 @config_out_of_range(%struct.pci_pbm_info*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
