; ModuleID = '/home/carl/AnghaBench/libui/test/extr_spaced.c_append.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_spaced.c_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thing = type { i8*, i32 }

@len = common dso_local global i32 0, align 4
@cap = common dso_local global i32 0, align 4
@grow = common dso_local global i64 0, align 8
@things = common dso_local global %struct.thing* null, align 8
@.str = private unnamed_addr constant [52 x i8] c"reallocating things array in test/spaced.c append()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @append(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @len, align 4
  %6 = load i32, i32* @cap, align 4
  %7 = icmp sge i32 %5, %6
  br i1 %7, label %8, label %26

8:                                                ; preds = %2
  %9 = load i64, i64* @grow, align 8
  %10 = load i32, i32* @cap, align 4
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %11, %9
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* @cap, align 4
  %14 = load %struct.thing*, %struct.thing** @things, align 8
  %15 = load i32, i32* @cap, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 16
  %18 = trunc i64 %17 to i32
  %19 = call i64 @realloc(%struct.thing* %14, i32 %18)
  %20 = inttoptr i64 %19 to %struct.thing*
  store %struct.thing* %20, %struct.thing** @things, align 8
  %21 = load %struct.thing*, %struct.thing** @things, align 8
  %22 = icmp eq %struct.thing* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %8
  %24 = call i32 @die(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %8
  br label %26

26:                                               ; preds = %25, %2
  %27 = load i8*, i8** %3, align 8
  %28 = load %struct.thing*, %struct.thing** @things, align 8
  %29 = load i32, i32* @len, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.thing, %struct.thing* %28, i64 %30
  %32 = getelementptr inbounds %struct.thing, %struct.thing* %31, i32 0, i32 0
  store i8* %27, i8** %32, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.thing*, %struct.thing** @things, align 8
  %35 = load i32, i32* @len, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.thing, %struct.thing* %34, i64 %36
  %38 = getelementptr inbounds %struct.thing, %struct.thing* %37, i32 0, i32 1
  store i32 %33, i32* %38, align 8
  %39 = load i32, i32* @len, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @len, align 4
  %41 = load %struct.thing*, %struct.thing** @things, align 8
  %42 = load i32, i32* @len, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.thing, %struct.thing* %41, i64 %44
  %46 = getelementptr inbounds %struct.thing, %struct.thing* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  ret i8* %47
}

declare dso_local i64 @realloc(%struct.thing*, i32) #1

declare dso_local i32 @die(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
