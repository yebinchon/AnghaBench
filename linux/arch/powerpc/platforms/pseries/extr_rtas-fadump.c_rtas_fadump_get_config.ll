; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_rtas-fadump.c_rtas_fadump_get_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_rtas-fadump.c_rtas_fadump_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_dump = type { i32, i8*, i8*, i8*, i8**, i8** }
%struct.rtas_fadump_mem_struct = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_dump*, %struct.rtas_fadump_mem_struct*)* @rtas_fadump_get_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtas_fadump_get_config(%struct.fw_dump* %0, %struct.rtas_fadump_mem_struct* %1) #0 {
  %3 = alloca %struct.fw_dump*, align 8
  %4 = alloca %struct.rtas_fadump_mem_struct*, align 8
  store %struct.fw_dump* %0, %struct.fw_dump** %3, align 8
  store %struct.rtas_fadump_mem_struct* %1, %struct.rtas_fadump_mem_struct** %4, align 8
  %5 = load %struct.rtas_fadump_mem_struct*, %struct.rtas_fadump_mem_struct** %4, align 8
  %6 = getelementptr inbounds %struct.rtas_fadump_mem_struct, %struct.rtas_fadump_mem_struct* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i8* @be64_to_cpu(i32 %8)
  %10 = load %struct.fw_dump*, %struct.fw_dump** %3, align 8
  %11 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %10, i32 0, i32 5
  %12 = load i8**, i8*** %11, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  store i8* %9, i8** %13, align 8
  %14 = load %struct.rtas_fadump_mem_struct*, %struct.rtas_fadump_mem_struct** %4, align 8
  %15 = getelementptr inbounds %struct.rtas_fadump_mem_struct, %struct.rtas_fadump_mem_struct* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @be64_to_cpu(i32 %17)
  %19 = load %struct.fw_dump*, %struct.fw_dump** %3, align 8
  %20 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %19, i32 0, i32 4
  %21 = load i8**, i8*** %20, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  store i8* %18, i8** %22, align 8
  %23 = load %struct.fw_dump*, %struct.fw_dump** %3, align 8
  %24 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %23, i32 0, i32 4
  %25 = load i8**, i8*** %24, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.fw_dump*, %struct.fw_dump** %3, align 8
  %29 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = load %struct.fw_dump*, %struct.fw_dump** %3, align 8
  %31 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.fw_dump*, %struct.fw_dump** %3, align 8
  %34 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load %struct.fw_dump*, %struct.fw_dump** %3, align 8
  %36 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.rtas_fadump_mem_struct*, %struct.rtas_fadump_mem_struct** %4, align 8
  %38 = getelementptr inbounds %struct.rtas_fadump_mem_struct, %struct.rtas_fadump_mem_struct* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @be64_to_cpu(i32 %40)
  %42 = load %struct.fw_dump*, %struct.fw_dump** %3, align 8
  %43 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load %struct.fw_dump*, %struct.fw_dump** %3, align 8
  %45 = load %struct.rtas_fadump_mem_struct*, %struct.rtas_fadump_mem_struct** %4, align 8
  %46 = call i32 @rtas_fadump_update_config(%struct.fw_dump* %44, %struct.rtas_fadump_mem_struct* %45)
  ret void
}

declare dso_local i8* @be64_to_cpu(i32) #1

declare dso_local i32 @rtas_fadump_update_config(%struct.fw_dump*, %struct.rtas_fadump_mem_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
