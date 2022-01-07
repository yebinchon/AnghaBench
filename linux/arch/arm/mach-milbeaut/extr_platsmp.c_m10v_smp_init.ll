; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-milbeaut/extr_platsmp.c_m10v_smp_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-milbeaut/extr_platsmp.c_m10v_smp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"socionext,milbeaut-smp-sram\00", align 1
@m10v_smp_base = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"MCPM boot on cpu_%u cluster_%u\0A\00", align 1
@M10V_MAX_CPU = common dso_local global i32 0, align 4
@KERNEL_UNBOOT_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @m10v_smp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m10v_smp_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_node*, align 8
  store i32 %0, i32* %2, align 4
  %7 = call %struct.device_node* @of_find_compatible_node(i32* null, i32* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %7, %struct.device_node** %6, align 8
  %8 = load %struct.device_node*, %struct.device_node** %6, align 8
  %9 = icmp ne %struct.device_node* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %41

11:                                               ; preds = %1
  %12 = load %struct.device_node*, %struct.device_node** %6, align 8
  %13 = call i64 @of_iomap(%struct.device_node* %12, i32 0)
  store i64 %13, i64* @m10v_smp_base, align 8
  %14 = load i64, i64* @m10v_smp_base, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  br label %41

17:                                               ; preds = %11
  %18 = call i32 (...) @read_cpuid_mpidr()
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @MPIDR_AFFINITY_LEVEL(i32 %19, i32 0)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @MPIDR_AFFINITY_LEVEL(i32 %21, i32 1)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %24)
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %38, %17
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @M10V_MAX_CPU, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load i32, i32* @KERNEL_UNBOOT_FLAG, align 4
  %32 = load i64, i64* @m10v_smp_base, align 8
  %33 = load i32, i32* %4, align 4
  %34 = mul i32 %33, 4
  %35 = zext i32 %34 to i64
  %36 = add nsw i64 %32, %35
  %37 = call i32 @writel(i32 %31, i64 %36)
  br label %38

38:                                               ; preds = %30
  %39 = load i32, i32* %4, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %26

41:                                               ; preds = %10, %16, %26
  ret void
}

declare dso_local %struct.device_node* @of_find_compatible_node(i32*, i32*, i8*) #1

declare dso_local i64 @of_iomap(%struct.device_node*, i32) #1

declare dso_local i32 @read_cpuid_mpidr(...) #1

declare dso_local i32 @MPIDR_AFFINITY_LEVEL(i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
