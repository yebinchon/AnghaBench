; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_......fsbinfmt_elf.c_elf_map.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_......fsbinfmt_elf.c_elf_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.file = type { i32 }
%struct.elf_phdr = type { i64, i64, i32 }

@MAP_FIXED_NOREPLACE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"%d (%s): Uhuuh, elf segment at %px requested but the memory is mapped already\0A\00", align 1
@current = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i64, %struct.elf_phdr*, i32, i32, i64)* @elf_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @elf_map(%struct.file* %0, i64 %1, %struct.elf_phdr* %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.elf_phdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.elf_phdr* %2, %struct.elf_phdr** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %17 = load %struct.elf_phdr*, %struct.elf_phdr** %10, align 8
  %18 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.elf_phdr*, %struct.elf_phdr** %10, align 8
  %21 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @ELF_PAGEOFFSET(i32 %22)
  %24 = add i64 %19, %23
  store i64 %24, i64* %15, align 8
  %25 = load %struct.elf_phdr*, %struct.elf_phdr** %10, align 8
  %26 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.elf_phdr*, %struct.elf_phdr** %10, align 8
  %29 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @ELF_PAGEOFFSET(i32 %30)
  %32 = sub i64 %27, %31
  store i64 %32, i64* %16, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i64 @ELF_PAGESTART(i64 %33)
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %15, align 8
  %36 = call i64 @ELF_PAGEALIGN(i64 %35)
  store i64 %36, i64* %15, align 8
  %37 = load i64, i64* %15, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %6
  %40 = load i64, i64* %9, align 8
  store i64 %40, i64* %7, align 8
  br label %97

41:                                               ; preds = %6
  %42 = load i64, i64* %13, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %41
  %45 = load i64, i64* %13, align 8
  %46 = call i64 @ELF_PAGEALIGN(i64 %45)
  store i64 %46, i64* %13, align 8
  %47 = load %struct.file*, %struct.file** %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* %13, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i64, i64* %16, align 8
  %53 = call i64 @vm_mmap(%struct.file* %47, i64 %48, i64 %49, i32 %50, i32 %51, i64 %52)
  store i64 %53, i64* %14, align 8
  %54 = load i64, i64* %14, align 8
  %55 = call i32 @BAD_ADDR(i64 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %44
  %58 = load i64, i64* %14, align 8
  %59 = load i64, i64* %15, align 8
  %60 = add i64 %58, %59
  %61 = load i64, i64* %13, align 8
  %62 = load i64, i64* %15, align 8
  %63 = sub i64 %61, %62
  %64 = call i32 @vm_munmap(i64 %60, i64 %63)
  br label %65

65:                                               ; preds = %57, %44
  br label %74

66:                                               ; preds = %41
  %67 = load %struct.file*, %struct.file** %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %15, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i64, i64* %16, align 8
  %73 = call i64 @vm_mmap(%struct.file* %67, i64 %68, i64 %69, i32 %70, i32 %71, i64 %72)
  store i64 %73, i64* %14, align 8
  br label %74

74:                                               ; preds = %66, %65
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @MAP_FIXED_NOREPLACE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %74
  %80 = load i64, i64* %14, align 8
  %81 = inttoptr i64 %80 to i8*
  %82 = call i32 @PTR_ERR(i8* %81)
  %83 = load i32, i32* @EEXIST, align 4
  %84 = sub nsw i32 0, %83
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %79
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %88 = call i32 @task_pid_nr(%struct.TYPE_3__* %87)
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i64, i64* %9, align 8
  %93 = inttoptr i64 %92 to i8*
  %94 = call i32 @pr_info(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %88, i32 %91, i8* %93)
  br label %95

95:                                               ; preds = %86, %79, %74
  %96 = load i64, i64* %14, align 8
  store i64 %96, i64* %7, align 8
  br label %97

97:                                               ; preds = %95, %39
  %98 = load i64, i64* %7, align 8
  ret i64 %98
}

declare dso_local i64 @ELF_PAGEOFFSET(i32) #1

declare dso_local i64 @ELF_PAGESTART(i64) #1

declare dso_local i64 @ELF_PAGEALIGN(i64) #1

declare dso_local i64 @vm_mmap(%struct.file*, i64, i64, i32, i32, i64) #1

declare dso_local i32 @BAD_ADDR(i64) #1

declare dso_local i32 @vm_munmap(i64, i64) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i8*) #1

declare dso_local i32 @task_pid_nr(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
