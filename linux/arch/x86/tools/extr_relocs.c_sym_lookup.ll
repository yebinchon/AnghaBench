; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/tools/extr_relocs.c_sym_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/tools/extr_relocs.c_sym_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section = type { %struct.TYPE_6__*, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32 }

@shnum = common dso_local global i32 0, align 4
@secs = common dso_local global %struct.section* null, align 8
@SHT_SYMTAB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i8*)* @sym_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @sym_lookup(i8* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.section*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %69, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @shnum, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %72

14:                                               ; preds = %10
  %15 = load %struct.section*, %struct.section** @secs, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.section, %struct.section* %15, i64 %17
  store %struct.section* %18, %struct.section** %5, align 8
  %19 = load %struct.section*, %struct.section** %5, align 8
  %20 = getelementptr inbounds %struct.section, %struct.section* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SHT_SYMTAB, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %69

26:                                               ; preds = %14
  %27 = load %struct.section*, %struct.section** %5, align 8
  %28 = getelementptr inbounds %struct.section, %struct.section* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = udiv i64 %31, 4
  store i64 %32, i64* %6, align 8
  %33 = load %struct.section*, %struct.section** %5, align 8
  %34 = getelementptr inbounds %struct.section, %struct.section* %33, i32 0, i32 1
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %8, align 8
  %36 = load %struct.section*, %struct.section** %5, align 8
  %37 = getelementptr inbounds %struct.section, %struct.section* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %7, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %9, align 8
  br label %42

42:                                               ; preds = %65, %26
  %43 = load i64, i64* %6, align 8
  %44 = add nsw i64 %43, -1
  store i64 %44, i64* %6, align 8
  %45 = icmp sge i64 %44, 0
  br i1 %45, label %46, label %68

46:                                               ; preds = %42
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %65

52:                                               ; preds = %46
  %53 = load i8*, i8** %3, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %54, i64 %58
  %60 = call i64 @strcmp(i8* %53, i8* %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %2, align 8
  br label %73

64:                                               ; preds = %52
  br label %65

65:                                               ; preds = %64, %51
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 1
  store %struct.TYPE_7__* %67, %struct.TYPE_7__** %9, align 8
  br label %42

68:                                               ; preds = %42
  br label %69

69:                                               ; preds = %68, %25
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  br label %10

72:                                               ; preds = %10
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %73

73:                                               ; preds = %72, %62
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %74
}

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
