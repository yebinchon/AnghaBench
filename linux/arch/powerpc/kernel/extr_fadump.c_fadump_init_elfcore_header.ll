; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_fadump.c_fadump_init_elfcore_header.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_fadump.c_fadump_init_elfcore_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfhdr = type { i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i8*, i32, i32, i8** }

@ELFMAG = common dso_local global i32 0, align 4
@SELFMAG = common dso_local global i32 0, align 4
@ELF_CLASS = common dso_local global i8* null, align 8
@EI_CLASS = common dso_local global i64 0, align 8
@ELF_DATA = common dso_local global i8* null, align 8
@EI_DATA = common dso_local global i64 0, align 8
@EV_CURRENT = common dso_local global i8* null, align 8
@EI_VERSION = common dso_local global i64 0, align 8
@ELF_OSABI = common dso_local global i8* null, align 8
@EI_OSABI = common dso_local global i64 0, align 8
@EI_PAD = common dso_local global i32 0, align 4
@EI_NIDENT = common dso_local global i32 0, align 4
@ET_CORE = common dso_local global i32 0, align 4
@ELF_ARCH = common dso_local global i32 0, align 4
@_CALL_ELF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @fadump_init_elfcore_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fadump_init_elfcore_header(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.elfhdr*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.elfhdr*
  store %struct.elfhdr* %5, %struct.elfhdr** %3, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 96
  store i8* %7, i8** %2, align 8
  %8 = load %struct.elfhdr*, %struct.elfhdr** %3, align 8
  %9 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %8, i32 0, i32 13
  %10 = load i8**, i8*** %9, align 8
  %11 = load i32, i32* @ELFMAG, align 4
  %12 = load i32, i32* @SELFMAG, align 4
  %13 = call i32 @memcpy(i8** %10, i32 %11, i32 %12)
  %14 = load i8*, i8** @ELF_CLASS, align 8
  %15 = load %struct.elfhdr*, %struct.elfhdr** %3, align 8
  %16 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %15, i32 0, i32 13
  %17 = load i8**, i8*** %16, align 8
  %18 = load i64, i64* @EI_CLASS, align 8
  %19 = getelementptr inbounds i8*, i8** %17, i64 %18
  store i8* %14, i8** %19, align 8
  %20 = load i8*, i8** @ELF_DATA, align 8
  %21 = load %struct.elfhdr*, %struct.elfhdr** %3, align 8
  %22 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %21, i32 0, i32 13
  %23 = load i8**, i8*** %22, align 8
  %24 = load i64, i64* @EI_DATA, align 8
  %25 = getelementptr inbounds i8*, i8** %23, i64 %24
  store i8* %20, i8** %25, align 8
  %26 = load i8*, i8** @EV_CURRENT, align 8
  %27 = load %struct.elfhdr*, %struct.elfhdr** %3, align 8
  %28 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %27, i32 0, i32 13
  %29 = load i8**, i8*** %28, align 8
  %30 = load i64, i64* @EI_VERSION, align 8
  %31 = getelementptr inbounds i8*, i8** %29, i64 %30
  store i8* %26, i8** %31, align 8
  %32 = load i8*, i8** @ELF_OSABI, align 8
  %33 = load %struct.elfhdr*, %struct.elfhdr** %3, align 8
  %34 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %33, i32 0, i32 13
  %35 = load i8**, i8*** %34, align 8
  %36 = load i64, i64* @EI_OSABI, align 8
  %37 = getelementptr inbounds i8*, i8** %35, i64 %36
  store i8* %32, i8** %37, align 8
  %38 = load %struct.elfhdr*, %struct.elfhdr** %3, align 8
  %39 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %38, i32 0, i32 13
  %40 = load i8**, i8*** %39, align 8
  %41 = load i32, i32* @EI_PAD, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i32, i32* @EI_NIDENT, align 4
  %45 = load i32, i32* @EI_PAD, align 4
  %46 = sub nsw i32 %44, %45
  %47 = call i32 @memset(i8** %43, i32 0, i32 %46)
  %48 = load i32, i32* @ET_CORE, align 4
  %49 = load %struct.elfhdr*, %struct.elfhdr** %3, align 8
  %50 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %49, i32 0, i32 12
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @ELF_ARCH, align 4
  %52 = load %struct.elfhdr*, %struct.elfhdr** %3, align 8
  %53 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %52, i32 0, i32 11
  store i32 %51, i32* %53, align 8
  %54 = load i8*, i8** @EV_CURRENT, align 8
  %55 = load %struct.elfhdr*, %struct.elfhdr** %3, align 8
  %56 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %55, i32 0, i32 10
  store i8* %54, i8** %56, align 8
  %57 = load %struct.elfhdr*, %struct.elfhdr** %3, align 8
  %58 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %57, i32 0, i32 9
  store i64 0, i64* %58, align 8
  %59 = load %struct.elfhdr*, %struct.elfhdr** %3, align 8
  %60 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %59, i32 0, i32 0
  store i32 96, i32* %60, align 8
  %61 = load %struct.elfhdr*, %struct.elfhdr** %3, align 8
  %62 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %61, i32 0, i32 8
  store i64 0, i64* %62, align 8
  %63 = load %struct.elfhdr*, %struct.elfhdr** %3, align 8
  %64 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %63, i32 0, i32 7
  store i64 0, i64* %64, align 8
  %65 = load %struct.elfhdr*, %struct.elfhdr** %3, align 8
  %66 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %65, i32 0, i32 1
  store i32 96, i32* %66, align 4
  %67 = load %struct.elfhdr*, %struct.elfhdr** %3, align 8
  %68 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %67, i32 0, i32 2
  store i32 4, i32* %68, align 8
  %69 = load %struct.elfhdr*, %struct.elfhdr** %3, align 8
  %70 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %69, i32 0, i32 6
  store i64 0, i64* %70, align 8
  %71 = load %struct.elfhdr*, %struct.elfhdr** %3, align 8
  %72 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %71, i32 0, i32 5
  store i64 0, i64* %72, align 8
  %73 = load %struct.elfhdr*, %struct.elfhdr** %3, align 8
  %74 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %73, i32 0, i32 4
  store i64 0, i64* %74, align 8
  %75 = load %struct.elfhdr*, %struct.elfhdr** %3, align 8
  %76 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %75, i32 0, i32 3
  store i64 0, i64* %76, align 8
  ret i32 0
}

declare dso_local i32 @memcpy(i8**, i32, i32) #1

declare dso_local i32 @memset(i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
