; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_exec.c_read_header.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_exec.c_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.fd*, %struct.elf_header*, i32)*, i64 (%struct.fd*, i32, i32)* }
%struct.elf_header = type { i64, i64, i64, i32, i64, i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@_EIO = common dso_local global i32 0, align 4
@_ENOEXEC = common dso_local global i32 0, align 4
@ELF_MAGIC = common dso_local global i32 0, align 4
@ELF_EXECUTABLE = common dso_local global i64 0, align 8
@ELF_DYNAMIC = common dso_local global i64 0, align 8
@ELF_32BIT = common dso_local global i64 0, align 8
@ELF_LITTLEENDIAN = common dso_local global i64 0, align 8
@ELF_X86 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fd*, %struct.elf_header*)* @read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_header(%struct.fd* %0, %struct.elf_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fd*, align 8
  %5 = alloca %struct.elf_header*, align 8
  %6 = alloca i32, align 4
  store %struct.fd* %0, %struct.fd** %4, align 8
  store %struct.elf_header* %1, %struct.elf_header** %5, align 8
  %7 = load %struct.fd*, %struct.fd** %4, align 8
  %8 = getelementptr inbounds %struct.fd, %struct.fd* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i64 (%struct.fd*, i32, i32)*, i64 (%struct.fd*, i32, i32)** %10, align 8
  %12 = load %struct.fd*, %struct.fd** %4, align 8
  %13 = load i32, i32* @SEEK_SET, align 4
  %14 = call i64 %11(%struct.fd* %12, i32 0, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @_EIO, align 4
  store i32 %17, i32* %3, align 4
  br label %80

18:                                               ; preds = %2
  %19 = load %struct.fd*, %struct.fd** %4, align 8
  %20 = getelementptr inbounds %struct.fd, %struct.fd* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.fd*, %struct.elf_header*, i32)*, i32 (%struct.fd*, %struct.elf_header*, i32)** %22, align 8
  %24 = load %struct.fd*, %struct.fd** %4, align 8
  %25 = load %struct.elf_header*, %struct.elf_header** %5, align 8
  %26 = call i32 %23(%struct.fd* %24, %struct.elf_header* %25, i32 48)
  store i32 %26, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ne i64 %27, 48
  br i1 %28, label %29, label %36

29:                                               ; preds = %18
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @_EIO, align 4
  store i32 %33, i32* %3, align 4
  br label %80

34:                                               ; preds = %29
  %35 = load i32, i32* @_ENOEXEC, align 4
  store i32 %35, i32* %3, align 4
  br label %80

36:                                               ; preds = %18
  %37 = load %struct.elf_header*, %struct.elf_header** %5, align 8
  %38 = getelementptr inbounds %struct.elf_header, %struct.elf_header* %37, i32 0, i32 5
  %39 = load i32, i32* @ELF_MAGIC, align 4
  %40 = call i64 @memcmp(i32* %38, i32 %39, i32 4)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %77, label %42

42:                                               ; preds = %36
  %43 = load %struct.elf_header*, %struct.elf_header** %5, align 8
  %44 = getelementptr inbounds %struct.elf_header, %struct.elf_header* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ELF_EXECUTABLE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load %struct.elf_header*, %struct.elf_header** %5, align 8
  %50 = getelementptr inbounds %struct.elf_header, %struct.elf_header* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ELF_DYNAMIC, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %77, label %54

54:                                               ; preds = %48, %42
  %55 = load %struct.elf_header*, %struct.elf_header** %5, align 8
  %56 = getelementptr inbounds %struct.elf_header, %struct.elf_header* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ELF_32BIT, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %77, label %60

60:                                               ; preds = %54
  %61 = load %struct.elf_header*, %struct.elf_header** %5, align 8
  %62 = getelementptr inbounds %struct.elf_header, %struct.elf_header* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @ELF_LITTLEENDIAN, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %77, label %66

66:                                               ; preds = %60
  %67 = load %struct.elf_header*, %struct.elf_header** %5, align 8
  %68 = getelementptr inbounds %struct.elf_header, %struct.elf_header* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 1
  br i1 %70, label %77, label %71

71:                                               ; preds = %66
  %72 = load %struct.elf_header*, %struct.elf_header** %5, align 8
  %73 = getelementptr inbounds %struct.elf_header, %struct.elf_header* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @ELF_X86, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %71, %66, %60, %54, %48, %36
  %78 = load i32, i32* @_ENOEXEC, align 4
  store i32 %78, i32* %3, align 4
  br label %80

79:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %77, %34, %32, %16
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i64 @memcmp(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
