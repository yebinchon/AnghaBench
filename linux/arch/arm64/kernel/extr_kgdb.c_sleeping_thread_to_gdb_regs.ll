; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_kgdb.c_sleeping_thread_to_gdb_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_kgdb.c_sleeping_thread_to_gdb_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cpu_context }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@NUMREGBYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sleeping_thread_to_gdb_regs(i64* %0, %struct.task_struct* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.cpu_context*, align 8
  store i64* %0, i64** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %7 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.cpu_context* %8, %struct.cpu_context** %5, align 8
  %9 = load i64*, i64** %3, align 8
  %10 = bitcast i64* %9 to i8*
  %11 = load i32, i32* @NUMREGBYTES, align 4
  %12 = call i32 @memset(i8* %10, i32 0, i32 %11)
  %13 = load %struct.cpu_context*, %struct.cpu_context** %5, align 8
  %14 = getelementptr inbounds %struct.cpu_context, %struct.cpu_context* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64*, i64** %3, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 19
  store i64 %15, i64* %17, align 8
  %18 = load %struct.cpu_context*, %struct.cpu_context** %5, align 8
  %19 = getelementptr inbounds %struct.cpu_context, %struct.cpu_context* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64*, i64** %3, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 20
  store i64 %20, i64* %22, align 8
  %23 = load %struct.cpu_context*, %struct.cpu_context** %5, align 8
  %24 = getelementptr inbounds %struct.cpu_context, %struct.cpu_context* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64*, i64** %3, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 21
  store i64 %25, i64* %27, align 8
  %28 = load %struct.cpu_context*, %struct.cpu_context** %5, align 8
  %29 = getelementptr inbounds %struct.cpu_context, %struct.cpu_context* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = load i64*, i64** %3, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 22
  store i64 %30, i64* %32, align 8
  %33 = load %struct.cpu_context*, %struct.cpu_context** %5, align 8
  %34 = getelementptr inbounds %struct.cpu_context, %struct.cpu_context* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** %3, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 23
  store i64 %35, i64* %37, align 8
  %38 = load %struct.cpu_context*, %struct.cpu_context** %5, align 8
  %39 = getelementptr inbounds %struct.cpu_context, %struct.cpu_context* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = load i64*, i64** %3, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 24
  store i64 %40, i64* %42, align 8
  %43 = load %struct.cpu_context*, %struct.cpu_context** %5, align 8
  %44 = getelementptr inbounds %struct.cpu_context, %struct.cpu_context* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %3, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 25
  store i64 %45, i64* %47, align 8
  %48 = load %struct.cpu_context*, %struct.cpu_context** %5, align 8
  %49 = getelementptr inbounds %struct.cpu_context, %struct.cpu_context* %48, i32 0, i32 7
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %3, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 26
  store i64 %50, i64* %52, align 8
  %53 = load %struct.cpu_context*, %struct.cpu_context** %5, align 8
  %54 = getelementptr inbounds %struct.cpu_context, %struct.cpu_context* %53, i32 0, i32 8
  %55 = load i64, i64* %54, align 8
  %56 = load i64*, i64** %3, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 27
  store i64 %55, i64* %57, align 8
  %58 = load %struct.cpu_context*, %struct.cpu_context** %5, align 8
  %59 = getelementptr inbounds %struct.cpu_context, %struct.cpu_context* %58, i32 0, i32 9
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %3, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 28
  store i64 %60, i64* %62, align 8
  %63 = load %struct.cpu_context*, %struct.cpu_context** %5, align 8
  %64 = getelementptr inbounds %struct.cpu_context, %struct.cpu_context* %63, i32 0, i32 10
  %65 = load i64, i64* %64, align 8
  %66 = load i64*, i64** %3, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 29
  store i64 %65, i64* %67, align 8
  %68 = load %struct.cpu_context*, %struct.cpu_context** %5, align 8
  %69 = getelementptr inbounds %struct.cpu_context, %struct.cpu_context* %68, i32 0, i32 11
  %70 = load i64, i64* %69, align 8
  %71 = load i64*, i64** %3, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 31
  store i64 %70, i64* %72, align 8
  %73 = load %struct.cpu_context*, %struct.cpu_context** %5, align 8
  %74 = getelementptr inbounds %struct.cpu_context, %struct.cpu_context* %73, i32 0, i32 12
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** %3, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 32
  store i64 %75, i64* %77, align 8
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
