; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/boot/tools/extr_relocs.c_read_shdrs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/boot/tools/extr_relocs.c_read_shdrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.section = type { %struct.TYPE_5__, %struct.section*, i32 }
%struct.TYPE_5__ = type { i32, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ehdr = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@secs = common dso_local global %struct.section* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"Unable to allocate %d section headers\0A\00", align 1
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
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ehdr, i32 0, i32 0), align 4
  %7 = call %struct.section* @calloc(i32 %6, i32 88)
  store %struct.section* %7, %struct.section** @secs, align 8
  %8 = load %struct.section*, %struct.section** @secs, align 8
  %9 = icmp ne %struct.section* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ehdr, i32 0, i32 0), align 4
  %12 = call i32 (i8*, i32, ...) @die(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ehdr, i32 0, i32 1), align 4
  %16 = load i32, i32* @SEEK_SET, align 4
  %17 = call i64 @fseek(i32* %14, i32 %15, i32 %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ehdr, i32 0, i32 1), align 4
  %21 = load i32, i32* @errno, align 4
  %22 = call i32 @strerror(i32 %21)
  %23 = call i32 (i8*, i32, ...) @die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %22)
  br label %24

24:                                               ; preds = %19, %13
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %126, %24
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ehdr, i32 0, i32 0), align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %129

29:                                               ; preds = %25
  %30 = load %struct.section*, %struct.section** @secs, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.section, %struct.section* %30, i64 %32
  store %struct.section* %33, %struct.section** %5, align 8
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @ftell(i32* %34)
  %36 = load %struct.section*, %struct.section** %5, align 8
  %37 = getelementptr inbounds %struct.section, %struct.section* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @fread(%struct.TYPE_6__* %4, i32 40, i32 1, i32* %38)
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %47

41:                                               ; preds = %29
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ehdr, i32 0, i32 0), align 4
  %44 = load i32, i32* @errno, align 4
  %45 = call i32 @strerror(i32 %44)
  %46 = call i32 (i8*, i32, ...) @die(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %42, i32 %43, i32 %45)
  br label %47

47:                                               ; preds = %41, %29
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 9
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @elf_word_to_cpu(i32 %49)
  %51 = load %struct.section*, %struct.section** %5, align 8
  %52 = getelementptr inbounds %struct.section, %struct.section* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 9
  store i8* %50, i8** %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 8
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @elf_word_to_cpu(i32 %55)
  %57 = load %struct.section*, %struct.section** %5, align 8
  %58 = getelementptr inbounds %struct.section, %struct.section* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 8
  store i8* %56, i8** %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 7
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @elf_xword_to_cpu(i32 %61)
  %63 = load %struct.section*, %struct.section** %5, align 8
  %64 = getelementptr inbounds %struct.section, %struct.section* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 7
  store i8* %62, i8** %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @elf_addr_to_cpu(i32 %67)
  %69 = load %struct.section*, %struct.section** %5, align 8
  %70 = getelementptr inbounds %struct.section, %struct.section* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 6
  store i32 %68, i32* %71, align 4
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @elf_off_to_cpu(i32 %73)
  %75 = load %struct.section*, %struct.section** %5, align 8
  %76 = getelementptr inbounds %struct.section, %struct.section* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 5
  store i32 %74, i32* %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @elf_xword_to_cpu(i32 %79)
  %81 = load %struct.section*, %struct.section** %5, align 8
  %82 = getelementptr inbounds %struct.section, %struct.section* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 4
  store i8* %80, i8** %83, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @elf_word_to_cpu(i32 %85)
  %87 = ptrtoint i8* %86 to i32
  %88 = load %struct.section*, %struct.section** %5, align 8
  %89 = getelementptr inbounds %struct.section, %struct.section* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @elf_word_to_cpu(i32 %92)
  %94 = load %struct.section*, %struct.section** %5, align 8
  %95 = getelementptr inbounds %struct.section, %struct.section* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 3
  store i8* %93, i8** %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @elf_xword_to_cpu(i32 %98)
  %100 = load %struct.section*, %struct.section** %5, align 8
  %101 = getelementptr inbounds %struct.section, %struct.section* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 2
  store i8* %99, i8** %102, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @elf_xword_to_cpu(i32 %104)
  %106 = load %struct.section*, %struct.section** %5, align 8
  %107 = getelementptr inbounds %struct.section, %struct.section* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  store i8* %105, i8** %108, align 8
  %109 = load %struct.section*, %struct.section** %5, align 8
  %110 = getelementptr inbounds %struct.section, %struct.section* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ehdr, i32 0, i32 0), align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %47
  %116 = load %struct.section*, %struct.section** @secs, align 8
  %117 = load %struct.section*, %struct.section** %5, align 8
  %118 = getelementptr inbounds %struct.section, %struct.section* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.section, %struct.section* %116, i64 %121
  %123 = load %struct.section*, %struct.section** %5, align 8
  %124 = getelementptr inbounds %struct.section, %struct.section* %123, i32 0, i32 1
  store %struct.section* %122, %struct.section** %124, align 8
  br label %125

125:                                              ; preds = %115, %47
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %3, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %3, align 4
  br label %25

129:                                              ; preds = %25
  ret void
}

declare dso_local %struct.section* @calloc(i32, i32) #1

declare dso_local i32 @die(i8*, i32, ...) #1

declare dso_local i64 @fseek(i32*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @ftell(i32*) #1

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
