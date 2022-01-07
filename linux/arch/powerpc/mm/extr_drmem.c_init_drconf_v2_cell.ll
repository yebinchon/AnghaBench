; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_drmem.c_init_drconf_v2_cell.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_drmem.c_init_drconf_v2_cell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_drconf_cell_v2 = type { i8*, i8*, i8*, i32 }
%struct.drmem_lmb = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.of_drconf_cell_v2*, %struct.drmem_lmb*)* @init_drconf_v2_cell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_drconf_v2_cell(%struct.of_drconf_cell_v2* %0, %struct.drmem_lmb* %1) #0 {
  %3 = alloca %struct.of_drconf_cell_v2*, align 8
  %4 = alloca %struct.drmem_lmb*, align 8
  store %struct.of_drconf_cell_v2* %0, %struct.of_drconf_cell_v2** %3, align 8
  store %struct.drmem_lmb* %1, %struct.drmem_lmb** %4, align 8
  %5 = load %struct.drmem_lmb*, %struct.drmem_lmb** %4, align 8
  %6 = getelementptr inbounds %struct.drmem_lmb, %struct.drmem_lmb* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @cpu_to_be64(i32 %7)
  %9 = load %struct.of_drconf_cell_v2*, %struct.of_drconf_cell_v2** %3, align 8
  %10 = getelementptr inbounds %struct.of_drconf_cell_v2, %struct.of_drconf_cell_v2* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 8
  %11 = load %struct.drmem_lmb*, %struct.drmem_lmb** %4, align 8
  %12 = getelementptr inbounds %struct.drmem_lmb, %struct.drmem_lmb* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @cpu_to_be32(i32 %13)
  %15 = load %struct.of_drconf_cell_v2*, %struct.of_drconf_cell_v2** %3, align 8
  %16 = getelementptr inbounds %struct.of_drconf_cell_v2, %struct.of_drconf_cell_v2* %15, i32 0, i32 2
  store i8* %14, i8** %16, align 8
  %17 = load %struct.drmem_lmb*, %struct.drmem_lmb** %4, align 8
  %18 = getelementptr inbounds %struct.drmem_lmb, %struct.drmem_lmb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @cpu_to_be32(i32 %19)
  %21 = load %struct.of_drconf_cell_v2*, %struct.of_drconf_cell_v2** %3, align 8
  %22 = getelementptr inbounds %struct.of_drconf_cell_v2, %struct.of_drconf_cell_v2* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load %struct.drmem_lmb*, %struct.drmem_lmb** %4, align 8
  %24 = call i32 @drmem_lmb_flags(%struct.drmem_lmb* %23)
  %25 = call i8* @cpu_to_be32(i32 %24)
  %26 = load %struct.of_drconf_cell_v2*, %struct.of_drconf_cell_v2** %3, align 8
  %27 = getelementptr inbounds %struct.of_drconf_cell_v2, %struct.of_drconf_cell_v2* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  ret void
}

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @drmem_lmb_flags(%struct.drmem_lmb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
