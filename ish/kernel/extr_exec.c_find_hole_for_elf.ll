; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_exec.c_find_hole_for_elf.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_exec.c_find_hole_for_elf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.elf_header = type { i32 }
%struct.prg_header = type { i64, i64, i64 }

@PT_LOAD = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_2__* null, align 8
@PAGE_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elf_header*, %struct.prg_header*)* @find_hole_for_elf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_hole_for_elf(%struct.elf_header* %0, %struct.prg_header* %1) #0 {
  %3 = alloca %struct.elf_header*, align 8
  %4 = alloca %struct.prg_header*, align 8
  %5 = alloca %struct.prg_header*, align 8
  %6 = alloca %struct.prg_header*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.elf_header* %0, %struct.elf_header** %3, align 8
  store %struct.prg_header* %1, %struct.prg_header** %4, align 8
  store %struct.prg_header* null, %struct.prg_header** %5, align 8
  store %struct.prg_header* null, %struct.prg_header** %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %40, %2
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.elf_header*, %struct.elf_header** %3, align 8
  %14 = getelementptr inbounds %struct.elf_header, %struct.elf_header* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %11
  %18 = load %struct.prg_header*, %struct.prg_header** %4, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.prg_header, %struct.prg_header* %18, i64 %20
  %22 = getelementptr inbounds %struct.prg_header, %struct.prg_header* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PT_LOAD, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %17
  %27 = load %struct.prg_header*, %struct.prg_header** %5, align 8
  %28 = icmp eq %struct.prg_header* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load %struct.prg_header*, %struct.prg_header** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.prg_header, %struct.prg_header* %30, i64 %32
  store %struct.prg_header* %33, %struct.prg_header** %5, align 8
  br label %34

34:                                               ; preds = %29, %26
  %35 = load %struct.prg_header*, %struct.prg_header** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.prg_header, %struct.prg_header* %35, i64 %37
  store %struct.prg_header* %38, %struct.prg_header** %6, align 8
  br label %39

39:                                               ; preds = %34, %17
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %11

43:                                               ; preds = %11
  store i64 0, i64* %8, align 8
  %44 = load %struct.prg_header*, %struct.prg_header** %5, align 8
  %45 = icmp ne %struct.prg_header* %44, null
  br i1 %45, label %46, label %62

46:                                               ; preds = %43
  %47 = load %struct.prg_header*, %struct.prg_header** %6, align 8
  %48 = getelementptr inbounds %struct.prg_header, %struct.prg_header* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.prg_header*, %struct.prg_header** %6, align 8
  %51 = getelementptr inbounds %struct.prg_header, %struct.prg_header* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = call i64 @PAGE_ROUND_UP(i64 %53)
  store i64 %54, i64* %9, align 8
  %55 = load %struct.prg_header*, %struct.prg_header** %5, align 8
  %56 = getelementptr inbounds %struct.prg_header, %struct.prg_header* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @PAGE(i64 %57)
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %10, align 8
  %61 = sub nsw i64 %59, %60
  store i64 %61, i64* %8, align 8
  br label %62

62:                                               ; preds = %46, %43
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @pt_find_hole(i32 %65, i64 %66)
  %68 = load i32, i32* @PAGE_BITS, align 4
  %69 = shl i32 %67, %68
  ret i32 %69
}

declare dso_local i64 @PAGE_ROUND_UP(i64) #1

declare dso_local i64 @PAGE(i64) #1

declare dso_local i32 @pt_find_hole(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
