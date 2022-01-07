; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_core.c_card_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_core.c_card_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_cardinfo = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@CARD_STATE_STARTING = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@CARD_STATE_SHUTTING_DOWN = common dso_local global i32 0, align 4
@CARD_STATE_SHUTDOWN = common dso_local global i32 0, align 4
@CARD_CMD_SHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsxx_cardinfo*)* @card_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @card_shutdown(%struct.rsxx_cardinfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rsxx_cardinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rsxx_cardinfo* %0, %struct.rsxx_cardinfo** %3, align 8
  %8 = call i32 @msecs_to_jiffies(i32 120000)
  store i32 %8, i32* %6, align 4
  %9 = load i64, i64* @jiffies, align 8
  store i64 %9, i64* %5, align 8
  br label %10

10:                                               ; preds = %29, %1
  %11 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %12 = call i32 @rsxx_get_card_state(%struct.rsxx_cardinfo* %11, i32* %4)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %2, align 4
  br label %86

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %17
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @CARD_STATE_STARTING, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i64, i64* @jiffies, align 8
  %24 = load i64, i64* %5, align 8
  %25 = sub nsw i64 %23, %24
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp slt i64 %25, %27
  br label %29

29:                                               ; preds = %22, %18
  %30 = phi i1 [ false, %18 ], [ %28, %22 ]
  br i1 %30, label %10, label %31

31:                                               ; preds = %29
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @CARD_STATE_STARTING, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @ETIMEDOUT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %86

38:                                               ; preds = %31
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @CARD_STATE_SHUTTING_DOWN, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @CARD_STATE_SHUTDOWN, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %48 = load i32, i32* @CARD_CMD_SHUTDOWN, align 4
  %49 = call i32 @rsxx_issue_card_cmd(%struct.rsxx_cardinfo* %47, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %2, align 4
  br label %86

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %42, %38
  %56 = load i64, i64* @jiffies, align 8
  store i64 %56, i64* %5, align 8
  br label %57

57:                                               ; preds = %76, %55
  %58 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %59 = call i32 @rsxx_get_card_state(%struct.rsxx_cardinfo* %58, i32* %4)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %2, align 4
  br label %86

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @CARD_STATE_SHUTDOWN, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %65
  %70 = load i64, i64* @jiffies, align 8
  %71 = load i64, i64* %5, align 8
  %72 = sub nsw i64 %70, %71
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = icmp slt i64 %72, %74
  br label %76

76:                                               ; preds = %69, %65
  %77 = phi i1 [ false, %65 ], [ %75, %69 ]
  br i1 %77, label %57, label %78

78:                                               ; preds = %76
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @CARD_STATE_SHUTDOWN, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i32, i32* @ETIMEDOUT, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %86

85:                                               ; preds = %78
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %82, %62, %52, %35, %15
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @rsxx_get_card_state(%struct.rsxx_cardinfo*, i32*) #1

declare dso_local i32 @rsxx_issue_card_cmd(%struct.rsxx_cardinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
