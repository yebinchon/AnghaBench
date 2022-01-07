; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_tcabdb.c_create_prog_tables.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_tcabdb.c_create_prog_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dbpath_agent_keys = common dso_local global i32 0, align 4
@ht_agent_keys = common dso_local global i8* null, align 8
@dbpath_agent_vals = common dso_local global i32 0, align 4
@ht_agent_vals = common dso_local global i8* null, align 8
@dbpath_general_stats = common dso_local global i32 0, align 4
@ht_general_stats = common dso_local global i8* null, align 8
@dbpath_hostnames = common dso_local global i32 0, align 4
@ht_hostnames = common dso_local global i8* null, align 8
@dbpath_unique_keys = common dso_local global i32 0, align 4
@ht_unique_keys = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @create_prog_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_prog_tables() #0 {
  %1 = load i32, i32* @dbpath_agent_keys, align 4
  %2 = call i8* @tc_adb_create(i32 %1)
  store i8* %2, i8** @ht_agent_keys, align 8
  %3 = load i32, i32* @dbpath_agent_vals, align 4
  %4 = call i8* @tc_adb_create(i32 %3)
  store i8* %4, i8** @ht_agent_vals, align 8
  %5 = load i32, i32* @dbpath_general_stats, align 4
  %6 = call i8* @tc_adb_create(i32 %5)
  store i8* %6, i8** @ht_general_stats, align 8
  %7 = load i32, i32* @dbpath_hostnames, align 4
  %8 = call i8* @tc_adb_create(i32 %7)
  store i8* %8, i8** @ht_hostnames, align 8
  %9 = load i32, i32* @dbpath_unique_keys, align 4
  %10 = call i8* @tc_adb_create(i32 %9)
  store i8* %10, i8** @ht_unique_keys, align 8
  ret void
}

declare dso_local i8* @tc_adb_create(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
