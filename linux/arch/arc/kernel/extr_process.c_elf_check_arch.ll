; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/kernel/extr_process.c_elf_check_arch.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/kernel/extr_process.c_elf_check_arch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf32_hdr = type { i64, i32 }

@EM_ARC_INUSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"ELF not built for %s ISA\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"ARCompact\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ARCv2\00", align 1
@EF_ARC_OSABI_MSK = common dso_local global i32 0, align 4
@EF_ARC_OSABI_CURRENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"ABI mismatch - you need newer toolchain\0A\00", align 1
@SIGSEGV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elf_check_arch(%struct.elf32_hdr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.elf32_hdr*, align 8
  %4 = alloca i32, align 4
  store %struct.elf32_hdr* %0, %struct.elf32_hdr** %3, align 8
  %5 = load %struct.elf32_hdr*, %struct.elf32_hdr** %3, align 8
  %6 = getelementptr inbounds %struct.elf32_hdr, %struct.elf32_hdr* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @EM_ARC_INUSE, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = call i64 (...) @is_isa_arcompact()
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %15 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %14)
  store i32 0, i32* %2, align 4
  br label %30

16:                                               ; preds = %1
  %17 = load %struct.elf32_hdr*, %struct.elf32_hdr** %3, align 8
  %18 = getelementptr inbounds %struct.elf32_hdr, %struct.elf32_hdr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @EF_ARC_OSABI_MSK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @EF_ARC_OSABI_CURRENT, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %27 = load i32, i32* @SIGSEGV, align 4
  %28 = call i32 @force_sigsegv(i32 %27)
  store i32 0, i32* %2, align 4
  br label %30

29:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %25, %10
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @is_isa_arcompact(...) #1

declare dso_local i32 @force_sigsegv(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
