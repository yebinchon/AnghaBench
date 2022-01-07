; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_hotplug-memory.c_pseries_memory_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_hotplug-memory.c_pseries_memory_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.of_reconfig_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"ibm,dynamic-memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @pseries_memory_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pseries_memory_notifier(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.of_reconfig_data*, align 8
  %8 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.of_reconfig_data*
  store %struct.of_reconfig_data* %10, %struct.of_reconfig_data** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i64, i64* %5, align 8
  switch i64 %11, label %34 [
    i64 130, label %12
    i64 129, label %17
    i64 128, label %22
  ]

12:                                               ; preds = %3
  %13 = load %struct.of_reconfig_data*, %struct.of_reconfig_data** %7, align 8
  %14 = getelementptr inbounds %struct.of_reconfig_data, %struct.of_reconfig_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @pseries_add_mem_node(i32 %15)
  store i32 %16, i32* %8, align 4
  br label %34

17:                                               ; preds = %3
  %18 = load %struct.of_reconfig_data*, %struct.of_reconfig_data** %7, align 8
  %19 = getelementptr inbounds %struct.of_reconfig_data, %struct.of_reconfig_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @pseries_remove_mem_node(i32 %20)
  store i32 %21, i32* %8, align 4
  br label %34

22:                                               ; preds = %3
  %23 = load %struct.of_reconfig_data*, %struct.of_reconfig_data** %7, align 8
  %24 = getelementptr inbounds %struct.of_reconfig_data, %struct.of_reconfig_data* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @strcmp(i32 %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load %struct.of_reconfig_data*, %struct.of_reconfig_data** %7, align 8
  %32 = call i32 @pseries_update_drconf_memory(%struct.of_reconfig_data* %31)
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %30, %22
  br label %34

34:                                               ; preds = %3, %33, %17, %12
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @notifier_from_errno(i32 %35)
  ret i32 %36
}

declare dso_local i32 @pseries_add_mem_node(i32) #1

declare dso_local i32 @pseries_remove_mem_node(i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @pseries_update_drconf_memory(%struct.of_reconfig_data*) #1

declare dso_local i32 @notifier_from_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
