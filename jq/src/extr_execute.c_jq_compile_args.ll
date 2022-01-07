; ModuleID = '/home/carl/AnghaBench/jq/src/extr_execute.c_jq_compile_args.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_execute.c_jq_compile_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32, i32 }
%struct.locfile = type { i32 }

@JV_KIND_ARRAY = common dso_local global i64 0, align 8
@JV_KIND_OBJECT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"<top-level>\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"jq: %d compile %s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"errors\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jq_compile_args(%struct.TYPE_8__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.locfile*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @jv_nomem_handler(i32 %12, i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @jv_get_kind(i32 %17)
  %19 = load i64, i64* @JV_KIND_ARRAY, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @jv_get_kind(i32 %22)
  %24 = load i64, i64* @JV_KIND_OBJECT, align 8
  %25 = icmp eq i64 %23, %24
  br label %26

26:                                               ; preds = %21, %3
  %27 = phi i1 [ true, %3 ], [ %25, %21 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = call %struct.locfile* @locfile_init(%struct.TYPE_8__* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %31, i32 %33)
  store %struct.locfile* %34, %struct.locfile** %7, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = call i32 @jq_reset(%struct.TYPE_8__* %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %26
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @bytecode_free(i32* %44)
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %41, %26
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = load %struct.locfile*, %struct.locfile** %7, align 8
  %51 = call i32 @load_program(%struct.TYPE_8__* %49, %struct.locfile* %50, i32* %8)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %48
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = call i32 @builtins_bind(%struct.TYPE_8__* %55, i32* %8)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load %struct.locfile*, %struct.locfile** %7, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @args2obj(i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = call i32 @block_compile(i32 %60, i32** %62, %struct.locfile* %63, i32 %65)
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %59, %54
  br label %71

68:                                               ; preds = %48
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @jv_free(i32 %69)
  br label %71

71:                                               ; preds = %68, %67
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp sgt i32 %77, 1
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %81 = call i32 @jv_string_fmt(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %76, i8* %80)
  %82 = call i32 @jq_report_error(%struct.TYPE_8__* %75, i32 %81)
  br label %83

83:                                               ; preds = %74, %71
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %95

88:                                               ; preds = %83
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = call i32* @optimize(i32* %91)
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  store i32* %92, i32** %94, align 8
  br label %95

95:                                               ; preds = %88, %83
  %96 = load %struct.locfile*, %struct.locfile** %7, align 8
  %97 = call i32 @locfile_free(%struct.locfile* %96)
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  %102 = zext i1 %101 to i32
  ret i32 %102
}

declare dso_local i32 @jv_nomem_handler(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @jv_get_kind(i32) #1

declare dso_local %struct.locfile* @locfile_init(%struct.TYPE_8__*, i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @jq_reset(%struct.TYPE_8__*) #1

declare dso_local i32 @bytecode_free(i32*) #1

declare dso_local i32 @load_program(%struct.TYPE_8__*, %struct.locfile*, i32*) #1

declare dso_local i32 @builtins_bind(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @block_compile(i32, i32**, %struct.locfile*, i32) #1

declare dso_local i32 @args2obj(i32) #1

declare dso_local i32 @jv_free(i32) #1

declare dso_local i32 @jq_report_error(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @jv_string_fmt(i8*, i32, i8*) #1

declare dso_local i32* @optimize(i32*) #1

declare dso_local i32 @locfile_free(%struct.locfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
