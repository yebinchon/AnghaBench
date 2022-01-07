; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_kaslr.c_mem_avoid_memmap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_kaslr.c_mem_avoid_memmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@mem_avoid_memmap.i = internal global i32 0, align 4
@MAX_MEMMAP_REGIONS = common dso_local global i32 0, align 4
@mem_limit = common dso_local global i64 0, align 8
@mem_avoid = common dso_local global %struct.TYPE_2__* null, align 8
@MEM_AVOID_MEMMAP_BEGIN = common dso_local global i32 0, align 4
@memmap_too_large = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mem_avoid_memmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mem_avoid_memmap(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @mem_avoid_memmap.i, align 4
  %8 = load i32, i32* @MAX_MEMMAP_REGIONS, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %72

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %45, %44, %11
  %13 = load i8*, i8** %2, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, i32* @mem_avoid_memmap.i, align 4
  %17 = load i32, i32* @MAX_MEMMAP_REGIONS, align 4
  %18 = icmp slt i32 %16, %17
  br label %19

19:                                               ; preds = %15, %12
  %20 = phi i1 [ false, %12 ], [ %18, %15 ]
  br i1 %20, label %21, label %64

21:                                               ; preds = %19
  %22 = load i8*, i8** %2, align 8
  %23 = call i8* @strchr(i8* %22, i8 signext 44)
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %6, align 8
  store i8 0, i8* %27, align 1
  br label %29

29:                                               ; preds = %26, %21
  %30 = load i8*, i8** %2, align 8
  %31 = call i32 @parse_memmap(i8* %30, i64* %4, i64* %5)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %64

35:                                               ; preds = %29
  %36 = load i8*, i8** %6, align 8
  store i8* %36, i8** %2, align 8
  %37 = load i64, i64* %4, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i64, i64* %5, align 8
  %41 = icmp ugt i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i64, i64* %5, align 8
  store i64 %43, i64* @mem_limit, align 8
  br label %44

44:                                               ; preds = %42, %39
  br label %12

45:                                               ; preds = %35
  %46 = load i64, i64* %4, align 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mem_avoid, align 8
  %48 = load i32, i32* @MEM_AVOID_MEMMAP_BEGIN, align 4
  %49 = load i32, i32* @mem_avoid_memmap.i, align 4
  %50 = add nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i64 %46, i64* %53, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mem_avoid, align 8
  %56 = load i32, i32* @MEM_AVOID_MEMMAP_BEGIN, align 4
  %57 = load i32, i32* @mem_avoid_memmap.i, align 4
  %58 = add nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i64 %54, i64* %61, align 8
  %62 = load i32, i32* @mem_avoid_memmap.i, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* @mem_avoid_memmap.i, align 4
  br label %12

64:                                               ; preds = %34, %19
  %65 = load i32, i32* @mem_avoid_memmap.i, align 4
  %66 = load i32, i32* @MAX_MEMMAP_REGIONS, align 4
  %67 = icmp sge i32 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i8*, i8** %2, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 1, i32* @memmap_too_large, align 4
  br label %72

72:                                               ; preds = %10, %71, %68, %64
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @parse_memmap(i8*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
