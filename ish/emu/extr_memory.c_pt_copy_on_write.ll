; ModuleID = '/home/carl/AnghaBench/ish/emu/extr_memory.c_pt_copy_on_write.c'
source_filename = "/home/carl/AnghaBench/ish/emu/extr_memory.c_pt_copy_on_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem = type { i32 }
%struct.pt_entry = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@P_SHARED = common dso_local global i32 0, align 4
@P_COW = common dso_local global i32 0, align 4
@P_COMPILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_copy_on_write(%struct.mem* %0, %struct.mem* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mem*, align 8
  %7 = alloca %struct.mem*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.pt_entry*, align 8
  %12 = alloca %struct.pt_entry*, align 8
  store %struct.mem* %0, %struct.mem** %6, align 8
  store %struct.mem* %1, %struct.mem** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* %8, align 8
  store i64 %13, i64* %10, align 8
  br label %14

14:                                               ; preds = %77, %4
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = add nsw i64 %16, %17
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %80

20:                                               ; preds = %14
  %21 = load %struct.mem*, %struct.mem** %6, align 8
  %22 = load i64, i64* %10, align 8
  %23 = call %struct.pt_entry* @mem_pt(%struct.mem* %21, i64 %22)
  store %struct.pt_entry* %23, %struct.pt_entry** %11, align 8
  %24 = load %struct.pt_entry*, %struct.pt_entry** %11, align 8
  %25 = icmp eq %struct.pt_entry* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %77

27:                                               ; preds = %20
  %28 = load %struct.mem*, %struct.mem** %7, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call i64 @pt_unmap_always(%struct.mem* %28, i64 %29, i32 1)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 -1, i32* %5, align 4
  br label %85

33:                                               ; preds = %27
  %34 = load %struct.pt_entry*, %struct.pt_entry** %11, align 8
  %35 = getelementptr inbounds %struct.pt_entry, %struct.pt_entry* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @P_SHARED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @P_COW, align 4
  %42 = load %struct.pt_entry*, %struct.pt_entry** %11, align 8
  %43 = getelementptr inbounds %struct.pt_entry, %struct.pt_entry* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %40, %33
  %47 = load i32, i32* @P_COMPILED, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.pt_entry*, %struct.pt_entry** %11, align 8
  %50 = getelementptr inbounds %struct.pt_entry, %struct.pt_entry* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load %struct.pt_entry*, %struct.pt_entry** %11, align 8
  %54 = getelementptr inbounds %struct.pt_entry, %struct.pt_entry* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load %struct.mem*, %struct.mem** %7, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call %struct.pt_entry* @mem_pt_new(%struct.mem* %59, i64 %60)
  store %struct.pt_entry* %61, %struct.pt_entry** %12, align 8
  %62 = load %struct.pt_entry*, %struct.pt_entry** %11, align 8
  %63 = getelementptr inbounds %struct.pt_entry, %struct.pt_entry* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load %struct.pt_entry*, %struct.pt_entry** %12, align 8
  %66 = getelementptr inbounds %struct.pt_entry, %struct.pt_entry* %65, i32 0, i32 2
  store %struct.TYPE_2__* %64, %struct.TYPE_2__** %66, align 8
  %67 = load %struct.pt_entry*, %struct.pt_entry** %11, align 8
  %68 = getelementptr inbounds %struct.pt_entry, %struct.pt_entry* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.pt_entry*, %struct.pt_entry** %12, align 8
  %71 = getelementptr inbounds %struct.pt_entry, %struct.pt_entry* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.pt_entry*, %struct.pt_entry** %11, align 8
  %73 = getelementptr inbounds %struct.pt_entry, %struct.pt_entry* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.pt_entry*, %struct.pt_entry** %12, align 8
  %76 = getelementptr inbounds %struct.pt_entry, %struct.pt_entry* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %46, %26
  %78 = load %struct.mem*, %struct.mem** %6, align 8
  %79 = call i32 @mem_next_page(%struct.mem* %78, i64* %10)
  br label %14

80:                                               ; preds = %14
  %81 = load %struct.mem*, %struct.mem** %6, align 8
  %82 = call i32 @mem_changed(%struct.mem* %81)
  %83 = load %struct.mem*, %struct.mem** %7, align 8
  %84 = call i32 @mem_changed(%struct.mem* %83)
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %80, %32
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local %struct.pt_entry* @mem_pt(%struct.mem*, i64) #1

declare dso_local i64 @pt_unmap_always(%struct.mem*, i64, i32) #1

declare dso_local %struct.pt_entry* @mem_pt_new(%struct.mem*, i64) #1

declare dso_local i32 @mem_next_page(%struct.mem*, i64*) #1

declare dso_local i32 @mem_changed(%struct.mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
