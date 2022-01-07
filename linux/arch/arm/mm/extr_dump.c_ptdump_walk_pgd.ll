; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_dump.c_ptdump_walk_pgd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_dump.c_ptdump_walk_pgd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.ptdump_info = type { i32, i32, i32 }
%struct.pg_state = type { i32, i32, %struct.seq_file* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ptdump_walk_pgd(%struct.seq_file* %0, %struct.ptdump_info* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.ptdump_info*, align 8
  %5 = alloca %struct.pg_state, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.ptdump_info* %1, %struct.ptdump_info** %4, align 8
  %6 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %5, i32 0, i32 0
  store i32 0, i32* %6, align 8
  %7 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %5, i32 0, i32 1
  %8 = load %struct.ptdump_info*, %struct.ptdump_info** %4, align 8
  %9 = getelementptr inbounds %struct.ptdump_info, %struct.ptdump_info* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %5, i32 0, i32 2
  %12 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  store %struct.seq_file* %12, %struct.seq_file** %11, align 8
  %13 = load %struct.ptdump_info*, %struct.ptdump_info** %4, align 8
  %14 = getelementptr inbounds %struct.ptdump_info, %struct.ptdump_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ptdump_info*, %struct.ptdump_info** %4, align 8
  %17 = getelementptr inbounds %struct.ptdump_info, %struct.ptdump_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @walk_pgd(%struct.pg_state* %5, i32 %15, i32 %18)
  %20 = call i32 @note_page(%struct.pg_state* %5, i32 0, i32 0, i32 0, i32* null)
  ret void
}

declare dso_local i32 @walk_pgd(%struct.pg_state*, i32, i32) #1

declare dso_local i32 @note_page(%struct.pg_state*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
