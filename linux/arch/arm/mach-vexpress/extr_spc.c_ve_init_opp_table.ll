; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-vexpress/extr_spc.c_ve_init_opp_table.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-vexpress/extr_spc.c_ve_init_opp_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, %struct.ve_spc_opp** }
%struct.ve_spc_opp = type { i32, i32 }
%struct.device = type { i32 }

@info = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"failed to add opp %lu %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @ve_init_opp_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ve_init_opp_table(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ve_spc_opp*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @topology_physical_package_id(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  br label %18

18:                                               ; preds = %16, %15
  %19 = phi i32 [ 0, %15 ], [ %17, %16 ]
  store i32 %19, i32* %4, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @info, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @info, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load %struct.ve_spc_opp**, %struct.ve_spc_opp*** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ve_spc_opp*, %struct.ve_spc_opp** %29, i64 %31
  %33 = load %struct.ve_spc_opp*, %struct.ve_spc_opp** %32, align 8
  store %struct.ve_spc_opp* %33, %struct.ve_spc_opp** %8, align 8
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %61, %18
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %66

38:                                               ; preds = %34
  %39 = load %struct.device*, %struct.device** %3, align 8
  %40 = load %struct.ve_spc_opp*, %struct.ve_spc_opp** %8, align 8
  %41 = getelementptr inbounds %struct.ve_spc_opp, %struct.ve_spc_opp* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %42, 1000
  %44 = load %struct.ve_spc_opp*, %struct.ve_spc_opp** %8, align 8
  %45 = getelementptr inbounds %struct.ve_spc_opp, %struct.ve_spc_opp* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_pm_opp_add(%struct.device* %39, i32 %43, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %38
  %51 = load %struct.device*, %struct.device** %3, align 8
  %52 = load %struct.ve_spc_opp*, %struct.ve_spc_opp** %8, align 8
  %53 = getelementptr inbounds %struct.ve_spc_opp, %struct.ve_spc_opp* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ve_spc_opp*, %struct.ve_spc_opp** %8, align 8
  %56 = getelementptr inbounds %struct.ve_spc_opp, %struct.ve_spc_opp* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dev_warn(%struct.device* %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %57)
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %68

60:                                               ; preds = %38
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  %64 = load %struct.ve_spc_opp*, %struct.ve_spc_opp** %8, align 8
  %65 = getelementptr inbounds %struct.ve_spc_opp, %struct.ve_spc_opp* %64, i32 1
  store %struct.ve_spc_opp* %65, %struct.ve_spc_opp** %8, align 8
  br label %34

66:                                               ; preds = %34
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %50
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @topology_physical_package_id(i32) #1

declare dso_local i32 @dev_pm_opp_add(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
