; ModuleID = '/home/carl/AnghaBench/libgit2/tests/extr_clarsummary.h_clar_summary_init.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/extr_clarsummary.h_clar_summary_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clar_summary = type { i8*, i32* }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clar_summary* @clar_summary_init(i8* %0) #0 {
  %2 = alloca %struct.clar_summary*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.clar_summary*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32* @fopen(i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %7, i32** %5, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.clar_summary* null, %struct.clar_summary** %2, align 8
  br label %24

10:                                               ; preds = %1
  %11 = call %struct.clar_summary* @malloc(i32 16)
  store %struct.clar_summary* %11, %struct.clar_summary** %4, align 8
  %12 = icmp eq %struct.clar_summary* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @fclose(i32* %14)
  store %struct.clar_summary* null, %struct.clar_summary** %2, align 8
  br label %24

16:                                               ; preds = %10
  %17 = load i8*, i8** %3, align 8
  %18 = load %struct.clar_summary*, %struct.clar_summary** %4, align 8
  %19 = getelementptr inbounds %struct.clar_summary, %struct.clar_summary* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.clar_summary*, %struct.clar_summary** %4, align 8
  %22 = getelementptr inbounds %struct.clar_summary, %struct.clar_summary* %21, i32 0, i32 1
  store i32* %20, i32** %22, align 8
  %23 = load %struct.clar_summary*, %struct.clar_summary** %4, align 8
  store %struct.clar_summary* %23, %struct.clar_summary** %2, align 8
  br label %24

24:                                               ; preds = %16, %13, %9
  %25 = load %struct.clar_summary*, %struct.clar_summary** %2, align 8
  ret %struct.clar_summary* %25
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local %struct.clar_summary* @malloc(i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
