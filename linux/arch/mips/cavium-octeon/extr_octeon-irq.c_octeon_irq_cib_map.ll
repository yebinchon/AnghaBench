; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_cib_map.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_cib_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.octeon_irq_cib_host_data* }
%struct.octeon_irq_cib_host_data = type { i64 }
%struct.octeon_irq_cib_chip_data = type { i64, %struct.octeon_irq_cib_host_data* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"ERROR: %s mapping %u is to big!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@octeon_irq_chip_cib = common dso_local global i32 0, align 4
@handle_simple_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i64)* @octeon_irq_cib_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_irq_cib_map(%struct.irq_domain* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_domain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.octeon_irq_cib_host_data*, align 8
  %9 = alloca %struct.octeon_irq_cib_chip_data*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %11 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %10, i32 0, i32 0
  %12 = load %struct.octeon_irq_cib_host_data*, %struct.octeon_irq_cib_host_data** %11, align 8
  store %struct.octeon_irq_cib_host_data* %12, %struct.octeon_irq_cib_host_data** %8, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.octeon_irq_cib_host_data*, %struct.octeon_irq_cib_host_data** %8, align 8
  %15 = getelementptr inbounds %struct.octeon_irq_cib_host_data, %struct.octeon_irq_cib_host_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %13, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %20 = call %struct.TYPE_2__* @irq_domain_get_of_node(%struct.irq_domain* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* %7, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %43

28:                                               ; preds = %3
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.octeon_irq_cib_chip_data* @kzalloc(i32 16, i32 %29)
  store %struct.octeon_irq_cib_chip_data* %30, %struct.octeon_irq_cib_chip_data** %9, align 8
  %31 = load %struct.octeon_irq_cib_host_data*, %struct.octeon_irq_cib_host_data** %8, align 8
  %32 = load %struct.octeon_irq_cib_chip_data*, %struct.octeon_irq_cib_chip_data** %9, align 8
  %33 = getelementptr inbounds %struct.octeon_irq_cib_chip_data, %struct.octeon_irq_cib_chip_data* %32, i32 0, i32 1
  store %struct.octeon_irq_cib_host_data* %31, %struct.octeon_irq_cib_host_data** %33, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.octeon_irq_cib_chip_data*, %struct.octeon_irq_cib_chip_data** %9, align 8
  %36 = getelementptr inbounds %struct.octeon_irq_cib_chip_data, %struct.octeon_irq_cib_chip_data* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @handle_simple_irq, align 4
  %39 = call i32 @irq_set_chip_and_handler(i32 %37, i32* @octeon_irq_chip_cib, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.octeon_irq_cib_chip_data*, %struct.octeon_irq_cib_chip_data** %9, align 8
  %42 = call i32 @irq_set_chip_data(i32 %40, %struct.octeon_irq_cib_chip_data* %41)
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %28, %18
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @irq_domain_get_of_node(%struct.irq_domain*) #1

declare dso_local %struct.octeon_irq_cib_chip_data* @kzalloc(i32, i32) #1

declare dso_local i32 @irq_set_chip_and_handler(i32, i32*, i32) #1

declare dso_local i32 @irq_set_chip_data(i32, %struct.octeon_irq_cib_chip_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
