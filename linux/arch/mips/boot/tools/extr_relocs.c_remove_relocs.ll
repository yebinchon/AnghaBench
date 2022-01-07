; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/boot/tools/extr_relocs.c_remove_relocs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/boot/tools/extr_relocs.c_remove_relocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.section = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@ehdr = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@secs = common dso_local global %struct.section* null, align 8
@SHT_REL_TYPE = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Seek to %d failed: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Cannot read ELF section headers %d/%d: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Cannot write ELF section headers %d/%d: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @remove_relocs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_relocs(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__, align 8
  %5 = alloca %struct.section*, align 8
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %74, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ehdr, i32 0, i32 0), align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %77

10:                                               ; preds = %6
  %11 = load %struct.section*, %struct.section** @secs, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.section, %struct.section* %11, i64 %13
  store %struct.section* %14, %struct.section** %5, align 8
  %15 = load %struct.section*, %struct.section** %5, align 8
  %16 = getelementptr inbounds %struct.section, %struct.section* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SHT_REL_TYPE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  br label %74

22:                                               ; preds = %10
  %23 = load i32*, i32** %2, align 8
  %24 = load %struct.section*, %struct.section** %5, align 8
  %25 = getelementptr inbounds %struct.section, %struct.section* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SEEK_SET, align 4
  %28 = call i64 @fseek(i32* %23, i32 %26, i32 %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %22
  %31 = load %struct.section*, %struct.section** %5, align 8
  %32 = getelementptr inbounds %struct.section, %struct.section* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @errno, align 4
  %35 = call i32 @strerror(i32 %34)
  %36 = call i32 (i8*, i32, i32, ...) @die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %35)
  br label %37

37:                                               ; preds = %30, %22
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @fread(%struct.TYPE_7__* %4, i32 8, i32 1, i32* %38)
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ehdr, i32 0, i32 0), align 4
  %44 = load i32, i32* @errno, align 4
  %45 = call i32 @strerror(i32 %44)
  %46 = call i32 (i8*, i32, i32, ...) @die(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %43, i32 %45)
  br label %47

47:                                               ; preds = %41, %37
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load i32*, i32** %2, align 8
  %50 = load %struct.section*, %struct.section** %5, align 8
  %51 = getelementptr inbounds %struct.section, %struct.section* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @SEEK_SET, align 4
  %54 = call i64 @fseek(i32* %49, i32 %52, i32 %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %47
  %57 = load %struct.section*, %struct.section** %5, align 8
  %58 = getelementptr inbounds %struct.section, %struct.section* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @errno, align 4
  %61 = call i32 @strerror(i32 %60)
  %62 = call i32 (i8*, i32, i32, ...) @die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %61)
  br label %63

63:                                               ; preds = %56, %47
  %64 = load i32*, i32** %2, align 8
  %65 = call i32 @fwrite(%struct.TYPE_7__* %4, i32 8, i32 1, i32* %64)
  %66 = icmp ne i32 %65, 1
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ehdr, i32 0, i32 0), align 4
  %70 = load i32, i32* @errno, align 4
  %71 = call i32 @strerror(i32 %70)
  %72 = call i32 (i8*, i32, i32, ...) @die(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 %69, i32 %71)
  br label %73

73:                                               ; preds = %67, %63
  br label %74

74:                                               ; preds = %73, %21
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %6

77:                                               ; preds = %6
  ret void
}

declare dso_local i64 @fseek(i32*, i32, i32) #1

declare dso_local i32 @die(i8*, i32, i32, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @fread(%struct.TYPE_7__*, i32, i32, i32*) #1

declare dso_local i32 @fwrite(%struct.TYPE_7__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
