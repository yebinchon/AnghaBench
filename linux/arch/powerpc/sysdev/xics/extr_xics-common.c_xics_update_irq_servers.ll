; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xics/extr_xics-common.c_xics_update_irq_servers.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xics/extr_xics-common.c_xics_update_irq_servers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@boot_cpuid = common dso_local global i32 0, align 4
@xics_default_distrib_server = common dso_local global i32 0, align 4
@xics_default_server = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"xics: xics_default_server = 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"ibm,ppc-interrupt-gserver#s\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"xics: xics_default_distrib_server = 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xics_update_irq_servers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @boot_cpuid, align 4
  %8 = call %struct.device_node* @of_get_cpu_node(i32 %7, i32* null)
  store %struct.device_node* %8, %struct.device_node** %3, align 8
  %9 = load %struct.device_node*, %struct.device_node** %3, align 8
  %10 = icmp ne %struct.device_node* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load i32, i32* @boot_cpuid, align 4
  %15 = call i32 @get_hard_smp_processor_id(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* @xics_default_distrib_server, align 4
  store i32 %16, i32* @xics_default_server, align 4
  %17 = load i32, i32* @xics_default_server, align 4
  %18 = call i32 @pr_devel(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.device_node*, %struct.device_node** %3, align 8
  %20 = call i32* @of_get_property(%struct.device_node* %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32* %4)
  store i32* %20, i32** %5, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %0
  %24 = load %struct.device_node*, %struct.device_node** %3, align 8
  %25 = call i32 @of_node_put(%struct.device_node* %24)
  br label %61

26:                                               ; preds = %0
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = udiv i64 %28, 4
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %53, %26
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* %1, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %31
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @be32_to_cpu(i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %35
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %2, align 4
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @be32_to_cpu(i32 %50)
  store i32 %51, i32* @xics_default_distrib_server, align 4
  br label %56

52:                                               ; preds = %35
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %2, align 4
  %55 = add nsw i32 %54, 2
  store i32 %55, i32* %2, align 4
  br label %31

56:                                               ; preds = %44, %31
  %57 = load i32, i32* @xics_default_distrib_server, align 4
  %58 = call i32 @pr_devel(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load %struct.device_node*, %struct.device_node** %3, align 8
  %60 = call i32 @of_node_put(%struct.device_node* %59)
  br label %61

61:                                               ; preds = %56, %23
  ret void
}

declare dso_local %struct.device_node* @of_get_cpu_node(i32, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @get_hard_smp_processor_id(i32) #1

declare dso_local i32 @pr_devel(i8*, i32) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
