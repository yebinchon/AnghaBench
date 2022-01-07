; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_apibreak.c_check_file_lineno.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_apibreak.c_check_file_lineno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrb_irep = type { i64, %struct.mrb_irep**, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32 }

@MRB_DEBUG_BP_FILE_OK = common dso_local global i64 0, align 8
@MRB_DEBUG_BP_LINENO_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mrb_irep*, i8*, i64)* @check_file_lineno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @check_file_lineno(%struct.mrb_irep* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.mrb_irep*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.mrb_irep* %0, %struct.mrb_irep** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %13

13:                                               ; preds = %79, %3
  %14 = load i64, i64* %10, align 8
  %15 = load %struct.mrb_irep*, %struct.mrb_irep** %5, align 8
  %16 = getelementptr inbounds %struct.mrb_irep, %struct.mrb_irep* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %14, %19
  br i1 %20, label %21, label %82

21:                                               ; preds = %13
  %22 = load %struct.mrb_irep*, %struct.mrb_irep** %5, align 8
  %23 = getelementptr inbounds %struct.mrb_irep, %struct.mrb_irep* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %25, align 8
  %27 = load i64, i64* %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %26, i64 %27
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %8, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @strcmp(i32 %32, i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %21
  %37 = load i64, i64* @MRB_DEBUG_BP_FILE_OK, align 8
  store i64 %37, i64* %9, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i64 @check_lineno(%struct.TYPE_5__* %38, i64 %39)
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* %11, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* @MRB_DEBUG_BP_LINENO_OK, align 8
  %46 = or i64 %44, %45
  store i64 %46, i64* %4, align 8
  br label %84

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47, %21
  store i64 0, i64* %12, align 8
  br label %49

49:                                               ; preds = %75, %48
  %50 = load i64, i64* %12, align 8
  %51 = load %struct.mrb_irep*, %struct.mrb_irep** %5, align 8
  %52 = getelementptr inbounds %struct.mrb_irep, %struct.mrb_irep* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ult i64 %50, %53
  br i1 %54, label %55, label %78

55:                                               ; preds = %49
  %56 = load %struct.mrb_irep*, %struct.mrb_irep** %5, align 8
  %57 = getelementptr inbounds %struct.mrb_irep, %struct.mrb_irep* %56, i32 0, i32 1
  %58 = load %struct.mrb_irep**, %struct.mrb_irep*** %57, align 8
  %59 = load i64, i64* %12, align 8
  %60 = getelementptr inbounds %struct.mrb_irep*, %struct.mrb_irep** %58, i64 %59
  %61 = load %struct.mrb_irep*, %struct.mrb_irep** %60, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load i64, i64* %7, align 8
  %64 = call i64 @check_file_lineno(%struct.mrb_irep* %61, i8* %62, i64 %63)
  %65 = load i64, i64* %9, align 8
  %66 = or i64 %65, %64
  store i64 %66, i64* %9, align 8
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* @MRB_DEBUG_BP_FILE_OK, align 8
  %69 = load i64, i64* @MRB_DEBUG_BP_LINENO_OK, align 8
  %70 = or i64 %68, %69
  %71 = icmp eq i64 %67, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %55
  %73 = load i64, i64* %9, align 8
  store i64 %73, i64* %4, align 8
  br label %84

74:                                               ; preds = %55
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %12, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %12, align 8
  br label %49

78:                                               ; preds = %49
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %10, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %10, align 8
  br label %13

82:                                               ; preds = %13
  %83 = load i64, i64* %9, align 8
  store i64 %83, i64* %4, align 8
  br label %84

84:                                               ; preds = %82, %72, %43
  %85 = load i64, i64* %4, align 8
  ret i64 %85
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i64 @check_lineno(%struct.TYPE_5__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
