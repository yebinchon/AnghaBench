; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_streebog_generic.c_streebog_pad.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_streebog_generic.c_streebog_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.streebog_state = type { i32, i32* }

@STREEBOG_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.streebog_state*)* @streebog_pad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @streebog_pad(%struct.streebog_state* %0) #0 {
  %2 = alloca %struct.streebog_state*, align 8
  store %struct.streebog_state* %0, %struct.streebog_state** %2, align 8
  %3 = load %struct.streebog_state*, %struct.streebog_state** %2, align 8
  %4 = getelementptr inbounds %struct.streebog_state, %struct.streebog_state* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @STREEBOG_BLOCK_SIZE, align 4
  %7 = icmp sge i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %33

9:                                                ; preds = %1
  %10 = load %struct.streebog_state*, %struct.streebog_state** %2, align 8
  %11 = getelementptr inbounds %struct.streebog_state, %struct.streebog_state* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.streebog_state*, %struct.streebog_state** %2, align 8
  %14 = getelementptr inbounds %struct.streebog_state, %struct.streebog_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %12, i64 %16
  %18 = load %struct.streebog_state*, %struct.streebog_state** %2, align 8
  %19 = getelementptr inbounds %struct.streebog_state, %struct.streebog_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = sub i64 8, %21
  %23 = trunc i64 %22 to i32
  %24 = call i32 @memset(i32* %17, i32 0, i32 %23)
  %25 = load %struct.streebog_state*, %struct.streebog_state** %2, align 8
  %26 = getelementptr inbounds %struct.streebog_state, %struct.streebog_state* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.streebog_state*, %struct.streebog_state** %2, align 8
  %29 = getelementptr inbounds %struct.streebog_state, %struct.streebog_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  store i32 1, i32* %32, align 4
  br label %33

33:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
