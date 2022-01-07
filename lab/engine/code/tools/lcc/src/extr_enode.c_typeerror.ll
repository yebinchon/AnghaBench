; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_enode.c_typeerror.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_enode.c_typeerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i8* }
%struct.TYPE_4__ = type { i8* }

@typeerror.ops = internal global [25 x %struct.anon] [%struct.anon { i32 149, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0) }, %struct.anon { i32 139, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0) }, %struct.anon { i32 132, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0) }, %struct.anon { i32 151, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0) }, %struct.anon { i32 128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0) }, %struct.anon { i32 137, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0) }, %struct.anon { i32 135, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0) }, %struct.anon { i32 129, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0) }, %struct.anon { i32 148, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0) }, %struct.anon { i32 147, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0) }, %struct.anon { i32 146, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0) }, %struct.anon { i32 145, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0) }, %struct.anon { i32 143, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0) }, %struct.anon { i32 134, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0) }, %struct.anon { i32 142, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0) }, %struct.anon { i32 141, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0) }, %struct.anon { i32 140, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0) }, %struct.anon { i32 138, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0) }, %struct.anon { i32 136, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0) }, %struct.anon { i32 133, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0) }, %struct.anon { i32 150, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0) }, %struct.anon { i32 131, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0) }, %struct.anon { i32 130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0) }, %struct.anon { i32 144, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0) }, %struct.anon zeroinitializer], align 16
@.str = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"?:\00", align 1
@.str.22 = private unnamed_addr constant [49 x i8] c"operands of %s have illegal types `%t' and `%t'\0A\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"operand of unary %s has illegal type `%t'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @typeerror(i32 %0, %struct.TYPE_4__* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @generic(i32 %8)
  store i32 %9, i32* %4, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %27, %3
  %11 = load i32, i32* %7, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [25 x %struct.anon], [25 x %struct.anon]* @typeerror.ops, i64 0, i64 %12
  %14 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 16
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %10
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [25 x %struct.anon], [25 x %struct.anon]* @typeerror.ops, i64 0, i64 %20
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 16
  %24 = icmp eq i32 %18, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %30

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %10

30:                                               ; preds = %25, %10
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [25 x %struct.anon], [25 x %struct.anon]* @typeerror.ops, i64 0, i64 %32
  %34 = getelementptr inbounds %struct.anon, %struct.anon* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @assert(i8* %35)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = icmp ne %struct.TYPE_4__* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %30
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [25 x %struct.anon], [25 x %struct.anon]* @typeerror.ops, i64 0, i64 %41
  %43 = getelementptr inbounds %struct.anon, %struct.anon* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 (i8*, i8*, i8*, ...) @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.22, i64 0, i64 0), i8* %44, i8* %47, i8* %50)
  br label %62

52:                                               ; preds = %30
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [25 x %struct.anon], [25 x %struct.anon]* @typeerror.ops, i64 0, i64 %54
  %56 = getelementptr inbounds %struct.anon, %struct.anon* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 (i8*, i8*, i8*, ...) @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.23, i64 0, i64 0), i8* %57, i8* %60)
  br label %62

62:                                               ; preds = %52, %39
  ret void
}

declare dso_local i32 @generic(i32) #1

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @error(i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
