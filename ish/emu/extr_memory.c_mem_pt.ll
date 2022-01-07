; ModuleID = '/home/carl/AnghaBench/ish/emu/extr_memory.c_mem_pt.c'
source_filename = "/home/carl/AnghaBench/ish/emu/extr_memory.c_mem_pt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_entry = type { i32* }
%struct.mem = type { %struct.pt_entry** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pt_entry* @mem_pt(%struct.mem* %0, i32 %1) #0 {
  %3 = alloca %struct.pt_entry*, align 8
  %4 = alloca %struct.mem*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_entry*, align 8
  %7 = alloca %struct.pt_entry*, align 8
  store %struct.mem* %0, %struct.mem** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mem*, %struct.mem** %4, align 8
  %9 = getelementptr inbounds %struct.mem, %struct.mem* %8, i32 0, i32 0
  %10 = load %struct.pt_entry**, %struct.pt_entry*** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @PGDIR_TOP(i32 %11)
  %13 = getelementptr inbounds %struct.pt_entry*, %struct.pt_entry** %10, i64 %12
  %14 = load %struct.pt_entry*, %struct.pt_entry** %13, align 8
  store %struct.pt_entry* %14, %struct.pt_entry** %6, align 8
  %15 = load %struct.pt_entry*, %struct.pt_entry** %6, align 8
  %16 = icmp eq %struct.pt_entry* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store %struct.pt_entry* null, %struct.pt_entry** %3, align 8
  br label %30

18:                                               ; preds = %2
  %19 = load %struct.pt_entry*, %struct.pt_entry** %6, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @PGDIR_BOTTOM(i32 %20)
  %22 = getelementptr inbounds %struct.pt_entry, %struct.pt_entry* %19, i64 %21
  store %struct.pt_entry* %22, %struct.pt_entry** %7, align 8
  %23 = load %struct.pt_entry*, %struct.pt_entry** %7, align 8
  %24 = getelementptr inbounds %struct.pt_entry, %struct.pt_entry* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store %struct.pt_entry* null, %struct.pt_entry** %3, align 8
  br label %30

28:                                               ; preds = %18
  %29 = load %struct.pt_entry*, %struct.pt_entry** %7, align 8
  store %struct.pt_entry* %29, %struct.pt_entry** %3, align 8
  br label %30

30:                                               ; preds = %28, %27, %17
  %31 = load %struct.pt_entry*, %struct.pt_entry** %3, align 8
  ret %struct.pt_entry* %31
}

declare dso_local i64 @PGDIR_TOP(i32) #1

declare dso_local i64 @PGDIR_BOTTOM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
