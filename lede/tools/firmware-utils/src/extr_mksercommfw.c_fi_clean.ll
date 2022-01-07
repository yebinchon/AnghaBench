; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mksercommfw.c_fi_clean.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mksercommfw.c_fi_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_info = type { i64, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file_info*)* @fi_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fi_clean(%struct.file_info* %0) #0 {
  %2 = alloca %struct.file_info*, align 8
  store %struct.file_info* %0, %struct.file_info** %2, align 8
  %3 = load %struct.file_info*, %struct.file_info** %2, align 8
  %4 = icmp ne %struct.file_info* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %29

6:                                                ; preds = %1
  %7 = load %struct.file_info*, %struct.file_info** %2, align 8
  %8 = getelementptr inbounds %struct.file_info, %struct.file_info* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = load %struct.file_info*, %struct.file_info** %2, align 8
  %13 = getelementptr inbounds %struct.file_info, %struct.file_info* %12, i32 0, i32 2
  store i32* null, i32** %13, align 8
  br label %14

14:                                               ; preds = %11, %6
  %15 = load %struct.file_info*, %struct.file_info** %2, align 8
  %16 = getelementptr inbounds %struct.file_info, %struct.file_info* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.file_info*, %struct.file_info** %2, align 8
  %21 = getelementptr inbounds %struct.file_info, %struct.file_info* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @free(i32* %22)
  %24 = load %struct.file_info*, %struct.file_info** %2, align 8
  %25 = getelementptr inbounds %struct.file_info, %struct.file_info* %24, i32 0, i32 1
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %19, %14
  %27 = load %struct.file_info*, %struct.file_info** %2, align 8
  %28 = getelementptr inbounds %struct.file_info, %struct.file_info* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %26, %5
  ret void
}

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
