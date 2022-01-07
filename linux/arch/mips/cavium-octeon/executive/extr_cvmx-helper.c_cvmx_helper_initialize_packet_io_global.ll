; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-helper.c_cvmx_helper_initialize_packet_io_global.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-helper.c_cvmx_helper_initialize_packet_io_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_l2c_cfg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@OCTEON_CN52XX_PASS1_0 = common dso_local global i32 0, align 4
@CVMX_L2C_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Interface %d has %d ports (%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_helper_initialize_packet_io_global() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %union.cvmx_l2c_cfg, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call i32 (...) @cvmx_helper_get_number_of_interfaces()
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* @OCTEON_CN52XX_PASS1_0, align 4
  %7 = call i64 @OCTEON_IS_MODEL(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 @__cvmx_helper_errata_qlm_disable_2nd_order_cdr(i32 1)
  br label %11

11:                                               ; preds = %9, %0
  %12 = load i32, i32* @CVMX_L2C_CFG, align 4
  %13 = call i32 @cvmx_read_csr(i32 %12)
  %14 = bitcast %union.cvmx_l2c_cfg* %3 to i32*
  store i32 %13, i32* %14, align 8
  %15 = bitcast %union.cvmx_l2c_cfg* %3 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = bitcast %union.cvmx_l2c_cfg* %3 to %struct.TYPE_2__*
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* @CVMX_L2C_CFG, align 4
  %20 = bitcast %union.cvmx_l2c_cfg* %3 to i32*
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @cvmx_write_csr(i32 %19, i32 %21)
  %23 = call i32 (...) @cvmx_pko_initialize_global()
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %53, %11
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %56

28:                                               ; preds = %24
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @cvmx_helper_interface_probe(i32 %29)
  %31 = load i32, i32* %1, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %1, align 4
  %33 = load i32, i32* %2, align 4
  %34 = call i64 @cvmx_helper_ports_on_interface(i32 %33)
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* %2, align 4
  %39 = call i64 @cvmx_helper_ports_on_interface(i32 %38)
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @cvmx_helper_interface_get_mode(i32 %40)
  %42 = call i32 @cvmx_helper_interface_mode_to_string(i32 %41)
  %43 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %37, i64 %39, i32 %42)
  br label %44

44:                                               ; preds = %36, %28
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @__cvmx_helper_interface_setup_ipd(i32 %45)
  %47 = load i32, i32* %1, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %1, align 4
  %49 = load i32, i32* %2, align 4
  %50 = call i32 @__cvmx_helper_interface_setup_pko(i32 %49)
  %51 = load i32, i32* %1, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %1, align 4
  br label %53

53:                                               ; preds = %44
  %54 = load i32, i32* %2, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %2, align 4
  br label %24

56:                                               ; preds = %24
  %57 = call i32 (...) @__cvmx_helper_global_setup_ipd()
  %58 = load i32, i32* %1, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %1, align 4
  %60 = call i32 (...) @__cvmx_helper_global_setup_pko()
  %61 = load i32, i32* %1, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %1, align 4
  %63 = call i32 (...) @__cvmx_helper_global_setup_backpressure()
  %64 = load i32, i32* %1, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %1, align 4
  %66 = load i32, i32* %1, align 4
  ret i32 %66
}

declare dso_local i32 @cvmx_helper_get_number_of_interfaces(...) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @__cvmx_helper_errata_qlm_disable_2nd_order_cdr(i32) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @cvmx_pko_initialize_global(...) #1

declare dso_local i32 @cvmx_helper_interface_probe(i32) #1

declare dso_local i64 @cvmx_helper_ports_on_interface(i32) #1

declare dso_local i32 @cvmx_dprintf(i8*, i32, i64, i32) #1

declare dso_local i32 @cvmx_helper_interface_mode_to_string(i32) #1

declare dso_local i32 @cvmx_helper_interface_get_mode(i32) #1

declare dso_local i32 @__cvmx_helper_interface_setup_ipd(i32) #1

declare dso_local i32 @__cvmx_helper_interface_setup_pko(i32) #1

declare dso_local i32 @__cvmx_helper_global_setup_ipd(...) #1

declare dso_local i32 @__cvmx_helper_global_setup_pko(...) #1

declare dso_local i32 @__cvmx_helper_global_setup_backpressure(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
