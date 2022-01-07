; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_misc.c_parse_elf.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_misc.c_parse_elf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64*, i32, i32, i32, i32, i32, i32, i64 }

@EI_MAG0 = common dso_local global i64 0, align 8
@ELFMAG0 = common dso_local global i64 0, align 8
@EI_MAG1 = common dso_local global i64 0, align 8
@ELFMAG1 = common dso_local global i64 0, align 8
@EI_MAG2 = common dso_local global i64 0, align 8
@ELFMAG2 = common dso_local global i64 0, align 8
@EI_MAG3 = common dso_local global i64 0, align 8
@ELFMAG3 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Kernel is not a valid ELF file\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Parsing ELF... \00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to allocate space for phdrs\00", align 1
@LOAD_PHYSICAL_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @parse_elf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_elf(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @memcpy(%struct.TYPE_6__* %3, i8* %8, i32 40)
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = load i64, i64* @EI_MAG0, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ELFMAG0, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %41, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* @EI_MAG1, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ELFMAG1, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %41, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* @EI_MAG2, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ELFMAG2, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %41, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* @EI_MAG3, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ELFMAG3, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %33, %25, %17, %1
  %42 = call i32 @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %105

43:                                               ; preds = %33
  %44 = call i32 @debug_putstr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = mul i64 40, %47
  %49 = trunc i64 %48 to i32
  %50 = call %struct.TYPE_6__* @malloc(i32 %49)
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %4, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = icmp ne %struct.TYPE_6__* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %43
  %54 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %43
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = load i8*, i8** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr i8, i8* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = mul i64 40, %64
  %66 = trunc i64 %65 to i32
  %67 = call i32 @memcpy(%struct.TYPE_6__* %56, i8* %61, i32 %66)
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %99, %55
  %69 = load i32, i32* %7, align 4
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %102

73:                                               ; preds = %68
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 %76
  store %struct.TYPE_6__* %77, %struct.TYPE_6__** %5, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  switch i32 %80, label %97 [
    i32 128, label %81
  ]

81:                                               ; preds = %73
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 7
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i8*
  store i8* %85, i8** %6, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = load i8*, i8** %2, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr i8, i8* %87, i64 %91
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @memmove(i8* %86, i8* %92, i32 %95)
  br label %98

97:                                               ; preds = %73
  br label %98

98:                                               ; preds = %97, %81
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %68

102:                                              ; preds = %68
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %104 = call i32 @free(%struct.TYPE_6__* %103)
  br label %105

105:                                              ; preds = %102, %41
  ret void
}

declare dso_local i32 @memcpy(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @debug_putstr(i8*) #1

declare dso_local %struct.TYPE_6__* @malloc(i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
