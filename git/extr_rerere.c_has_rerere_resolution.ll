; ModuleID = '/home/carl/AnghaBench/git/extr_rerere.c_has_rerere_resolution.c'
source_filename = "/home/carl/AnghaBench/git/extr_rerere.c_has_rerere_resolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rerere_id = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@RR_HAS_POSTIMAGE = common dso_local global i32 0, align 4
@RR_HAS_PREIMAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rerere_id*)* @has_rerere_resolution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_rerere_resolution(%struct.rerere_id* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rerere_id*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rerere_id* %0, %struct.rerere_id** %3, align 8
  %6 = load i32, i32* @RR_HAS_POSTIMAGE, align 4
  %7 = load i32, i32* @RR_HAS_PREIMAGE, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %4, align 4
  %9 = load %struct.rerere_id*, %struct.rerere_id** %3, align 8
  %10 = getelementptr inbounds %struct.rerere_id, %struct.rerere_id* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

15:                                               ; preds = %1
  %16 = load %struct.rerere_id*, %struct.rerere_id** %3, align 8
  %17 = getelementptr inbounds %struct.rerere_id, %struct.rerere_id* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %15, %14
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
