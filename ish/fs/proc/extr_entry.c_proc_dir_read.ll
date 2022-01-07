; ModuleID = '/home/carl/AnghaBench/ish/fs/proc/extr_entry.c_proc_dir_read.c'
source_filename = "/home/carl/AnghaBench/ish/fs/proc/extr_entry.c_proc_dir_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_entry = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}*, i32, %struct.TYPE_2__* }

@.str = private unnamed_addr constant [33 x i8] c"read from invalid proc directory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_dir_read(%struct.proc_entry* %0, i64* %1, %struct.proc_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc_entry*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.proc_entry*, align 8
  store %struct.proc_entry* %0, %struct.proc_entry** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.proc_entry* %2, %struct.proc_entry** %7, align 8
  %8 = load %struct.proc_entry*, %struct.proc_entry** %5, align 8
  %9 = getelementptr inbounds %struct.proc_entry, %struct.proc_entry* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to i32 (%struct.proc_entry*, i64*, %struct.proc_entry*)**
  %13 = load i32 (%struct.proc_entry*, i64*, %struct.proc_entry*)*, i32 (%struct.proc_entry*, i64*, %struct.proc_entry*)** %12, align 8
  %14 = icmp ne i32 (%struct.proc_entry*, i64*, %struct.proc_entry*)* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %3
  %16 = load %struct.proc_entry*, %struct.proc_entry** %5, align 8
  %17 = getelementptr inbounds %struct.proc_entry, %struct.proc_entry* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to i32 (%struct.proc_entry*, i64*, %struct.proc_entry*)**
  %21 = load i32 (%struct.proc_entry*, i64*, %struct.proc_entry*)*, i32 (%struct.proc_entry*, i64*, %struct.proc_entry*)** %20, align 8
  %22 = load %struct.proc_entry*, %struct.proc_entry** %5, align 8
  %23 = load i64*, i64** %6, align 8
  %24 = load %struct.proc_entry*, %struct.proc_entry** %7, align 8
  %25 = call i32 %21(%struct.proc_entry* %22, i64* %23, %struct.proc_entry* %24)
  store i32 %25, i32* %4, align 4
  br label %66

26:                                               ; preds = %3
  %27 = load %struct.proc_entry*, %struct.proc_entry** %5, align 8
  %28 = getelementptr inbounds %struct.proc_entry, %struct.proc_entry* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = icmp ne %struct.TYPE_2__* %31, null
  br i1 %32, label %33, label %64

33:                                               ; preds = %26
  %34 = load i64*, i64** %6, align 8
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.proc_entry*, %struct.proc_entry** %5, align 8
  %37 = getelementptr inbounds %struct.proc_entry, %struct.proc_entry* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = udiv i64 %41, 24
  %43 = icmp uge i64 %35, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %66

45:                                               ; preds = %33
  %46 = load %struct.proc_entry*, %struct.proc_entry** %5, align 8
  %47 = getelementptr inbounds %struct.proc_entry, %struct.proc_entry* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i64*, i64** %6, align 8
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = load %struct.proc_entry*, %struct.proc_entry** %7, align 8
  %55 = getelementptr inbounds %struct.proc_entry, %struct.proc_entry* %54, i32 0, i32 1
  store %struct.TYPE_2__* %53, %struct.TYPE_2__** %55, align 8
  %56 = load %struct.proc_entry*, %struct.proc_entry** %5, align 8
  %57 = getelementptr inbounds %struct.proc_entry, %struct.proc_entry* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.proc_entry*, %struct.proc_entry** %7, align 8
  %60 = getelementptr inbounds %struct.proc_entry, %struct.proc_entry* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i64*, i64** %6, align 8
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %61, align 8
  store i32 1, i32* %4, align 4
  br label %66

64:                                               ; preds = %26
  %65 = call i32 @assert(i32 0)
  br label %66

66:                                               ; preds = %64, %45, %44, %15
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
