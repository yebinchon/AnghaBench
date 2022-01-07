; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_core.c_rdt_ctrl_update.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_core.c_rdt_ctrl_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msr_param = type { %struct.rdt_resource* }
%struct.rdt_resource = type { i32, i32 (%struct.rdt_domain*, %struct.msr_param.0*, %struct.rdt_resource*)* }
%struct.rdt_domain = type opaque
%struct.msr_param.0 = type opaque
%struct.rdt_domain.1 = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"cpu %d not found in any domain for resource %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rdt_ctrl_update(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.msr_param*, align 8
  %4 = alloca %struct.rdt_resource*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rdt_domain.1*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.msr_param*
  store %struct.msr_param* %8, %struct.msr_param** %3, align 8
  %9 = load %struct.msr_param*, %struct.msr_param** %3, align 8
  %10 = getelementptr inbounds %struct.msr_param, %struct.msr_param* %9, i32 0, i32 0
  %11 = load %struct.rdt_resource*, %struct.rdt_resource** %10, align 8
  store %struct.rdt_resource* %11, %struct.rdt_resource** %4, align 8
  %12 = call i32 (...) @smp_processor_id()
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.rdt_resource*, %struct.rdt_resource** %4, align 8
  %15 = call %struct.rdt_domain.1* @get_domain_from_cpu(i32 %13, %struct.rdt_resource* %14)
  store %struct.rdt_domain.1* %15, %struct.rdt_domain.1** %6, align 8
  %16 = load %struct.rdt_domain.1*, %struct.rdt_domain.1** %6, align 8
  %17 = icmp ne %struct.rdt_domain.1* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %1
  %19 = load %struct.rdt_resource*, %struct.rdt_resource** %4, align 8
  %20 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %19, i32 0, i32 1
  %21 = load i32 (%struct.rdt_domain*, %struct.msr_param.0*, %struct.rdt_resource*)*, i32 (%struct.rdt_domain*, %struct.msr_param.0*, %struct.rdt_resource*)** %20, align 8
  %22 = load %struct.rdt_domain.1*, %struct.rdt_domain.1** %6, align 8
  %23 = bitcast %struct.rdt_domain.1* %22 to %struct.rdt_domain*
  %24 = load %struct.msr_param*, %struct.msr_param** %3, align 8
  %25 = bitcast %struct.msr_param* %24 to %struct.msr_param.0*
  %26 = load %struct.rdt_resource*, %struct.rdt_resource** %4, align 8
  %27 = call i32 %21(%struct.rdt_domain* %23, %struct.msr_param.0* %25, %struct.rdt_resource* %26)
  br label %34

28:                                               ; preds = %1
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.rdt_resource*, %struct.rdt_resource** %4, align 8
  %31 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @pr_warn_once(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32)
  br label %34

34:                                               ; preds = %28, %18
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local %struct.rdt_domain.1* @get_domain_from_cpu(i32, %struct.rdt_resource*) #1

declare dso_local i32 @pr_warn_once(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
