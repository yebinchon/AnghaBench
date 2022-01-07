; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/boot/tools/extr_relocs.c_read_strtabs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/boot/tools/extr_relocs.c_read_strtabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.section = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i64, i32 }

@ehdr = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@secs = common dso_local global %struct.section* null, align 8
@SHT_STRTAB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"malloc of %d bytes for strtab failed\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Seek to %d failed: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Cannot read symbol table: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @read_strtabs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_strtabs(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.section*, align 8
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %77, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ehdr, i32 0, i32 0), align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %80

9:                                                ; preds = %5
  %10 = load %struct.section*, %struct.section** @secs, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.section, %struct.section* %10, i64 %12
  store %struct.section* %13, %struct.section** %4, align 8
  %14 = load %struct.section*, %struct.section** %4, align 8
  %15 = getelementptr inbounds %struct.section, %struct.section* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SHT_STRTAB, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %9
  br label %77

21:                                               ; preds = %9
  %22 = load %struct.section*, %struct.section** %4, align 8
  %23 = getelementptr inbounds %struct.section, %struct.section* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @malloc(i64 %25)
  %27 = load %struct.section*, %struct.section** %4, align 8
  %28 = getelementptr inbounds %struct.section, %struct.section* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.section*, %struct.section** %4, align 8
  %30 = getelementptr inbounds %struct.section, %struct.section* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %21
  %34 = load %struct.section*, %struct.section** %4, align 8
  %35 = getelementptr inbounds %struct.section, %struct.section* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 (i8*, i64, ...) @die(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %37)
  br label %39

39:                                               ; preds = %33, %21
  %40 = load i32*, i32** %2, align 8
  %41 = load %struct.section*, %struct.section** %4, align 8
  %42 = getelementptr inbounds %struct.section, %struct.section* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @SEEK_SET, align 4
  %46 = call i64 @fseek(i32* %40, i32 %44, i32 %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %39
  %49 = load %struct.section*, %struct.section** %4, align 8
  %50 = getelementptr inbounds %struct.section, %struct.section* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = load i32, i32* @errno, align 4
  %55 = call i64 @strerror(i32 %54)
  %56 = call i32 (i8*, i64, ...) @die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %53, i64 %55)
  br label %57

57:                                               ; preds = %48, %39
  %58 = load %struct.section*, %struct.section** %4, align 8
  %59 = getelementptr inbounds %struct.section, %struct.section* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.section*, %struct.section** %4, align 8
  %62 = getelementptr inbounds %struct.section, %struct.section* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i32*, i32** %2, align 8
  %66 = call i64 @fread(i32 %60, i32 1, i64 %64, i32* %65)
  %67 = load %struct.section*, %struct.section** %4, align 8
  %68 = getelementptr inbounds %struct.section, %struct.section* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %66, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %57
  %73 = load i32, i32* @errno, align 4
  %74 = call i64 @strerror(i32 %73)
  %75 = call i32 (i8*, i64, ...) @die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %74)
  br label %76

76:                                               ; preds = %72, %57
  br label %77

77:                                               ; preds = %76, %20
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %3, align 4
  br label %5

80:                                               ; preds = %5
  ret void
}

declare dso_local i32 @malloc(i64) #1

declare dso_local i32 @die(i8*, i64, ...) #1

declare dso_local i64 @fseek(i32*, i32, i32) #1

declare dso_local i64 @strerror(i32) #1

declare dso_local i64 @fread(i32, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
