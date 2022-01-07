; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_elfcore.c_elf_core_write_extra_data.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_elfcore.c_elf_core_write_extra_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.coredump_params = type { i32 }
%struct.elf_phdr = type { i64, i32, i64 }

@GATE_ADDR = common dso_local global i64 0, align 8
@GATE_EHDR = common dso_local global %struct.TYPE_2__* null, align 8
@PT_LOAD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elf_core_write_extra_data(%struct.coredump_params* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.coredump_params*, align 8
  %4 = alloca %struct.elf_phdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.coredump_params* %0, %struct.coredump_params** %3, align 8
  %8 = load i64, i64* @GATE_ADDR, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @GATE_EHDR, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %8, %11
  %13 = inttoptr i64 %12 to %struct.elf_phdr*
  store %struct.elf_phdr* %13, %struct.elf_phdr** %4, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %52, %1
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @GATE_EHDR, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %55

20:                                               ; preds = %14
  %21 = load %struct.elf_phdr*, %struct.elf_phdr** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %21, i64 %23
  %25 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PT_LOAD, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %20
  %30 = load %struct.elf_phdr*, %struct.elf_phdr** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %30, i64 %32
  %34 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** %6, align 8
  %37 = load %struct.elf_phdr*, %struct.elf_phdr** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %37, i64 %39
  %41 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @PAGE_ALIGN(i32 %42)
  store i64 %43, i64* %7, align 8
  %44 = load %struct.coredump_params*, %struct.coredump_params** %3, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @dump_emit(%struct.coredump_params* %44, i8* %45, i64 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %56

50:                                               ; preds = %29
  br label %55

51:                                               ; preds = %20
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %14

55:                                               ; preds = %50, %14
  store i32 1, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %49
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i64 @PAGE_ALIGN(i32) #1

declare dso_local i32 @dump_emit(%struct.coredump_params*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
