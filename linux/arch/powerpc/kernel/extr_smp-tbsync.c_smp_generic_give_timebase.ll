; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_smp-tbsync.c_smp_generic_give_timebase.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_smp-tbsync.c_smp_generic_give_timebase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Software timebase sync\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@tbsync = common dso_local global %struct.TYPE_4__* null, align 8
@running = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"Got ack\0A\00", align 1
@kSetAndTest = common dso_local global i32 0, align 4
@NUM_ITER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"score %d, offset %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Min %d (score %d), Max %d (score %d)\0A\00", align 1
@kTest = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Final offset: %d (%d/%d)\0A\00", align 1
@kExit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smp_generic_give_timebase() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %5, align 4
  store i32 5000, i32* %6, align 4
  store i32 1000, i32* %7, align 4
  %8 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.TYPE_4__* @kzalloc(i32 24, i32 %9)
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** @tbsync, align 8
  %11 = call i32 (...) @mb()
  store i32 1, i32* @running, align 4
  br label %12

12:                                               ; preds = %18, %0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tbsync, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = call i32 (...) @barrier()
  br label %12

20:                                               ; preds = %12
  %21 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %22

22:                                               ; preds = %42, %20
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %22
  %27 = load i32, i32* @kSetAndTest, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @NUM_ITER, align 4
  %30 = call i32 @start_contest(i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %2, align 4
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load i32, i32* %2, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %6, align 4
  br label %40

38:                                               ; preds = %26
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %40
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %43, %44
  %46 = sdiv i32 %45, 2
  store i32 %46, i32* %7, align 4
  br label %22

47:                                               ; preds = %22
  %48 = load i32, i32* @kSetAndTest, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @NUM_ITER, align 4
  %51 = call i32 @start_contest(i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %2, align 4
  %52 = load i32, i32* @kSetAndTest, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @NUM_ITER, align 4
  %55 = call i32 @start_contest(i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %3, align 4
  %60 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %56, i32 %57, i32 %58, i32 %59)
  %61 = load i32, i32* %2, align 4
  %62 = call i32 @abs(i32 %61) #3
  store i32 %62, i32* %2, align 4
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @abs(i32 %63) #3
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* %2, align 4
  %66 = load i32, i32* %3, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %47
  %69 = load i32, i32* %5, align 4
  br label %72

70:                                               ; preds = %47
  %71 = load i32, i32* %6, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  store i32 %73, i32* %7, align 4
  store i32 0, i32* %1, align 4
  br label %74

74:                                               ; preds = %100, %72
  %75 = load i32, i32* %1, align 4
  %76 = icmp slt i32 %75, 10
  br i1 %76, label %77, label %103

77:                                               ; preds = %74
  %78 = load i32, i32* @kSetAndTest, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @NUM_ITER, align 4
  %81 = sdiv i32 %80, 10
  %82 = call i32 @start_contest(i32 %78, i32 %79, i32 %81)
  %83 = load i32, i32* @kTest, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @NUM_ITER, align 4
  %86 = call i32 @start_contest(i32 %83, i32 %84, i32 %85)
  store i32 %86, i32* %3, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %77
  %89 = load i32, i32* %3, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %88, %77
  %92 = load i32, i32* %3, align 4
  %93 = load i32, i32* %2, align 4
  %94 = icmp sle i32 %92, %93
  br i1 %94, label %98, label %95

95:                                               ; preds = %91
  %96 = load i32, i32* %3, align 4
  %97 = icmp slt i32 %96, 20
  br i1 %97, label %98, label %99

98:                                               ; preds = %95, %91
  br label %103

99:                                               ; preds = %95
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %1, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %1, align 4
  br label %74

103:                                              ; preds = %98, %74
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* @NUM_ITER, align 4
  %107 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %104, i32 %105, i32 %106)
  %108 = load i32, i32* @kExit, align 4
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tbsync, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  %111 = call i32 (...) @wmb()
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tbsync, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  store i32 1, i32* %113, align 8
  br label %114

114:                                              ; preds = %119, %103
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tbsync, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = call i32 (...) @barrier()
  br label %114

121:                                              ; preds = %114
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tbsync, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  store i32 0, i32* %123, align 8
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tbsync, align 8
  %125 = call i32 @kfree(%struct.TYPE_4__* %124)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** @tbsync, align 8
  store i32 0, i32* @running, align 4
  ret void
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local %struct.TYPE_4__* @kzalloc(i32, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @start_contest(i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
