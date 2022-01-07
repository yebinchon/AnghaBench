; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_exec.c_read_prg_headers.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_exec.c_read_prg_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.fd*, i32, i32)*, i64 (%struct.fd*, %struct.prg_header*, i64)* }
%struct.prg_header = type { i32 }
%struct.elf_header = type { i32, i32 }

@_ENOMEM = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@_EIO = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@_ENOEXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fd*, i64, %struct.prg_header**)* @read_prg_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_prg_headers(%struct.fd* %0, i64 %1, %struct.prg_header** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.elf_header, align 4
  %6 = alloca %struct.fd*, align 8
  %7 = alloca %struct.prg_header**, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.prg_header*, align 8
  %10 = bitcast %struct.elf_header* %5 to i64*
  store i64 %1, i64* %10, align 4
  store %struct.fd* %0, %struct.fd** %6, align 8
  store %struct.prg_header** %2, %struct.prg_header*** %7, align 8
  %11 = getelementptr inbounds %struct.elf_header, %struct.elf_header* %5, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 4, %13
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call %struct.prg_header* @malloc(i64 %15)
  store %struct.prg_header* %16, %struct.prg_header** %9, align 8
  %17 = load %struct.prg_header*, %struct.prg_header** %9, align 8
  %18 = icmp eq %struct.prg_header* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @_ENOMEM, align 4
  store i32 %20, i32* %4, align 4
  br label %61

21:                                               ; preds = %3
  %22 = load %struct.fd*, %struct.fd** %6, align 8
  %23 = getelementptr inbounds %struct.fd, %struct.fd* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64 (%struct.fd*, i32, i32)*, i64 (%struct.fd*, i32, i32)** %25, align 8
  %27 = load %struct.fd*, %struct.fd** %6, align 8
  %28 = getelementptr inbounds %struct.elf_header, %struct.elf_header* %5, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SEEK_SET, align 4
  %31 = call i64 %26(%struct.fd* %27, i32 %29, i32 %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %21
  %34 = load %struct.prg_header*, %struct.prg_header** %9, align 8
  %35 = call i32 @free(%struct.prg_header* %34)
  %36 = load i32, i32* @_EIO, align 4
  store i32 %36, i32* %4, align 4
  br label %61

37:                                               ; preds = %21
  %38 = load %struct.fd*, %struct.fd** %6, align 8
  %39 = getelementptr inbounds %struct.fd, %struct.fd* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64 (%struct.fd*, %struct.prg_header*, i64)*, i64 (%struct.fd*, %struct.prg_header*, i64)** %41, align 8
  %43 = load %struct.fd*, %struct.fd** %6, align 8
  %44 = load %struct.prg_header*, %struct.prg_header** %9, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i64 %42(%struct.fd* %43, %struct.prg_header* %44, i64 %45)
  %47 = load i64, i64* %8, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %37
  %50 = load %struct.prg_header*, %struct.prg_header** %9, align 8
  %51 = call i32 @free(%struct.prg_header* %50)
  %52 = load i64, i64* @errno, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @_EIO, align 4
  store i32 %55, i32* %4, align 4
  br label %61

56:                                               ; preds = %49
  %57 = load i32, i32* @_ENOEXEC, align 4
  store i32 %57, i32* %4, align 4
  br label %61

58:                                               ; preds = %37
  %59 = load %struct.prg_header*, %struct.prg_header** %9, align 8
  %60 = load %struct.prg_header**, %struct.prg_header*** %7, align 8
  store %struct.prg_header* %59, %struct.prg_header** %60, align 8
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %58, %56, %54, %33, %19
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.prg_header* @malloc(i64) #1

declare dso_local i32 @free(%struct.prg_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
