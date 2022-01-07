; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_apilist.c_mrb_debug_get_source.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_apilist.c_mrb_debug_get_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mrb_debug_get_source(i32* %0, %struct.TYPE_5__* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca [3 x i8*], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i8* null, i8** %12, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i8* @strrchr(i8* %14, i8 signext 47)
  store i8* %15, i8** %13, align 8
  %16 = load i8*, i8** %13, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i8*, i8** %13, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %13, align 8
  br label %23

21:                                               ; preds = %4
  %22 = load i8*, i8** %8, align 8
  store i8* %22, i8** %13, align 8
  br label %23

23:                                               ; preds = %21, %18
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 0
  store i8* %24, i8** %25, align 16
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @mrb_debug_get_filename(i32 %31, i32 0)
  %33 = call i8* @dirname(i32* %26, i32 %32)
  %34 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 1
  store i8* %33, i8** %34, align 8
  %35 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %35, align 16
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %67, %23
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 3
  br i1 %38, label %39, label %70

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %67

46:                                               ; preds = %39
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = call i8* @build_path(i32* %47, i8* %51, i8* %52)
  store i8* %53, i8** %12, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %67

56:                                               ; preds = %46
  %57 = load i8*, i8** %12, align 8
  %58 = call i32* @fopen(i8* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %58, i32** %10, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32*, i32** %5, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = call i32 @mrb_free(i32* %61, i8* %62)
  store i8* null, i8** %12, align 8
  br label %67

64:                                               ; preds = %56
  %65 = load i32*, i32** %10, align 8
  %66 = call i32 @fclose(i32* %65)
  br label %70

67:                                               ; preds = %60, %55, %45
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %36

70:                                               ; preds = %64, %36
  %71 = load i32*, i32** %5, align 8
  %72 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 1
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @mrb_free(i32* %71, i8* %73)
  %75 = load i8*, i8** %12, align 8
  ret i8* %75
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @dirname(i32*, i32) #1

declare dso_local i32 @mrb_debug_get_filename(i32, i32) #1

declare dso_local i8* @build_path(i32*, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @mrb_free(i32*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
