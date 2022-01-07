; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_interpret_errors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_interpret_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 (...)*, i32 (i32)* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@inr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"-- FDC reply error\0A\00", align 1
@FDCS = common dso_local global %struct.TYPE_8__* null, align 8
@ST0 = common dso_local global i32 0, align 4
@ST0_INTR = common dso_local global i32 0, align 4
@ST1 = common dso_local global i32 0, align 4
@ST1_EOC = common dso_local global i32 0, align 4
@ST1_WP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Drive is write protected\0A\00", align 1
@FD_DISK_WRITABLE_BIT = common dso_local global i32 0, align 4
@DRS = common dso_local global %struct.TYPE_9__* null, align 8
@cont = common dso_local global %struct.TYPE_7__* null, align 8
@ST1_ND = common dso_local global i32 0, align 4
@FD_NEED_TWADDLE_BIT = common dso_local global i32 0, align 4
@ST1_OR = common dso_local global i32 0, align 4
@DP = common dso_local global %struct.TYPE_10__* null, align 8
@FTD_MSG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Over/Underrun - retrying\0A\00", align 1
@errors = common dso_local global i32* null, align 8
@ST2 = common dso_local global i32 0, align 4
@ST2_WC = common dso_local global i32 0, align 4
@ST2_BC = common dso_local global i32 0, align 4
@NEED_2_RECAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Invalid FDC command given!\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Abnormal termination caused by polling\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @interpret_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interpret_errors() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = load i32, i32* @inr, align 4
  %4 = icmp ne i32 %3, 7
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = call i32 @DPRINT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** @FDCS, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i32 1, i32* %8, align 4
  store i32 1, i32* %1, align 4
  br label %102

9:                                                ; preds = %0
  %10 = load i32, i32* @ST0, align 4
  %11 = load i32, i32* @ST0_INTR, align 4
  %12 = and i32 %10, %11
  switch i32 %12, label %101 [
    i32 64, label %13
    i32 128, label %89
    i32 192, label %95
  ]

13:                                               ; preds = %9
  %14 = load i32, i32* @ST1, align 4
  %15 = load i32, i32* @ST1_EOC, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %1, align 4
  br label %102

19:                                               ; preds = %13
  store i8 1, i8* %2, align 1
  %20 = load i32, i32* @ST1, align 4
  %21 = load i32, i32* @ST1_WP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = call i32 @DPRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @FD_DISK_WRITABLE_BIT, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** @DRS, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = call i32 @clear_bit(i32 %26, i32* %28)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cont, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32 (i32)*, i32 (i32)** %31, align 8
  %33 = call i32 %32(i32 0)
  store i8 2, i8* %2, align 1
  br label %72

34:                                               ; preds = %19
  %35 = load i32, i32* @ST1, align 4
  %36 = load i32, i32* @ST1_ND, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i32, i32* @FD_NEED_TWADDLE_BIT, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** @DRS, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = call i32 @set_bit(i32 %40, i32* %42)
  br label %71

44:                                               ; preds = %34
  %45 = load i32, i32* @ST1, align 4
  %46 = load i32, i32* @ST1_OR, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DP, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @FTD_MSG, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = call i32 @DPRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %49
  store i8 0, i8* %2, align 1
  br label %70

59:                                               ; preds = %44
  %60 = load i32*, i32** @errors, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DP, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp sge i32 %61, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = call i32 (...) @print_errors()
  br label %69

69:                                               ; preds = %67, %59
  br label %70

70:                                               ; preds = %69, %58
  br label %71

71:                                               ; preds = %70, %39
  br label %72

72:                                               ; preds = %71, %24
  %73 = load i32, i32* @ST2, align 4
  %74 = load i32, i32* @ST2_WC, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* @ST2, align 4
  %79 = load i32, i32* @ST2_BC, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77, %72
  %83 = load i32, i32* @NEED_2_RECAL, align 4
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** @DRS, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %82, %77
  %87 = load i8, i8* %2, align 1
  %88 = sext i8 %87 to i32
  store i32 %88, i32* %1, align 4
  br label %102

89:                                               ; preds = %9
  %90 = call i32 @DPRINT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cont, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32 (i32)*, i32 (i32)** %92, align 8
  %94 = call i32 %93(i32 0)
  store i32 2, i32* %1, align 4
  br label %102

95:                                               ; preds = %9
  %96 = call i32 @DPRINT(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cont, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32 (...)*, i32 (...)** %98, align 8
  %100 = call i32 (...) %99()
  store i32 2, i32* %1, align 4
  br label %102

101:                                              ; preds = %9
  store i32 0, i32* %1, align 4
  br label %102

102:                                              ; preds = %101, %95, %89, %86, %18, %5
  %103 = load i32, i32* %1, align 4
  ret i32 %103
}

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @print_errors(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
