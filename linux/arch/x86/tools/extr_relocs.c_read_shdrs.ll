; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/tools/extr_relocs.c_read_shdrs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/tools/extr_relocs.c_read_shdrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section = type { %struct.TYPE_5__, %struct.section* }
%struct.TYPE_5__ = type { i32, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@shnum = common dso_local global i32 0, align 4
@secs = common dso_local global %struct.section* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"Unable to allocate %d section headers\0A\00", align 1
@ehdr = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Seek to %d failed: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Cannot read ELF section headers %d/%d: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @read_shdrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_shdrs(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__, align 4
  %5 = alloca %struct.section*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32, i32* @shnum, align 4
  %7 = call %struct.section* @calloc(i32 %6, i32 80)
  store %struct.section* %7, %struct.section** @secs, align 8
  %8 = load %struct.section*, %struct.section** @secs, align 8
  %9 = icmp ne %struct.section* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @shnum, align 4
  %12 = call i32 (i8*, i32, ...) @die(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ehdr, i32 0, i32 0), align 4
  %16 = load i32, i32* @SEEK_SET, align 4
  %17 = call i64 @fseek(i32* %14, i32 %15, i32 %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ehdr, i32 0, i32 0), align 4
  %21 = load i32, i32* @errno, align 4
  %22 = call i32 @strerror(i32 %21)
  %23 = call i32 (i8*, i32, ...) @die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %22)
  br label %24

24:                                               ; preds = %19, %13
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %122, %24
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @shnum, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %125

29:                                               ; preds = %25
  %30 = load %struct.section*, %struct.section** @secs, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.section, %struct.section* %30, i64 %32
  store %struct.section* %33, %struct.section** %5, align 8
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @fread(%struct.TYPE_6__* %4, i32 40, i32 1, i32* %34)
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @shnum, align 4
  %40 = load i32, i32* @errno, align 4
  %41 = call i32 @strerror(i32 %40)
  %42 = call i32 (i8*, i32, ...) @die(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %38, i32 %39, i32 %41)
  br label %43

43:                                               ; preds = %37, %29
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 9
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @elf_word_to_cpu(i32 %45)
  %47 = load %struct.section*, %struct.section** %5, align 8
  %48 = getelementptr inbounds %struct.section, %struct.section* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 9
  store i8* %46, i8** %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 8
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @elf_word_to_cpu(i32 %51)
  %53 = load %struct.section*, %struct.section** %5, align 8
  %54 = getelementptr inbounds %struct.section, %struct.section* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 8
  store i8* %52, i8** %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @elf_xword_to_cpu(i32 %57)
  %59 = load %struct.section*, %struct.section** %5, align 8
  %60 = getelementptr inbounds %struct.section, %struct.section* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 7
  store i8* %58, i8** %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @elf_addr_to_cpu(i32 %63)
  %65 = load %struct.section*, %struct.section** %5, align 8
  %66 = getelementptr inbounds %struct.section, %struct.section* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 6
  store i32 %64, i32* %67, align 4
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @elf_off_to_cpu(i32 %69)
  %71 = load %struct.section*, %struct.section** %5, align 8
  %72 = getelementptr inbounds %struct.section, %struct.section* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 5
  store i32 %70, i32* %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @elf_xword_to_cpu(i32 %75)
  %77 = load %struct.section*, %struct.section** %5, align 8
  %78 = getelementptr inbounds %struct.section, %struct.section* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 4
  store i8* %76, i8** %79, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @elf_word_to_cpu(i32 %81)
  %83 = ptrtoint i8* %82 to i32
  %84 = load %struct.section*, %struct.section** %5, align 8
  %85 = getelementptr inbounds %struct.section, %struct.section* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @elf_word_to_cpu(i32 %88)
  %90 = load %struct.section*, %struct.section** %5, align 8
  %91 = getelementptr inbounds %struct.section, %struct.section* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 3
  store i8* %89, i8** %92, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @elf_xword_to_cpu(i32 %94)
  %96 = load %struct.section*, %struct.section** %5, align 8
  %97 = getelementptr inbounds %struct.section, %struct.section* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  store i8* %95, i8** %98, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @elf_xword_to_cpu(i32 %100)
  %102 = load %struct.section*, %struct.section** %5, align 8
  %103 = getelementptr inbounds %struct.section, %struct.section* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  store i8* %101, i8** %104, align 8
  %105 = load %struct.section*, %struct.section** %5, align 8
  %106 = getelementptr inbounds %struct.section, %struct.section* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @shnum, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %43
  %112 = load %struct.section*, %struct.section** @secs, align 8
  %113 = load %struct.section*, %struct.section** %5, align 8
  %114 = getelementptr inbounds %struct.section, %struct.section* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.section, %struct.section* %112, i64 %117
  %119 = load %struct.section*, %struct.section** %5, align 8
  %120 = getelementptr inbounds %struct.section, %struct.section* %119, i32 0, i32 1
  store %struct.section* %118, %struct.section** %120, align 8
  br label %121

121:                                              ; preds = %111, %43
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %3, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %3, align 4
  br label %25

125:                                              ; preds = %25
  ret void
}

declare dso_local %struct.section* @calloc(i32, i32) #1

declare dso_local i32 @die(i8*, i32, ...) #1

declare dso_local i64 @fseek(i32*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @fread(%struct.TYPE_6__*, i32, i32, i32*) #1

declare dso_local i8* @elf_word_to_cpu(i32) #1

declare dso_local i8* @elf_xword_to_cpu(i32) #1

declare dso_local i32 @elf_addr_to_cpu(i32) #1

declare dso_local i32 @elf_off_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
