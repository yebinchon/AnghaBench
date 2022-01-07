; ModuleID = '/home/carl/AnghaBench/ish/emu/extr_memory.c_mem_pt_new.c'
source_filename = "/home/carl/AnghaBench/ish/emu/extr_memory.c_mem_pt_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_entry = type { i32 }
%struct.mem = type { i32, %struct.pt_entry** }

@MEM_PGDIR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pt_entry* (%struct.mem*, i32)* @mem_pt_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pt_entry* @mem_pt_new(%struct.mem* %0, i32 %1) #0 {
  %3 = alloca %struct.mem*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_entry*, align 8
  store %struct.mem* %0, %struct.mem** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mem*, %struct.mem** %3, align 8
  %7 = getelementptr inbounds %struct.mem, %struct.mem* %6, i32 0, i32 1
  %8 = load %struct.pt_entry**, %struct.pt_entry*** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @PGDIR_TOP(i32 %9)
  %11 = getelementptr inbounds %struct.pt_entry*, %struct.pt_entry** %8, i64 %10
  %12 = load %struct.pt_entry*, %struct.pt_entry** %11, align 8
  store %struct.pt_entry* %12, %struct.pt_entry** %5, align 8
  %13 = load %struct.pt_entry*, %struct.pt_entry** %5, align 8
  %14 = icmp eq %struct.pt_entry* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = load i32, i32* @MEM_PGDIR_SIZE, align 4
  %17 = call %struct.pt_entry* @calloc(i32 %16, i32 4)
  %18 = load %struct.mem*, %struct.mem** %3, align 8
  %19 = getelementptr inbounds %struct.mem, %struct.mem* %18, i32 0, i32 1
  %20 = load %struct.pt_entry**, %struct.pt_entry*** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @PGDIR_TOP(i32 %21)
  %23 = getelementptr inbounds %struct.pt_entry*, %struct.pt_entry** %20, i64 %22
  store %struct.pt_entry* %17, %struct.pt_entry** %23, align 8
  store %struct.pt_entry* %17, %struct.pt_entry** %5, align 8
  %24 = load %struct.mem*, %struct.mem** %3, align 8
  %25 = getelementptr inbounds %struct.mem, %struct.mem* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  br label %28

28:                                               ; preds = %15, %2
  %29 = load %struct.pt_entry*, %struct.pt_entry** %5, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @PGDIR_BOTTOM(i32 %30)
  %32 = getelementptr inbounds %struct.pt_entry, %struct.pt_entry* %29, i64 %31
  ret %struct.pt_entry* %32
}

declare dso_local i64 @PGDIR_TOP(i32) #1

declare dso_local %struct.pt_entry* @calloc(i32, i32) #1

declare dso_local i64 @PGDIR_BOTTOM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
