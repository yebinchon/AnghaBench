; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/extr_video-mode.c_probe_cards.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/extr_video-mode.c_probe_cards.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.card_info = type { i32, i64, i64 (...)* }

@probe_cards.probed = internal global [2 x i32] zeroinitializer, align 4
@video_cards = common dso_local global %struct.card_info* null, align 8
@video_cards_end = common dso_local global %struct.card_info* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @probe_cards(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.card_info*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [2 x i32], [2 x i32]* @probe_cards.probed, i64 0, i64 %5
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %45

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* @probe_cards.probed, i64 0, i64 %12
  store i32 1, i32* %13, align 4
  %14 = load %struct.card_info*, %struct.card_info** @video_cards, align 8
  store %struct.card_info* %14, %struct.card_info** %3, align 8
  br label %15

15:                                               ; preds = %42, %10
  %16 = load %struct.card_info*, %struct.card_info** %3, align 8
  %17 = load %struct.card_info*, %struct.card_info** @video_cards_end, align 8
  %18 = icmp ult %struct.card_info* %16, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %15
  %20 = load %struct.card_info*, %struct.card_info** %3, align 8
  %21 = getelementptr inbounds %struct.card_info, %struct.card_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %2, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %19
  %26 = load %struct.card_info*, %struct.card_info** %3, align 8
  %27 = getelementptr inbounds %struct.card_info, %struct.card_info* %26, i32 0, i32 2
  %28 = load i64 (...)*, i64 (...)** %27, align 8
  %29 = icmp ne i64 (...)* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.card_info*, %struct.card_info** %3, align 8
  %32 = getelementptr inbounds %struct.card_info, %struct.card_info* %31, i32 0, i32 2
  %33 = load i64 (...)*, i64 (...)** %32, align 8
  %34 = call i64 (...) %33()
  %35 = load %struct.card_info*, %struct.card_info** %3, align 8
  %36 = getelementptr inbounds %struct.card_info, %struct.card_info* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  br label %40

37:                                               ; preds = %25
  %38 = load %struct.card_info*, %struct.card_info** %3, align 8
  %39 = getelementptr inbounds %struct.card_info, %struct.card_info* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %37, %30
  br label %41

41:                                               ; preds = %40, %19
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.card_info*, %struct.card_info** %3, align 8
  %44 = getelementptr inbounds %struct.card_info, %struct.card_info* %43, i32 1
  store %struct.card_info* %44, %struct.card_info** %3, align 8
  br label %15

45:                                               ; preds = %9, %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
