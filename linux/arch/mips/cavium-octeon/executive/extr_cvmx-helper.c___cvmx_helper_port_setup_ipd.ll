; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-helper.c___cvmx_helper_port_setup_ipd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-helper.c___cvmx_helper_port_setup_ipd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_pip_prt_cfgx = type { i8* }
%union.cvmx_pip_prt_tagx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@CVMX_HELPER_INPUT_PORT_SKIP_MODE = common dso_local global i32 0, align 4
@CVMX_HELPER_INPUT_TAG_IPV6_SRC_IP = common dso_local global i32 0, align 4
@CVMX_HELPER_INPUT_TAG_IPV6_DST_IP = common dso_local global i32 0, align 4
@CVMX_HELPER_INPUT_TAG_IPV6_SRC_PORT = common dso_local global i32 0, align 4
@CVMX_HELPER_INPUT_TAG_IPV6_DST_PORT = common dso_local global i32 0, align 4
@CVMX_HELPER_INPUT_TAG_IPV6_NEXT_HEADER = common dso_local global i32 0, align 4
@CVMX_HELPER_INPUT_TAG_IPV4_SRC_IP = common dso_local global i32 0, align 4
@CVMX_HELPER_INPUT_TAG_IPV4_DST_IP = common dso_local global i32 0, align 4
@CVMX_HELPER_INPUT_TAG_IPV4_SRC_PORT = common dso_local global i32 0, align 4
@CVMX_HELPER_INPUT_TAG_IPV4_DST_PORT = common dso_local global i32 0, align 4
@CVMX_HELPER_INPUT_TAG_IPV4_PROTOCOL = common dso_local global i32 0, align 4
@CVMX_HELPER_INPUT_TAG_INPUT_PORT = common dso_local global i32 0, align 4
@CVMX_HELPER_INPUT_TAG_TYPE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @__cvmx_helper_port_setup_ipd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cvmx_helper_port_setup_ipd(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.cvmx_pip_prt_cfgx, align 8
  %4 = alloca %union.cvmx_pip_prt_tagx, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @CVMX_PIP_PRT_CFGX(i32 %5)
  %7 = call i8* @cvmx_read_csr(i32 %6)
  %8 = bitcast %union.cvmx_pip_prt_cfgx* %3 to i8**
  store i8* %7, i8** %8, align 8
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @CVMX_PIP_PRT_TAGX(i32 %9)
  %11 = call i8* @cvmx_read_csr(i32 %10)
  %12 = bitcast %union.cvmx_pip_prt_tagx* %4 to i8**
  store i8* %11, i8** %12, align 8
  %13 = load i32, i32* %2, align 4
  %14 = and i32 %13, 7
  %15 = bitcast %union.cvmx_pip_prt_cfgx* %3 to %struct.TYPE_3__*
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @CVMX_HELPER_INPUT_PORT_SKIP_MODE, align 4
  %18 = bitcast %union.cvmx_pip_prt_cfgx* %3 to %struct.TYPE_3__*
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @CVMX_HELPER_INPUT_TAG_IPV6_SRC_IP, align 4
  %21 = bitcast %union.cvmx_pip_prt_tagx* %4 to %struct.TYPE_4__*
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 16
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @CVMX_HELPER_INPUT_TAG_IPV6_DST_IP, align 4
  %24 = bitcast %union.cvmx_pip_prt_tagx* %4 to %struct.TYPE_4__*
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 15
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @CVMX_HELPER_INPUT_TAG_IPV6_SRC_PORT, align 4
  %27 = bitcast %union.cvmx_pip_prt_tagx* %4 to %struct.TYPE_4__*
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 14
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @CVMX_HELPER_INPUT_TAG_IPV6_DST_PORT, align 4
  %30 = bitcast %union.cvmx_pip_prt_tagx* %4 to %struct.TYPE_4__*
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 13
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @CVMX_HELPER_INPUT_TAG_IPV6_NEXT_HEADER, align 4
  %33 = bitcast %union.cvmx_pip_prt_tagx* %4 to %struct.TYPE_4__*
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 12
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @CVMX_HELPER_INPUT_TAG_IPV4_SRC_IP, align 4
  %36 = bitcast %union.cvmx_pip_prt_tagx* %4 to %struct.TYPE_4__*
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 11
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @CVMX_HELPER_INPUT_TAG_IPV4_DST_IP, align 4
  %39 = bitcast %union.cvmx_pip_prt_tagx* %4 to %struct.TYPE_4__*
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 10
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @CVMX_HELPER_INPUT_TAG_IPV4_SRC_PORT, align 4
  %42 = bitcast %union.cvmx_pip_prt_tagx* %4 to %struct.TYPE_4__*
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 9
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @CVMX_HELPER_INPUT_TAG_IPV4_DST_PORT, align 4
  %45 = bitcast %union.cvmx_pip_prt_tagx* %4 to %struct.TYPE_4__*
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 8
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @CVMX_HELPER_INPUT_TAG_IPV4_PROTOCOL, align 4
  %48 = bitcast %union.cvmx_pip_prt_tagx* %4 to %struct.TYPE_4__*
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 7
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @CVMX_HELPER_INPUT_TAG_INPUT_PORT, align 4
  %51 = bitcast %union.cvmx_pip_prt_tagx* %4 to %struct.TYPE_4__*
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 8
  %53 = load i8*, i8** @CVMX_HELPER_INPUT_TAG_TYPE, align 8
  %54 = bitcast %union.cvmx_pip_prt_tagx* %4 to %struct.TYPE_4__*
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 5
  store i8* %53, i8** %55, align 8
  %56 = load i8*, i8** @CVMX_HELPER_INPUT_TAG_TYPE, align 8
  %57 = bitcast %union.cvmx_pip_prt_tagx* %4 to %struct.TYPE_4__*
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** @CVMX_HELPER_INPUT_TAG_TYPE, align 8
  %60 = bitcast %union.cvmx_pip_prt_tagx* %4 to %struct.TYPE_4__*
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** @CVMX_HELPER_INPUT_TAG_TYPE, align 8
  %63 = bitcast %union.cvmx_pip_prt_tagx* %4 to %struct.TYPE_4__*
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** @CVMX_HELPER_INPUT_TAG_TYPE, align 8
  %66 = bitcast %union.cvmx_pip_prt_tagx* %4 to %struct.TYPE_4__*
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = bitcast %union.cvmx_pip_prt_tagx* %4 to %struct.TYPE_4__*
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  %70 = load i32, i32* %2, align 4
  %71 = getelementptr inbounds %union.cvmx_pip_prt_cfgx, %union.cvmx_pip_prt_cfgx* %3, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @cvmx_pip_config_port(i32 %70, i8* %72, %union.cvmx_pip_prt_tagx* byval(%union.cvmx_pip_prt_tagx) align 8 %4)
  ret i32 0
}

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_PIP_PRT_CFGX(i32) #1

declare dso_local i32 @CVMX_PIP_PRT_TAGX(i32) #1

declare dso_local i32 @cvmx_pip_config_port(i32, i8*, %union.cvmx_pip_prt_tagx* byval(%union.cvmx_pip_prt_tagx) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
