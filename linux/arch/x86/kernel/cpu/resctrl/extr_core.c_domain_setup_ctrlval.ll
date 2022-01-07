; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_core.c_domain_setup_ctrlval.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_core.c_domain_setup_ctrlval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdt_resource = type { i32 (%struct.rdt_domain*, %struct.msr_param*, %struct.rdt_resource*)*, i32 }
%struct.rdt_domain = type opaque
%struct.msr_param = type opaque
%struct.rdt_domain.0 = type { i32*, i32* }
%struct.msr_param.1 = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdt_resource*, %struct.rdt_domain.0*)* @domain_setup_ctrlval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @domain_setup_ctrlval(%struct.rdt_resource* %0, %struct.rdt_domain.0* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdt_resource*, align 8
  %5 = alloca %struct.rdt_domain.0*, align 8
  %6 = alloca %struct.msr_param.1, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.rdt_resource* %0, %struct.rdt_resource** %4, align 8
  store %struct.rdt_domain.0* %1, %struct.rdt_domain.0** %5, align 8
  %9 = load %struct.rdt_resource*, %struct.rdt_resource** %4, align 8
  %10 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i32* @kmalloc_array(i32 %11, i32 4, i32 %12)
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %56

19:                                               ; preds = %2
  %20 = load %struct.rdt_resource*, %struct.rdt_resource** %4, align 8
  %21 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32* @kmalloc_array(i32 %22, i32 4, i32 %23)
  store i32* %24, i32** %8, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %19
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @kfree(i32* %28)
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %56

32:                                               ; preds = %19
  %33 = load i32*, i32** %7, align 8
  %34 = load %struct.rdt_domain.0*, %struct.rdt_domain.0** %5, align 8
  %35 = getelementptr inbounds %struct.rdt_domain.0, %struct.rdt_domain.0* %34, i32 0, i32 1
  store i32* %33, i32** %35, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load %struct.rdt_domain.0*, %struct.rdt_domain.0** %5, align 8
  %38 = getelementptr inbounds %struct.rdt_domain.0, %struct.rdt_domain.0* %37, i32 0, i32 0
  store i32* %36, i32** %38, align 8
  %39 = load %struct.rdt_resource*, %struct.rdt_resource** %4, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @setup_default_ctrlval(%struct.rdt_resource* %39, i32* %40, i32* %41)
  %43 = getelementptr inbounds %struct.msr_param.1, %struct.msr_param.1* %6, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.rdt_resource*, %struct.rdt_resource** %4, align 8
  %45 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.msr_param.1, %struct.msr_param.1* %6, i32 0, i32 0
  store i32 %46, i32* %47, align 8
  %48 = load %struct.rdt_resource*, %struct.rdt_resource** %4, align 8
  %49 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %48, i32 0, i32 0
  %50 = load i32 (%struct.rdt_domain*, %struct.msr_param*, %struct.rdt_resource*)*, i32 (%struct.rdt_domain*, %struct.msr_param*, %struct.rdt_resource*)** %49, align 8
  %51 = load %struct.rdt_domain.0*, %struct.rdt_domain.0** %5, align 8
  %52 = bitcast %struct.rdt_domain.0* %51 to %struct.rdt_domain*
  %53 = bitcast %struct.msr_param.1* %6 to %struct.msr_param*
  %54 = load %struct.rdt_resource*, %struct.rdt_resource** %4, align 8
  %55 = call i32 %50(%struct.rdt_domain* %52, %struct.msr_param* %53, %struct.rdt_resource* %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %32, %27, %16
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @setup_default_ctrlval(%struct.rdt_resource*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
