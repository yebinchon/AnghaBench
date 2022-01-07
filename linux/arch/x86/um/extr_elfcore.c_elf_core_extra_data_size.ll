; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/um/extr_elfcore.c_elf_core_extra_data_size.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/um/extr_elfcore.c_elf_core_extra_data_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfhdr = type { i32, i64 }
%struct.elf_phdr = type { i64, i32 }

@vsyscall_ehdr = common dso_local global i64 0, align 8
@PT_LOAD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @elf_core_extra_data_size() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.elfhdr*, align 8
  %3 = alloca %struct.elf_phdr*, align 8
  %4 = alloca i32, align 4
  %5 = load i64, i64* @vsyscall_ehdr, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %44

7:                                                ; preds = %0
  %8 = load i64, i64* @vsyscall_ehdr, align 8
  %9 = inttoptr i64 %8 to %struct.elfhdr*
  store %struct.elfhdr* %9, %struct.elfhdr** %2, align 8
  %10 = load i64, i64* @vsyscall_ehdr, align 8
  %11 = load %struct.elfhdr*, %struct.elfhdr** %2, align 8
  %12 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %10, %13
  %15 = inttoptr i64 %14 to %struct.elf_phdr*
  store %struct.elf_phdr* %15, %struct.elf_phdr** %3, align 8
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %40, %7
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.elfhdr*, %struct.elfhdr** %2, align 8
  %19 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %16
  %23 = load %struct.elf_phdr*, %struct.elf_phdr** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %23, i64 %25
  %27 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PT_LOAD, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %22
  %32 = load %struct.elf_phdr*, %struct.elf_phdr** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %32, i64 %34
  %36 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %1, align 8
  br label %45

39:                                               ; preds = %22
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %16

43:                                               ; preds = %16
  br label %44

44:                                               ; preds = %43, %0
  store i64 0, i64* %1, align 8
  br label %45

45:                                               ; preds = %44, %31
  %46 = load i64, i64* %1, align 8
  ret i64 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
