; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_mobility.c_prrn_update_node.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_mobility.c_prrn_update_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pseries_hp_errorlog = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.device_node = type { i32 }

@PSERIES_HP_ELOG_RESOURCE_MEM = common dso_local global i32 0, align 4
@PSERIES_HP_ELOG_ACTION_READD = common dso_local global i32 0, align 4
@PSERIES_HP_ELOG_ID_DRC_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @prrn_update_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prrn_update_node(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pseries_hp_errorlog, align 4
  %4 = alloca %struct.device_node*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @be32_to_cpu(i32 %5)
  %7 = call %struct.device_node* @of_find_node_by_phandle(i32 %6)
  store %struct.device_node* %7, %struct.device_node** %4, align 8
  %8 = load %struct.device_node*, %struct.device_node** %4, align 8
  %9 = icmp ne %struct.device_node* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.device_node*, %struct.device_node** %4, align 8
  %12 = call i32 @of_node_put(%struct.device_node* %11)
  br label %24

13:                                               ; preds = %1
  %14 = load i32, i32* @PSERIES_HP_ELOG_RESOURCE_MEM, align 4
  %15 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %3, i32 0, i32 3
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @PSERIES_HP_ELOG_ACTION_READD, align 4
  %17 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %3, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @PSERIES_HP_ELOG_ID_DRC_INDEX, align 4
  %19 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %3, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %2, align 4
  %21 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %3, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = call i32 @handle_dlpar_errorlog(%struct.pseries_hp_errorlog* %3)
  br label %24

24:                                               ; preds = %13, %10
  ret void
}

declare dso_local %struct.device_node* @of_find_node_by_phandle(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @handle_dlpar_errorlog(%struct.pseries_hp_errorlog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
