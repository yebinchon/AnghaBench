; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_frame.c_quicly_encode_path_challenge_frame.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_frame.c_quicly_encode_path_challenge_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@QUICLY_FRAME_TYPE_PATH_RESPONSE = common dso_local global i32 0, align 4
@QUICLY_FRAME_TYPE_PATH_CHALLENGE = common dso_local global i32 0, align 4
@QUICLY_PATH_CHALLENGE_DATA_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @quicly_encode_path_challenge_frame(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = load i32, i32* @QUICLY_FRAME_TYPE_PATH_RESPONSE, align 4
  br label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @QUICLY_FRAME_TYPE_PATH_CHALLENGE, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %4, align 8
  store i32 %14, i32* %15, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* @QUICLY_PATH_CHALLENGE_DATA_LEN, align 4
  %20 = call i32 @memcpy(i32* %17, i32* %18, i32 %19)
  %21 = load i32, i32* @QUICLY_PATH_CHALLENGE_DATA_LEN, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32* %24, i32** %4, align 8
  %25 = load i32*, i32** %4, align 8
  ret i32* %25
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
