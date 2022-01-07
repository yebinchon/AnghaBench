; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_bsp_ent.c_ParseEpair.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_bsp_ent.c_ParseEpair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i8* }
%struct.TYPE_7__ = type { i32 }

@MAX_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"ParseEpair: token %s too long\00", align 1
@MAX_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @ParseEpair(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__, align 4
  store i32* %0, i32** %2, align 8
  %5 = call %struct.TYPE_8__* @GetMemory(i32 16)
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = call i32 @memset(%struct.TYPE_8__* %6, i32 0, i32 16)
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @PS_ExpectAnyToken(i32* %8, %struct.TYPE_7__* %4)
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @StripDoubleQuotes(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @strlen(i32 %14)
  %16 = load i32, i32* @MAX_KEY, align 4
  %17 = sub nsw i32 %16, 1
  %18 = icmp sge i32 %15, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @Error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %19, %1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @copystring(i32 %25)
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @PS_ExpectAnyToken(i32* %29, %struct.TYPE_7__* %4)
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @StripDoubleQuotes(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @strlen(i32 %35)
  %37 = load i32, i32* @MAX_VALUE, align 4
  %38 = sub nsw i32 %37, 1
  %39 = icmp sge i32 %36, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %23
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @Error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %40, %23
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @copystring(i32 %46)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @StripTrailing(i8* %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @StripTrailing(i8* %56)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %58
}

declare dso_local %struct.TYPE_8__* @GetMemory(i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @PS_ExpectAnyToken(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @StripDoubleQuotes(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @Error(i8*, i32) #1

declare dso_local i8* @copystring(i32) #1

declare dso_local i32 @StripTrailing(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
