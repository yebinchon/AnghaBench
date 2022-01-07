; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotReachabilityTime.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotReachabilityTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i32, i8*, i32)* }
%struct.TYPE_4__ = type { i32 }

@TRAVELTYPE_MASK = common dso_local global i32 0, align 4
@botimport = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@PRT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"travel type %d not implemented yet\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotReachabilityTime(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @TRAVELTYPE_MASK, align 4
  %8 = and i32 %6, %7
  switch i32 %8, label %24 [
    i32 130, label %9
    i32 140, label %10
    i32 142, label %11
    i32 134, label %12
    i32 129, label %13
    i32 136, label %14
    i32 132, label %15
    i32 128, label %16
    i32 131, label %17
    i32 139, label %18
    i32 137, label %19
    i32 133, label %20
    i32 141, label %21
    i32 135, label %22
    i32 138, label %23
  ]

9:                                                ; preds = %1
  store i32 5, i32* %2, align 4
  br label %31

10:                                               ; preds = %1
  store i32 5, i32* %2, align 4
  br label %31

11:                                               ; preds = %1
  store i32 5, i32* %2, align 4
  br label %31

12:                                               ; preds = %1
  store i32 6, i32* %2, align 4
  br label %31

13:                                               ; preds = %1
  store i32 5, i32* %2, align 4
  br label %31

14:                                               ; preds = %1
  store i32 5, i32* %2, align 4
  br label %31

15:                                               ; preds = %1
  store i32 5, i32* %2, align 4
  br label %31

16:                                               ; preds = %1
  store i32 5, i32* %2, align 4
  br label %31

17:                                               ; preds = %1
  store i32 5, i32* %2, align 4
  br label %31

18:                                               ; preds = %1
  store i32 10, i32* %2, align 4
  br label %31

19:                                               ; preds = %1
  store i32 8, i32* %2, align 4
  br label %31

20:                                               ; preds = %1
  store i32 6, i32* %2, align 4
  br label %31

21:                                               ; preds = %1
  store i32 6, i32* %2, align 4
  br label %31

22:                                               ; preds = %1
  store i32 10, i32* %2, align 4
  br label %31

23:                                               ; preds = %1
  store i32 10, i32* %2, align 4
  br label %31

24:                                               ; preds = %1
  %25 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @botimport, i32 0, i32 0), align 8
  %26 = load i32, i32* @PRT_ERROR, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 %25(i32 %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 8, i32* %2, align 4
  br label %31

31:                                               ; preds = %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
