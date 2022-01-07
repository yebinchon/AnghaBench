; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_trace.c_AddTraceWinding.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_trace.c_AddTraceWinding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@deadWinding = common dso_local global i32 0, align 4
@numTraceWindings = common dso_local global i32 0, align 4
@maxTraceWindings = common dso_local global i32 0, align 4
@GROW_TRACE_WINDINGS = common dso_local global i64 0, align 8
@traceWindings = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @AddTraceWinding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AddTraceWinding(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @deadWinding, align 4
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load i32, i32* @deadWinding, align 4
  %9 = load i32, i32* @numTraceWindings, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load i32, i32* @deadWinding, align 4
  store i32 %12, i32* %3, align 4
  br label %44

13:                                               ; preds = %7, %1
  %14 = load i32, i32* @numTraceWindings, align 4
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @numTraceWindings, align 4
  %16 = load i32, i32* @maxTraceWindings, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %13
  %19 = load i64, i64* @GROW_TRACE_WINDINGS, align 8
  %20 = load i32, i32* @maxTraceWindings, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %19
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* @maxTraceWindings, align 4
  %24 = load i32, i32* @maxTraceWindings, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 1
  %27 = trunc i64 %26 to i32
  %28 = call i8* @safe_malloc(i32 %27)
  store i8* %28, i8** %4, align 8
  %29 = load i8*, i8** @traceWindings, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %18
  %32 = load i8*, i8** %4, align 8
  %33 = load i8*, i8** @traceWindings, align 8
  %34 = load i32, i32* @numTraceWindings, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 1
  %37 = trunc i64 %36 to i32
  %38 = call i32 @memcpy(i8* %32, i8* %33, i32 %37)
  %39 = load i8*, i8** @traceWindings, align 8
  %40 = call i32 @free(i8* %39)
  br label %41

41:                                               ; preds = %31, %18
  %42 = load i8*, i8** %4, align 8
  store i8* %42, i8** @traceWindings, align 8
  br label %43

43:                                               ; preds = %41, %13
  br label %44

44:                                               ; preds = %43, %11
  %45 = load i8*, i8** @traceWindings, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8*, i8** %2, align 8
  %50 = call i32 @memcpy(i8* %48, i8* %49, i32 1)
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @numTraceWindings, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load i32, i32* @numTraceWindings, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* @numTraceWindings, align 4
  br label %57

57:                                               ; preds = %54, %44
  store i32 -1, i32* @deadWinding, align 4
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i8* @safe_malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
