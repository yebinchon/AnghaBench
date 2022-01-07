; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/extr_video-mode.c_mode_defined.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/extr_video-mode.c_mode_defined.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.card_info = type { i32, %struct.mode_info* }
%struct.mode_info = type { i64 }

@video_cards = common dso_local global %struct.card_info* null, align 8
@video_cards_end = common dso_local global %struct.card_info* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mode_defined(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.card_info*, align 8
  %5 = alloca %struct.mode_info*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %7 = load %struct.card_info*, %struct.card_info** @video_cards, align 8
  store %struct.card_info* %7, %struct.card_info** %4, align 8
  br label %8

8:                                                ; preds = %36, %1
  %9 = load %struct.card_info*, %struct.card_info** %4, align 8
  %10 = load %struct.card_info*, %struct.card_info** @video_cards_end, align 8
  %11 = icmp ult %struct.card_info* %9, %10
  br i1 %11, label %12, label %39

12:                                               ; preds = %8
  %13 = load %struct.card_info*, %struct.card_info** %4, align 8
  %14 = getelementptr inbounds %struct.card_info, %struct.card_info* %13, i32 0, i32 1
  %15 = load %struct.mode_info*, %struct.mode_info** %14, align 8
  store %struct.mode_info* %15, %struct.mode_info** %5, align 8
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %30, %12
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.card_info*, %struct.card_info** %4, align 8
  %19 = getelementptr inbounds %struct.card_info, %struct.card_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = load %struct.mode_info*, %struct.mode_info** %5, align 8
  %24 = getelementptr inbounds %struct.mode_info, %struct.mode_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %3, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %40

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  %33 = load %struct.mode_info*, %struct.mode_info** %5, align 8
  %34 = getelementptr inbounds %struct.mode_info, %struct.mode_info* %33, i32 1
  store %struct.mode_info* %34, %struct.mode_info** %5, align 8
  br label %16

35:                                               ; preds = %16
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.card_info*, %struct.card_info** %4, align 8
  %38 = getelementptr inbounds %struct.card_info, %struct.card_info* %37, i32 1
  store %struct.card_info* %38, %struct.card_info** %4, align 8
  br label %8

39:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %28
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
