; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/um/extr_elfcore.c_elf_core_write_extra_data.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/um/extr_elfcore.c_elf_core_write_extra_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coredump_params = type { i32 }
%struct.elfhdr = type { i32, i64 }
%struct.elf_phdr = type { i64, i64, i64 }

@vsyscall_ehdr = common dso_local global i64 0, align 8
@PT_LOAD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elf_core_write_extra_data(%struct.coredump_params* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.coredump_params*, align 8
  %4 = alloca %struct.elfhdr*, align 8
  %5 = alloca %struct.elf_phdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.coredump_params* %0, %struct.coredump_params** %3, align 8
  %9 = load i64, i64* @vsyscall_ehdr, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %61

11:                                               ; preds = %1
  %12 = load i64, i64* @vsyscall_ehdr, align 8
  %13 = inttoptr i64 %12 to %struct.elfhdr*
  store %struct.elfhdr* %13, %struct.elfhdr** %4, align 8
  %14 = load i64, i64* @vsyscall_ehdr, align 8
  %15 = load %struct.elfhdr*, %struct.elfhdr** %4, align 8
  %16 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %14, %17
  %19 = inttoptr i64 %18 to %struct.elf_phdr*
  store %struct.elf_phdr* %19, %struct.elf_phdr** %5, align 8
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %57, %11
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.elfhdr*, %struct.elfhdr** %4, align 8
  %23 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %60

26:                                               ; preds = %20
  %27 = load %struct.elf_phdr*, %struct.elf_phdr** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %27, i64 %29
  %31 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PT_LOAD, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %26
  %36 = load %struct.elf_phdr*, %struct.elf_phdr** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %36, i64 %38
  %40 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8*
  store i8* %42, i8** %7, align 8
  %43 = load %struct.elf_phdr*, %struct.elf_phdr** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %43, i64 %45
  %47 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %8, align 8
  %49 = load %struct.coredump_params*, %struct.coredump_params** %3, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @dump_emit(%struct.coredump_params* %49, i8* %50, i64 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %62

55:                                               ; preds = %35
  br label %56

56:                                               ; preds = %55, %26
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %20

60:                                               ; preds = %20
  br label %61

61:                                               ; preds = %60, %1
  store i32 1, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %54
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @dump_emit(%struct.coredump_params*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
