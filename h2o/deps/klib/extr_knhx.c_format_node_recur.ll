; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_knhx.c_format_node_recur.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_knhx.c_format_node_recur.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64*, i8*, i64 }

@.str = private unnamed_addr constant [4 x i8] c":%g\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.TYPE_4__*, i32*, i8*)* @format_node_recur to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_node_recur(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1, i32* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %79

14:                                               ; preds = %4
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @kputc(i8 signext 40, i32* %15)
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %42, %14
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %17
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @kputc(i8 signext 44, i32* %27)
  br label %29

29:                                               ; preds = %26, %23
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %38
  %40 = load i32*, i32** %7, align 8
  %41 = load i8*, i8** %8, align 8
  call void @format_node_recur(%struct.TYPE_4__* %30, %struct.TYPE_4__* %39, i32* %40, i8* %41)
  br label %42

42:                                               ; preds = %29
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %17

45:                                               ; preds = %17
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @kputc(i8 signext 41, i32* %46)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %45
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @strlen(i8* %58)
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @kputsn(i8* %55, i32 %59, i32* %60)
  br label %62

62:                                               ; preds = %52, %45
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp sge i64 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %62
  %68 = load i8*, i8** %8, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @sprintf(i8* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %71)
  %73 = load i8*, i8** %8, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @strlen(i8* %74)
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @kputsn(i8* %73, i32 %75, i32* %76)
  br label %78

78:                                               ; preds = %67, %62
  br label %89

79:                                               ; preds = %4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @strlen(i8* %85)
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @kputsn(i8* %82, i32 %86, i32* %87)
  br label %89

89:                                               ; preds = %79, %78
  ret void
}

declare dso_local i32 @kputc(i8 signext, i32*) #1

declare dso_local i32 @kputsn(i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
