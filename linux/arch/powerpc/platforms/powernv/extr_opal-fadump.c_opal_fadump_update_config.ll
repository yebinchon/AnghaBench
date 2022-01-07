; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-fadump.c_opal_fadump_update_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-fadump.c_opal_fadump_update_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_dump = type { i32, i32 }
%struct.opal_fadump_mem_struct = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Boot memory regions count: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Destination address of boot memory regions: %#016llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_dump*, %struct.opal_fadump_mem_struct*)* @opal_fadump_update_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opal_fadump_update_config(%struct.fw_dump* %0, %struct.opal_fadump_mem_struct* %1) #0 {
  %3 = alloca %struct.fw_dump*, align 8
  %4 = alloca %struct.opal_fadump_mem_struct*, align 8
  store %struct.fw_dump* %0, %struct.fw_dump** %3, align 8
  store %struct.opal_fadump_mem_struct* %1, %struct.opal_fadump_mem_struct** %4, align 8
  %5 = load %struct.opal_fadump_mem_struct*, %struct.opal_fadump_mem_struct** %4, align 8
  %6 = getelementptr inbounds %struct.opal_fadump_mem_struct, %struct.opal_fadump_mem_struct* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.opal_fadump_mem_struct*, %struct.opal_fadump_mem_struct** %4, align 8
  %10 = getelementptr inbounds %struct.opal_fadump_mem_struct, %struct.opal_fadump_mem_struct* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.fw_dump*, %struct.fw_dump** %3, align 8
  %16 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.fw_dump*, %struct.fw_dump** %3, align 8
  %18 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load %struct.opal_fadump_mem_struct*, %struct.opal_fadump_mem_struct** %4, align 8
  %22 = getelementptr inbounds %struct.opal_fadump_mem_struct, %struct.opal_fadump_mem_struct* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.fw_dump*, %struct.fw_dump** %3, align 8
  %25 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
