; ModuleID = '/home/carl/AnghaBench/i3/i3bar/src/extr_outputs.c_outputs_string_cb.c'
source_filename = "/home/carl/AnghaBench/i3/i3bar/src/extr_outputs.c_outputs_string_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.outputs_json_params = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i8* }

@.str = private unnamed_addr constant [18 x i8] c"current_workspace\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @outputs_string_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @outputs_string_cb(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.outputs_json_params*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.outputs_json_params*
  store %struct.outputs_json_params* %13, %struct.outputs_json_params** %8, align 8
  %14 = load %struct.outputs_json_params*, %struct.outputs_json_params** %8, align 8
  %15 = getelementptr inbounds %struct.outputs_json_params, %struct.outputs_json_params* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %48, label %19

19:                                               ; preds = %3
  store i8* null, i8** %9, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @sasprintf(i8** %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %20, i8* %21)
  store i64 0, i64* @errno, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = call i64 @strtol(i8* %23, i8** %10, i32 10)
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* @errno, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %19
  %28 = load i8*, i8** %10, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = load i8*, i8** %10, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i64, i64* %11, align 8
  %37 = load %struct.outputs_json_params*, %struct.outputs_json_params** %8, align 8
  %38 = getelementptr inbounds %struct.outputs_json_params, %struct.outputs_json_params* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i64 %36, i64* %40, align 8
  br label %41

41:                                               ; preds = %35, %30, %27, %19
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @FREE(i8* %42)
  %44 = load %struct.outputs_json_params*, %struct.outputs_json_params** %8, align 8
  %45 = getelementptr inbounds %struct.outputs_json_params, %struct.outputs_json_params* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @FREE(i8* %46)
  store i32 1, i32* %4, align 4
  br label %67

48:                                               ; preds = %3
  %49 = load %struct.outputs_json_params*, %struct.outputs_json_params** %8, align 8
  %50 = getelementptr inbounds %struct.outputs_json_params, %struct.outputs_json_params* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %67

55:                                               ; preds = %48
  %56 = load %struct.outputs_json_params*, %struct.outputs_json_params** %8, align 8
  %57 = getelementptr inbounds %struct.outputs_json_params, %struct.outputs_json_params* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i64, i64* %7, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @sasprintf(i8** %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %60, i8* %61)
  %63 = load %struct.outputs_json_params*, %struct.outputs_json_params** %8, align 8
  %64 = getelementptr inbounds %struct.outputs_json_params, %struct.outputs_json_params* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @FREE(i8* %65)
  store i32 1, i32* %4, align 4
  br label %67

67:                                               ; preds = %55, %54, %41
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @sasprintf(i8**, i8*, i64, i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @FREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
