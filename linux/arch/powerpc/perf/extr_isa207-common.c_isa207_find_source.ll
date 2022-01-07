; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_isa207-common.c_isa207_find_source.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_isa207-common.c_isa207_find_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PERF_MEM_NA = common dso_local global i32 0, align 4
@LVL = common dso_local global i32 0, align 4
@L1 = common dso_local global i32 0, align 4
@L2 = common dso_local global i32 0, align 4
@L3 = common dso_local global i32 0, align 4
@LOC_RAM = common dso_local global i32 0, align 4
@REM_RAM1 = common dso_local global i32 0, align 4
@REM_RAM2 = common dso_local global i32 0, align 4
@SNOOP = common dso_local global i32 0, align 4
@HIT = common dso_local global i32 0, align 4
@REM_CCE1 = common dso_local global i32 0, align 4
@HITM = common dso_local global i32 0, align 4
@REM_CCE2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @isa207_find_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isa207_find_source(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @PERF_MEM_NA, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %117 [
    i32 0, label %8
    i32 1, label %9
    i32 2, label %13
    i32 3, label %17
    i32 4, label %21
    i32 5, label %49
    i32 6, label %84
    i32 7, label %113
  ]

8:                                                ; preds = %2
  br label %117

9:                                                ; preds = %2
  %10 = load i32, i32* @LVL, align 4
  %11 = load i32, i32* @L1, align 4
  %12 = call i32 @PH(i32 %10, i32 %11)
  store i32 %12, i32* %5, align 4
  br label %117

13:                                               ; preds = %2
  %14 = load i32, i32* @LVL, align 4
  %15 = load i32, i32* @L2, align 4
  %16 = call i32 @PH(i32 %14, i32 %15)
  store i32 %16, i32* %5, align 4
  br label %117

17:                                               ; preds = %2
  %18 = load i32, i32* @LVL, align 4
  %19 = load i32, i32* @L3, align 4
  %20 = call i32 @PH(i32 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  br label %117

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = icmp sle i32 %22, 1
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* @LVL, align 4
  %26 = load i32, i32* @LOC_RAM, align 4
  %27 = call i32 @PH(i32 %25, i32 %26)
  store i32 %27, i32* %5, align 4
  br label %43

28:                                               ; preds = %21
  %29 = load i32, i32* %4, align 4
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = icmp sle i32 %32, 2
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* @LVL, align 4
  %36 = load i32, i32* @REM_RAM1, align 4
  %37 = call i32 @PH(i32 %35, i32 %36)
  store i32 %37, i32* %5, align 4
  br label %42

38:                                               ; preds = %31, %28
  %39 = load i32, i32* @LVL, align 4
  %40 = load i32, i32* @REM_RAM2, align 4
  %41 = call i32 @PH(i32 %39, i32 %40)
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %38, %34
  br label %43

43:                                               ; preds = %42, %24
  %44 = load i32, i32* @SNOOP, align 4
  %45 = load i32, i32* @HIT, align 4
  %46 = call i32 @P(i32 %44, i32 %45)
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %5, align 4
  br label %117

49:                                               ; preds = %2
  %50 = load i32, i32* @LVL, align 4
  %51 = load i32, i32* @REM_CCE1, align 4
  %52 = call i32 @PH(i32 %50, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %4, align 4
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %4, align 4
  %60 = icmp eq i32 %59, 4
  br i1 %60, label %61, label %67

61:                                               ; preds = %58, %55, %49
  %62 = load i32, i32* @SNOOP, align 4
  %63 = load i32, i32* @HIT, align 4
  %64 = call i32 @P(i32 %62, i32 %63)
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  br label %83

67:                                               ; preds = %58
  %68 = load i32, i32* %4, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %76, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %4, align 4
  %72 = icmp eq i32 %71, 3
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %4, align 4
  %75 = icmp eq i32 %74, 5
  br i1 %75, label %76, label %82

76:                                               ; preds = %73, %70, %67
  %77 = load i32, i32* @SNOOP, align 4
  %78 = load i32, i32* @HITM, align 4
  %79 = call i32 @P(i32 %77, i32 %78)
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %76, %73
  br label %83

83:                                               ; preds = %82, %61
  br label %117

84:                                               ; preds = %2
  %85 = load i32, i32* @LVL, align 4
  %86 = load i32, i32* @REM_CCE2, align 4
  %87 = call i32 @PH(i32 %85, i32 %86)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %84
  %91 = load i32, i32* %4, align 4
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %93, label %99

93:                                               ; preds = %90, %84
  %94 = load i32, i32* @SNOOP, align 4
  %95 = load i32, i32* @HIT, align 4
  %96 = call i32 @P(i32 %94, i32 %95)
  %97 = load i32, i32* %5, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %5, align 4
  br label %112

99:                                               ; preds = %90
  %100 = load i32, i32* %4, align 4
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %4, align 4
  %104 = icmp eq i32 %103, 3
  br i1 %104, label %105, label %111

105:                                              ; preds = %102, %99
  %106 = load i32, i32* @SNOOP, align 4
  %107 = load i32, i32* @HITM, align 4
  %108 = call i32 @P(i32 %106, i32 %107)
  %109 = load i32, i32* %5, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %105, %102
  br label %112

112:                                              ; preds = %111, %93
  br label %117

113:                                              ; preds = %2
  %114 = load i32, i32* @LVL, align 4
  %115 = load i32, i32* @L1, align 4
  %116 = call i32 @PM(i32 %114, i32 %115)
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %2, %113, %112, %83, %43, %17, %13, %9, %8
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @PH(i32, i32) #1

declare dso_local i32 @P(i32, i32) #1

declare dso_local i32 @PM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
