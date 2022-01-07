; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/vdso/extr_genvdso.c_map_vdso.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/vdso/extr_genvdso.c_map_vdso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }
%struct.TYPE_2__ = type { i32*, i32, i32 }

@O_RDWR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%s: Failed to open '%s': %s\0A\00", align 1
@program_name = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"%s: Failed to stat '%s': %s\0A\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"%s: Failed to map '%s': %s\0A\00", align 1
@ELFMAG = common dso_local global i32 0, align 4
@SELFMAG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"%s: '%s' is not an ELF file\0A\00", align 1
@EI_CLASS = common dso_local global i64 0, align 8
@elf_class = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"%s: '%s' has invalid ELF class\0A\00", align 1
@EI_DATA = common dso_local global i64 0, align 8
@HOST_ORDER = common dso_local global i32 0, align 4
@need_swap = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"%s: '%s' has invalid ELF data order\0A\00", align 1
@EM_MIPS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [53 x i8] c"%s: '%s' has invalid ELF machine (expected EM_MIPS)\0A\00", align 1
@ET_DYN = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [49 x i8] c"%s: '%s' has invalid ELF type (expected ET_DYN)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64*)* @map_vdso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @map_vdso(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.stat, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* @O_RDWR, align 4
  %12 = call i32 @open(i8* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i32, i32* @stderr, align 4
  %17 = load i8*, i8** @program_name, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* @errno, align 4
  %20 = call i8* @strerror(i32 %19)
  %21 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %17, i8* %18, i8* %20)
  store i8* null, i8** %3, align 8
  br label %133

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @fstat(i32 %23, %struct.stat* %7)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load i32, i32* @stderr, align 4
  %28 = load i8*, i8** @program_name, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* @errno, align 4
  %31 = call i8* @strerror(i32 %30)
  %32 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %28, i8* %29, i8* %31)
  store i8* null, i8** %3, align 8
  br label %133

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @PROT_READ, align 4
  %37 = load i32, i32* @PROT_WRITE, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @MAP_SHARED, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i8* @mmap(i32* null, i64 %35, i32 %38, i32 %39, i32 %40, i32 0)
  store i8* %41, i8** %8, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load i8*, i8** @MAP_FAILED, align 8
  %44 = icmp eq i8* %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %33
  %46 = load i32, i32* @stderr, align 4
  %47 = load i8*, i8** @program_name, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = load i32, i32* @errno, align 4
  %50 = call i8* @strerror(i32 %49)
  %51 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %47, i8* %48, i8* %50)
  store i8* null, i8** %3, align 8
  br label %133

52:                                               ; preds = %33
  %53 = load i8*, i8** %8, align 8
  %54 = bitcast i8* %53 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %54, %struct.TYPE_2__** %9, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* @ELFMAG, align 4
  %59 = load i32, i32* @SELFMAG, align 4
  %60 = call i64 @memcmp(i32* %57, i32 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %52
  %63 = load i32, i32* @stderr, align 4
  %64 = load i8*, i8** @program_name, align 8
  %65 = load i8*, i8** %4, align 8
  %66 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %64, i8* %65)
  store i8* null, i8** %3, align 8
  br label %133

67:                                               ; preds = %52
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* @EI_CLASS, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* @elf_class, align 4
  %74 = load i32, i32* @elf_class, align 4
  switch i32 %74, label %76 [
    i32 131, label %75
    i32 130, label %75
  ]

75:                                               ; preds = %67, %67
  br label %81

76:                                               ; preds = %67
  %77 = load i32, i32* @stderr, align 4
  %78 = load i8*, i8** @program_name, align 8
  %79 = load i8*, i8** %4, align 8
  %80 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %78, i8* %79)
  store i8* null, i8** %3, align 8
  br label %133

81:                                               ; preds = %75
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* @EI_DATA, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  switch i32 %87, label %98 [
    i32 129, label %88
    i32 128, label %88
  ]

88:                                               ; preds = %81, %81
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* @EI_DATA, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @HOST_ORDER, align 4
  %96 = icmp ne i32 %94, %95
  %97 = zext i1 %96 to i32
  store i32 %97, i32* @need_swap, align 4
  br label %103

98:                                               ; preds = %81
  %99 = load i32, i32* @stderr, align 4
  %100 = load i8*, i8** @program_name, align 8
  %101 = load i8*, i8** %4, align 8
  %102 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %99, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* %100, i8* %101)
  store i8* null, i8** %3, align 8
  br label %133

103:                                              ; preds = %88
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @swap_uint16(i32 %106)
  %108 = load i64, i64* @EM_MIPS, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %103
  %111 = load i32, i32* @stderr, align 4
  %112 = load i8*, i8** @program_name, align 8
  %113 = load i8*, i8** %4, align 8
  %114 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %111, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i8* %112, i8* %113)
  store i8* null, i8** %3, align 8
  br label %133

115:                                              ; preds = %103
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i64 @swap_uint16(i32 %118)
  %120 = load i64, i64* @ET_DYN, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %115
  %123 = load i32, i32* @stderr, align 4
  %124 = load i8*, i8** @program_name, align 8
  %125 = load i8*, i8** %4, align 8
  %126 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %123, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i8* %124, i8* %125)
  store i8* null, i8** %3, align 8
  br label %133

127:                                              ; preds = %115
  br label %128

128:                                              ; preds = %127
  %129 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64*, i64** %5, align 8
  store i64 %130, i64* %131, align 8
  %132 = load i8*, i8** %8, align 8
  store i8* %132, i8** %3, align 8
  br label %133

133:                                              ; preds = %128, %122, %110, %98, %76, %62, %45, %26, %15
  %134 = load i8*, i8** %3, align 8
  ret i8* %134
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i64 @swap_uint16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
