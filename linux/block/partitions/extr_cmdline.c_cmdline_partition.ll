; ModuleID = '/home/carl/AnghaBench/linux/block/partitions/extr_cmdline.c_cmdline_partition.c'
source_filename = "/home/carl/AnghaBench/linux/block/partitions/extr_cmdline.c_cmdline_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_partitions = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cmdline_parts = type { i32 }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@cmdline = common dso_local global i32* null, align 8
@bdev_parts = common dso_local global i64 0, align 8
@add_part = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmdline_partition(%struct.parsed_partitions* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.parsed_partitions*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cmdline_parts*, align 8
  %8 = alloca i32, align 4
  store %struct.parsed_partitions* %0, %struct.parsed_partitions** %3, align 8
  %9 = load i32, i32* @BDEVNAME_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i32*, i32** @cmdline, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = load i64, i64* @bdev_parts, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 @cmdline_parts_free(i64* @bdev_parts)
  br label %20

20:                                               ; preds = %18, %15
  %21 = load i32*, i32** @cmdline, align 8
  %22 = call i64 @cmdline_parts_parse(i64* @bdev_parts, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32* null, i32** @cmdline, align 8
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %61

25:                                               ; preds = %20
  store i32* null, i32** @cmdline, align 8
  br label %26

26:                                               ; preds = %25, %1
  %27 = load i64, i64* @bdev_parts, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %61

30:                                               ; preds = %26
  %31 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %32 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = call i32 @bdevname(%struct.TYPE_2__* %33, i8* %12)
  %35 = load i64, i64* @bdev_parts, align 8
  %36 = call %struct.cmdline_parts* @cmdline_parts_find(i64 %35, i8* %12)
  store %struct.cmdline_parts* %36, %struct.cmdline_parts** %7, align 8
  %37 = load %struct.cmdline_parts*, %struct.cmdline_parts** %7, align 8
  %38 = icmp ne %struct.cmdline_parts* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %61

40:                                               ; preds = %30
  %41 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %42 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @get_capacity(i32 %45)
  %47 = shl i32 %46, 9
  store i32 %47, i32* %4, align 4
  %48 = load %struct.cmdline_parts*, %struct.cmdline_parts** %7, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @add_part, align 4
  %51 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %52 = bitcast %struct.parsed_partitions* %51 to i8*
  %53 = call i32 @cmdline_parts_set(%struct.cmdline_parts* %48, i32 %49, i32 1, i32 %50, i8* %52)
  %54 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %55 = call i32 @cmdline_parts_verifier(i32 1, %struct.parsed_partitions* %54)
  %56 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %57 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @PAGE_SIZE, align 4
  %60 = call i32 @strlcat(i32 %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %59)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %61

61:                                               ; preds = %40, %39, %29, %24
  %62 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cmdline_parts_free(i64*) #2

declare dso_local i64 @cmdline_parts_parse(i64*, i32*) #2

declare dso_local i32 @bdevname(%struct.TYPE_2__*, i8*) #2

declare dso_local %struct.cmdline_parts* @cmdline_parts_find(i64, i8*) #2

declare dso_local i32 @get_capacity(i32) #2

declare dso_local i32 @cmdline_parts_set(%struct.cmdline_parts*, i32, i32, i32, i8*) #2

declare dso_local i32 @cmdline_parts_verifier(i32, %struct.parsed_partitions*) #2

declare dso_local i32 @strlcat(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
