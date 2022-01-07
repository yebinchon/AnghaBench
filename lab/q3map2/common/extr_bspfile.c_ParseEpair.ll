; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_bspfile.c_ParseEpair.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_bspfile.c_ParseEpair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8* }

@token = common dso_local global i32 0, align 4
@MAX_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"ParseEpar: token too long\00", align 1
@qfalse = common dso_local global i32 0, align 4
@MAX_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @ParseEpair() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = call %struct.TYPE_5__* @safe_malloc(i32 16)
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %1, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %4 = call i32 @memset(%struct.TYPE_5__* %3, i32 0, i32 16)
  %5 = load i32, i32* @token, align 4
  %6 = call i32 @strlen(i32 %5)
  %7 = load i32, i32* @MAX_KEY, align 4
  %8 = sub nsw i32 %7, 1
  %9 = icmp sge i32 %6, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 @Error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %0
  %13 = load i32, i32* @token, align 4
  %14 = call i8* @copystring(i32 %13)
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load i32, i32* @qfalse, align 4
  %18 = call i32 @GetToken(i32 %17)
  %19 = load i32, i32* @token, align 4
  %20 = call i32 @strlen(i32 %19)
  %21 = load i32, i32* @MAX_VALUE, align 4
  %22 = sub nsw i32 %21, 1
  %23 = icmp sge i32 %20, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %12
  %25 = call i32 @Error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %12
  %27 = load i32, i32* @token, align 4
  %28 = call i8* @copystring(i32 %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @StripTrailing(i8* %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @StripTrailing(i8* %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  ret %struct.TYPE_5__* %39
}

declare dso_local %struct.TYPE_5__* @safe_malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @Error(i8*) #1

declare dso_local i8* @copystring(i32) #1

declare dso_local i32 @GetToken(i32) #1

declare dso_local i32 @StripTrailing(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
