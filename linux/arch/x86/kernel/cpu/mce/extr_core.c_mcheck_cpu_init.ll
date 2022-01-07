; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c_mcheck_cpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c_mcheck_cpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cpuinfo_x86 = type { i32 }

@mca_cfg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [37 x i8] c"Couldn't allocate MCE records pool!\0A\00", align 1
@do_machine_check = common dso_local global i32 0, align 4
@machine_check_vector = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mcheck_cpu_init(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca %struct.cpuinfo_x86*, align 8
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %2, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mca_cfg, i32 0, i32 0), align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %37

6:                                                ; preds = %1
  %7 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %8 = call i64 @__mcheck_cpu_ancient_init(%struct.cpuinfo_x86* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %37

11:                                               ; preds = %6
  %12 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %13 = call i32 @mce_available(%struct.cpuinfo_x86* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  br label %37

16:                                               ; preds = %11
  %17 = call i32 (...) @__mcheck_cpu_cap_init()
  %18 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %19 = call i64 @__mcheck_cpu_apply_quirks(%struct.cpuinfo_x86* %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mca_cfg, i32 0, i32 0), align 4
  br label %37

22:                                               ; preds = %16
  %23 = call i64 (...) @mce_gen_pool_init()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mca_cfg, i32 0, i32 0), align 4
  %26 = call i32 @pr_emerg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %37

27:                                               ; preds = %22
  %28 = load i32, i32* @do_machine_check, align 4
  store i32 %28, i32* @machine_check_vector, align 4
  %29 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %30 = call i32 @__mcheck_cpu_init_early(%struct.cpuinfo_x86* %29)
  %31 = call i32 (...) @__mcheck_cpu_init_generic()
  %32 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %33 = call i32 @__mcheck_cpu_init_vendor(%struct.cpuinfo_x86* %32)
  %34 = call i32 (...) @__mcheck_cpu_init_clear_banks()
  %35 = call i32 (...) @__mcheck_cpu_check_banks()
  %36 = call i32 (...) @__mcheck_cpu_setup_timer()
  br label %37

37:                                               ; preds = %27, %25, %21, %15, %10, %5
  ret void
}

declare dso_local i64 @__mcheck_cpu_ancient_init(%struct.cpuinfo_x86*) #1

declare dso_local i32 @mce_available(%struct.cpuinfo_x86*) #1

declare dso_local i32 @__mcheck_cpu_cap_init(...) #1

declare dso_local i64 @__mcheck_cpu_apply_quirks(%struct.cpuinfo_x86*) #1

declare dso_local i64 @mce_gen_pool_init(...) #1

declare dso_local i32 @pr_emerg(i8*) #1

declare dso_local i32 @__mcheck_cpu_init_early(%struct.cpuinfo_x86*) #1

declare dso_local i32 @__mcheck_cpu_init_generic(...) #1

declare dso_local i32 @__mcheck_cpu_init_vendor(%struct.cpuinfo_x86*) #1

declare dso_local i32 @__mcheck_cpu_init_clear_banks(...) #1

declare dso_local i32 @__mcheck_cpu_check_banks(...) #1

declare dso_local i32 @__mcheck_cpu_setup_timer(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
