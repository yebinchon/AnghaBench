; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_msg.c_MSG_initHuffman.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_msg.c_MSG_initHuffman.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@qtrue = common dso_local global i32 0, align 4
@msgInit = common dso_local global i32 0, align 4
@msgHuff = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@msg_hData = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MSG_initHuffman() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @qtrue, align 4
  store i32 %3, i32* @msgInit, align 4
  %4 = call i32 @Huff_Init(%struct.TYPE_3__* @msgHuff)
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %26, %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %6, 256
  br i1 %7, label %8, label %29

8:                                                ; preds = %5
  store i32 0, i32* %2, align 4
  br label %9

9:                                                ; preds = %22, %8
  %10 = load i32, i32* %2, align 4
  %11 = load i32*, i32** @msg_hData, align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %10, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %9
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @Huff_addRef(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @msgHuff, i32 0, i32 1), i32 %18)
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @Huff_addRef(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @msgHuff, i32 0, i32 0), i32 %20)
  br label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %2, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %2, align 4
  br label %9

25:                                               ; preds = %9
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %1, align 4
  br label %5

29:                                               ; preds = %5
  ret void
}

declare dso_local i32 @Huff_Init(%struct.TYPE_3__*) #1

declare dso_local i32 @Huff_addRef(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
