; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/um/extr_elfcore.c_elf_core_write_extra_phdrs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/um/extr_elfcore.c_elf_core_write_extra_phdrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coredump_params = type { i32 }
%struct.elfhdr = type { i32, i64 }
%struct.elf_phdr = type { i64, i64, i64, i64 }

@vsyscall_ehdr = common dso_local global i64 0, align 8
@PT_LOAD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elf_core_write_extra_phdrs(%struct.coredump_params* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.coredump_params*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.elfhdr*, align 8
  %7 = alloca %struct.elf_phdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.elf_phdr, align 8
  store %struct.coredump_params* %0, %struct.coredump_params** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i64, i64* @vsyscall_ehdr, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %62

13:                                               ; preds = %2
  %14 = load i64, i64* @vsyscall_ehdr, align 8
  %15 = inttoptr i64 %14 to %struct.elfhdr*
  store %struct.elfhdr* %15, %struct.elfhdr** %6, align 8
  %16 = load i64, i64* @vsyscall_ehdr, align 8
  %17 = load %struct.elfhdr*, %struct.elfhdr** %6, align 8
  %18 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %16, %19
  %21 = inttoptr i64 %20 to %struct.elf_phdr*
  store %struct.elf_phdr* %21, %struct.elf_phdr** %7, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %58, %13
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.elfhdr*, %struct.elfhdr** %6, align 8
  %25 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %61

28:                                               ; preds = %22
  %29 = load %struct.elf_phdr*, %struct.elf_phdr** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %29, i64 %31
  %33 = bitcast %struct.elf_phdr* %10 to i8*
  %34 = bitcast %struct.elf_phdr* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 32, i1 false)
  %35 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %10, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PT_LOAD, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %28
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %10, i32 0, i32 2
  store i64 %40, i64* %41, align 8
  store i64 %40, i64* %9, align 8
  %42 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %10, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* %5, align 8
  br label %51

46:                                               ; preds = %28
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %10, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, %47
  store i64 %50, i64* %48, align 8
  br label %51

51:                                               ; preds = %46, %39
  %52 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %10, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load %struct.coredump_params*, %struct.coredump_params** %4, align 8
  %54 = call i32 @dump_emit(%struct.coredump_params* %53, %struct.elf_phdr* %10, i32 32)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %63

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %22

61:                                               ; preds = %22
  br label %62

62:                                               ; preds = %61, %2
  store i32 1, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %56
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dump_emit(%struct.coredump_params*, %struct.elf_phdr*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
