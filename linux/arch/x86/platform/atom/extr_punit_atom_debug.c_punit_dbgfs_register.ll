; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/atom/extr_punit_atom_debug.c_punit_dbgfs_register.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/atom/extr_punit_atom_debug.c_punit_dbgfs_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.punit_device = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"punit_atom\00", align 1
@punit_dbg_file = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"dev_power_state\00", align 1
@punit_dev_state_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.punit_device*)* @punit_dbgfs_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @punit_dbgfs_register(%struct.punit_device* %0) #0 {
  %2 = alloca %struct.punit_device*, align 8
  store %struct.punit_device* %0, %struct.punit_device** %2, align 8
  %3 = call i32 @debugfs_create_dir(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32 %3, i32* @punit_dbg_file, align 4
  %4 = load i32, i32* @punit_dbg_file, align 4
  %5 = load %struct.punit_device*, %struct.punit_device** %2, align 8
  %6 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 292, i32 %4, %struct.punit_device* %5, i32* @punit_dev_state_fops)
  ret void
}

declare dso_local i32 @debugfs_create_dir(i8*, i32*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.punit_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
