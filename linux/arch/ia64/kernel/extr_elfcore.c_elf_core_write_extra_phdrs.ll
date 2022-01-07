; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_elfcore.c_elf_core_write_extra_phdrs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_elfcore.c_elf_core_write_extra_phdrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.coredump_params = type { i32 }
%struct.elf_phdr = type { i64, i64, i64, i64, i64 }

@GATE_ADDR = common dso_local global i64 0, align 8
@GATE_EHDR = common dso_local global %struct.TYPE_2__* null, align 8
@PT_LOAD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elf_core_write_extra_phdrs(%struct.coredump_params* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.coredump_params*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.elf_phdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.elf_phdr, align 8
  store %struct.coredump_params* %0, %struct.coredump_params** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* @GATE_ADDR, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @GATE_EHDR, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %10, %13
  %15 = inttoptr i64 %14 to %struct.elf_phdr*
  store %struct.elf_phdr* %15, %struct.elf_phdr** %6, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %66, %2
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @GATE_EHDR, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %69

22:                                               ; preds = %16
  %23 = load %struct.elf_phdr*, %struct.elf_phdr** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %23, i64 %25
  %27 = bitcast %struct.elf_phdr* %9 to i8*
  %28 = bitcast %struct.elf_phdr* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 40, i1 false)
  %29 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %9, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PT_LOAD, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %9, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @PAGE_ALIGN(i64 %35)
  %37 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %9, i32 0, i32 4
  store i64 %36, i64* %37, align 8
  %38 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %9, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %9, i32 0, i32 3
  store i64 %39, i64* %40, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %33
  %44 = load i64, i64* %5, align 8
  %45 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %9, i32 0, i32 2
  store i64 %44, i64* %45, align 8
  store i64 %44, i64* %8, align 8
  %46 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %9, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = add nsw i64 %48, %47
  store i64 %49, i64* %5, align 8
  br label %53

50:                                               ; preds = %33
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %9, i32 0, i32 2
  store i64 %51, i64* %52, align 8
  br label %53

53:                                               ; preds = %50, %43
  br label %59

54:                                               ; preds = %22
  %55 = load i64, i64* %8, align 8
  %56 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %9, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, %55
  store i64 %58, i64* %56, align 8
  br label %59

59:                                               ; preds = %54, %53
  %60 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %9, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load %struct.coredump_params*, %struct.coredump_params** %4, align 8
  %62 = call i32 @dump_emit(%struct.coredump_params* %61, %struct.elf_phdr* %9, i32 40)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %70

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %16

69:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %64
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @PAGE_ALIGN(i64) #2

declare dso_local i32 @dump_emit(%struct.coredump_params*, %struct.elf_phdr*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
