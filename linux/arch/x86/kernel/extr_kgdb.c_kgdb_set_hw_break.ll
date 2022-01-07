; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_kgdb.c_kgdb_set_hw_break.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_kgdb.c_kgdb_set_hw_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32, i32 }

@HBP_NUM = common dso_local global i32 0, align 4
@breakinfo = common dso_local global %struct.TYPE_2__* null, align 8
@X86_BREAKPOINT_EXECUTE = common dso_local global i32 0, align 4
@X86_BREAKPOINT_WRITE = common dso_local global i32 0, align 4
@X86_BREAKPOINT_RW = common dso_local global i32 0, align 4
@X86_BREAKPOINT_LEN_1 = common dso_local global i32 0, align 4
@X86_BREAKPOINT_LEN_2 = common dso_local global i32 0, align 4
@X86_BREAKPOINT_LEN_4 = common dso_local global i32 0, align 4
@X86_BREAKPOINT_LEN_8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32)* @kgdb_set_hw_break to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kgdb_set_hw_break(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %23, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @HBP_NUM, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  br label %26

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %8, align 4
  br label %9

26:                                               ; preds = %21, %9
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @HBP_NUM, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 -1, i32* %4, align 4
  br label %101

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  switch i32 %32, label %54 [
    i32 129, label %33
    i32 128, label %40
    i32 130, label %47
  ]

33:                                               ; preds = %31
  store i32 1, i32* %6, align 4
  %34 = load i32, i32* @X86_BREAKPOINT_EXECUTE, align 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  store i32 %34, i32* %39, align 4
  br label %55

40:                                               ; preds = %31
  %41 = load i32, i32* @X86_BREAKPOINT_WRITE, align 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  store i32 %41, i32* %46, align 4
  br label %55

47:                                               ; preds = %31
  %48 = load i32, i32* @X86_BREAKPOINT_RW, align 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  store i32 %48, i32* %53, align 4
  br label %55

54:                                               ; preds = %31
  store i32 -1, i32* %4, align 4
  br label %101

55:                                               ; preds = %47, %40, %33
  %56 = load i32, i32* %6, align 4
  switch i32 %56, label %78 [
    i32 1, label %57
    i32 2, label %64
    i32 4, label %71
  ]

57:                                               ; preds = %55
  %58 = load i32, i32* @X86_BREAKPOINT_LEN_1, align 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  store i32 %58, i32* %63, align 8
  br label %79

64:                                               ; preds = %55
  %65 = load i32, i32* @X86_BREAKPOINT_LEN_2, align 4
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  store i32 %65, i32* %70, align 8
  br label %79

71:                                               ; preds = %55
  %72 = load i32, i32* @X86_BREAKPOINT_LEN_4, align 4
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  store i32 %72, i32* %77, align 8
  br label %79

78:                                               ; preds = %55
  store i32 -1, i32* %4, align 4
  br label %101

79:                                               ; preds = %71, %64, %57
  %80 = load i64, i64* %5, align 8
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  store i64 %80, i64* %85, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i64 @hw_break_reserve_slot(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %79
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  store i64 0, i64* %94, align 8
  store i32 -1, i32* %4, align 4
  br label %101

95:                                               ; preds = %79
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %95, %89, %78, %54, %30
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i64 @hw_break_reserve_slot(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
