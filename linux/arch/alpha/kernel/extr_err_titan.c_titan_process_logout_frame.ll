; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_err_titan.c_titan_process_logout_frame.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_err_titan.c_titan_process_logout_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.el_common = type { i64 }
%struct.el_TITAN_sysdata_mcheck = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MCHK_DISPOSITION_UNKNOWN_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @titan_process_logout_frame(%struct.el_common* %0, i32 %1) #0 {
  %3 = alloca %struct.el_common*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.el_TITAN_sysdata_mcheck*, align 8
  %6 = alloca i32, align 4
  store %struct.el_common* %0, %struct.el_common** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.el_common*, %struct.el_common** %3, align 8
  %8 = ptrtoint %struct.el_common* %7 to i64
  %9 = load %struct.el_common*, %struct.el_common** %3, align 8
  %10 = getelementptr inbounds %struct.el_common, %struct.el_common* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add i64 %8, %11
  %13 = inttoptr i64 %12 to %struct.el_TITAN_sysdata_mcheck*
  store %struct.el_TITAN_sysdata_mcheck* %13, %struct.el_TITAN_sysdata_mcheck** %5, align 8
  %14 = load i32, i32* @MCHK_DISPOSITION_UNKNOWN_ERROR, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.el_TITAN_sysdata_mcheck*, %struct.el_TITAN_sysdata_mcheck** %5, align 8
  %16 = getelementptr inbounds %struct.el_TITAN_sysdata_mcheck, %struct.el_TITAN_sysdata_mcheck* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @titan_parse_c_misc(i32 %17, i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load %struct.el_TITAN_sysdata_mcheck*, %struct.el_TITAN_sysdata_mcheck** %5, align 8
  %23 = getelementptr inbounds %struct.el_TITAN_sysdata_mcheck, %struct.el_TITAN_sysdata_mcheck* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.el_TITAN_sysdata_mcheck*, %struct.el_TITAN_sysdata_mcheck** %5, align 8
  %26 = getelementptr inbounds %struct.el_TITAN_sysdata_mcheck, %struct.el_TITAN_sysdata_mcheck* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.el_TITAN_sysdata_mcheck*, %struct.el_TITAN_sysdata_mcheck** %5, align 8
  %29 = getelementptr inbounds %struct.el_TITAN_sysdata_mcheck, %struct.el_TITAN_sysdata_mcheck* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.el_TITAN_sysdata_mcheck*, %struct.el_TITAN_sysdata_mcheck** %5, align 8
  %32 = getelementptr inbounds %struct.el_TITAN_sysdata_mcheck, %struct.el_TITAN_sysdata_mcheck* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @titan_parse_p_chip(i32 0, i32 %24, i32 %27, i32 %30, i32 %33, i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load %struct.el_TITAN_sysdata_mcheck*, %struct.el_TITAN_sysdata_mcheck** %5, align 8
  %39 = getelementptr inbounds %struct.el_TITAN_sysdata_mcheck, %struct.el_TITAN_sysdata_mcheck* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.el_TITAN_sysdata_mcheck*, %struct.el_TITAN_sysdata_mcheck** %5, align 8
  %42 = getelementptr inbounds %struct.el_TITAN_sysdata_mcheck, %struct.el_TITAN_sysdata_mcheck* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.el_TITAN_sysdata_mcheck*, %struct.el_TITAN_sysdata_mcheck** %5, align 8
  %45 = getelementptr inbounds %struct.el_TITAN_sysdata_mcheck, %struct.el_TITAN_sysdata_mcheck* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.el_TITAN_sysdata_mcheck*, %struct.el_TITAN_sysdata_mcheck** %5, align 8
  %48 = getelementptr inbounds %struct.el_TITAN_sysdata_mcheck, %struct.el_TITAN_sysdata_mcheck* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @titan_parse_p_chip(i32 1, i32 %40, i32 %43, i32 %46, i32 %49, i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @titan_parse_c_misc(i32, i32) #1

declare dso_local i32 @titan_parse_p_chip(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
