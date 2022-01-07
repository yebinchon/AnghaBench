; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_hashpagetable.c_ptdump_show.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_hashpagetable.c_ptdump_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.pg_state = type { i32, i32, %struct.seq_file* }

@address_markers = common dso_local global i32 0, align 4
@PAGE_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @ptdump_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptdump_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pg_state, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %5, i32 0, i32 0
  %7 = load i32, i32* @address_markers, align 4
  store i32 %7, i32* %6, align 8
  %8 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %5, i32 0, i32 1
  %9 = load i32, i32* @PAGE_OFFSET, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %5, i32 0, i32 2
  %11 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  store %struct.seq_file* %11, %struct.seq_file** %10, align 8
  %12 = call i32 @walk_linearmapping(%struct.pg_state* %5)
  %13 = call i32 @walk_pagetables(%struct.pg_state* %5)
  %14 = call i32 @walk_vmemmap(%struct.pg_state* %5)
  ret i32 0
}

declare dso_local i32 @walk_linearmapping(%struct.pg_state*) #1

declare dso_local i32 @walk_pagetables(%struct.pg_state*) #1

declare dso_local i32 @walk_vmemmap(%struct.pg_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
