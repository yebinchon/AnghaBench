; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_allocate_ack_eliciting_frame.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_allocate_ack_eliciting_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@PTLS_ERROR_NO_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i64, i32**, i32)* @allocate_ack_eliciting_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_ack_eliciting_frame(%struct.TYPE_6__* %0, i32* %1, i64 %2, i32** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32** %3, i32*** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i64, i64* %9, align 8
  %16 = call i32 @_do_allocate_frame(%struct.TYPE_6__* %13, i32* %14, i64 %15, i32 1)
  store i32 %16, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %6, align 4
  br label %32

20:                                               ; preds = %5
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %11, align 4
  %25 = call i32* @quicly_sentmap_allocate(i32* %23, i32 %24)
  %26 = load i32**, i32*** %10, align 8
  store i32* %25, i32** %26, align 8
  %27 = icmp eq i32* %25, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @PTLS_ERROR_NO_MEMORY, align 4
  store i32 %29, i32* %6, align 4
  br label %32

30:                                               ; preds = %20
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %30, %28, %18
  %33 = load i32, i32* %6, align 4
  ret i32 %33
}

declare dso_local i32 @_do_allocate_frame(%struct.TYPE_6__*, i32*, i64, i32) #1

declare dso_local i32* @quicly_sentmap_allocate(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
