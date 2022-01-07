; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_pe.c_eeh_pe_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_pe.c_eeh_pe_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeh_pe = type { i32, i8*, i32, i32, %struct.pci_controller* }
%struct.pci_controller = type { i32 }

@eeh_pe_aux_size = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.eeh_pe* (%struct.pci_controller*, i32)* @eeh_pe_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.eeh_pe* @eeh_pe_alloc(%struct.pci_controller* %0, i32 %1) #0 {
  %3 = alloca %struct.eeh_pe*, align 8
  %4 = alloca %struct.pci_controller*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.eeh_pe*, align 8
  %7 = alloca i64, align 8
  store %struct.pci_controller* %0, %struct.pci_controller** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 32, i64* %7, align 8
  %8 = load i64, i64* @eeh_pe_aux_size, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load i64, i64* %7, align 8
  %12 = trunc i64 %11 to i32
  %13 = call i32 (...) @cache_line_size()
  %14 = call i64 @ALIGN(i32 %12, i32 %13)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* @eeh_pe_aux_size, align 8
  %16 = load i64, i64* %7, align 8
  %17 = add i64 %16, %15
  store i64 %17, i64* %7, align 8
  br label %18

18:                                               ; preds = %10, %2
  %19 = load i64, i64* %7, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.eeh_pe* @kzalloc(i64 %19, i32 %20)
  store %struct.eeh_pe* %21, %struct.eeh_pe** %6, align 8
  %22 = load %struct.eeh_pe*, %struct.eeh_pe** %6, align 8
  %23 = icmp ne %struct.eeh_pe* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  store %struct.eeh_pe* null, %struct.eeh_pe** %3, align 8
  br label %46

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.eeh_pe*, %struct.eeh_pe** %6, align 8
  %28 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %30 = load %struct.eeh_pe*, %struct.eeh_pe** %6, align 8
  %31 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %30, i32 0, i32 4
  store %struct.pci_controller* %29, %struct.pci_controller** %31, align 8
  %32 = load %struct.eeh_pe*, %struct.eeh_pe** %6, align 8
  %33 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %32, i32 0, i32 3
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.eeh_pe*, %struct.eeh_pe** %6, align 8
  %36 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %35, i32 0, i32 2
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = load %struct.eeh_pe*, %struct.eeh_pe** %6, align 8
  %39 = bitcast %struct.eeh_pe* %38 to i8*
  %40 = call i32 (...) @cache_line_size()
  %41 = call i64 @ALIGN(i32 32, i32 %40)
  %42 = getelementptr i8, i8* %39, i64 %41
  %43 = load %struct.eeh_pe*, %struct.eeh_pe** %6, align 8
  %44 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load %struct.eeh_pe*, %struct.eeh_pe** %6, align 8
  store %struct.eeh_pe* %45, %struct.eeh_pe** %3, align 8
  br label %46

46:                                               ; preds = %25, %24
  %47 = load %struct.eeh_pe*, %struct.eeh_pe** %3, align 8
  ret %struct.eeh_pe* %47
}

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @cache_line_size(...) #1

declare dso_local %struct.eeh_pe* @kzalloc(i64, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
