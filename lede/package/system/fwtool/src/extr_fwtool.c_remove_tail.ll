; ModuleID = '/home/carl/AnghaBench/lede/package/system/fwtool/src/extr_fwtool.c_remove_tail.c'
source_filename = "/home/carl/AnghaBench/lede/package/system/fwtool/src/extr_fwtool.c_remove_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_buf = type { i32, i64, i32*, i32* }

@BUFLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.data_buf*, i32)* @remove_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_tail(%struct.data_buf* %0, i32 %1) #0 {
  %3 = alloca %struct.data_buf*, align 8
  %4 = alloca i32, align 4
  store %struct.data_buf* %0, %struct.data_buf** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = sext i32 %5 to i64
  %7 = load %struct.data_buf*, %struct.data_buf** %3, align 8
  %8 = getelementptr inbounds %struct.data_buf, %struct.data_buf* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = sub nsw i64 %9, %6
  store i64 %10, i64* %8, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.data_buf*, %struct.data_buf** %3, align 8
  %13 = getelementptr inbounds %struct.data_buf, %struct.data_buf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = load %struct.data_buf*, %struct.data_buf** %3, align 8
  %17 = getelementptr inbounds %struct.data_buf, %struct.data_buf* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %36

21:                                               ; preds = %2
  %22 = load %struct.data_buf*, %struct.data_buf** %3, align 8
  %23 = getelementptr inbounds %struct.data_buf, %struct.data_buf* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @free(i32* %24)
  %26 = load %struct.data_buf*, %struct.data_buf** %3, align 8
  %27 = getelementptr inbounds %struct.data_buf, %struct.data_buf* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.data_buf*, %struct.data_buf** %3, align 8
  %30 = getelementptr inbounds %struct.data_buf, %struct.data_buf* %29, i32 0, i32 3
  store i32* %28, i32** %30, align 8
  %31 = load %struct.data_buf*, %struct.data_buf** %3, align 8
  %32 = getelementptr inbounds %struct.data_buf, %struct.data_buf* %31, i32 0, i32 2
  store i32* null, i32** %32, align 8
  %33 = load i64, i64* @BUFLEN, align 8
  %34 = load %struct.data_buf*, %struct.data_buf** %3, align 8
  %35 = getelementptr inbounds %struct.data_buf, %struct.data_buf* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
