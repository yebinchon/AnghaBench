; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_cmdprint.c_dbgcmd_print.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_cmdprint.c_dbgcmd_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [25 x i8] c"Parameter not specified.\00", align 1
@DBGST_PROMPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"$%lu = %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbgcmd_print(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sle i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = call i32 @puts(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @DBGST_PROMPT, align 4
  store i32 %17, i32* %3, align 4
  br label %79

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @mrb_gc_arena_save(i32* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @mrb_str_new_cstr(i32* %21, i32* null)
  store i32 %22, i32* %6, align 4
  store i64 1, i64* %9, align 8
  br label %23

23:                                               ; preds = %43, %18
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = icmp ult i64 %24, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %23
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @mrb_str_cat_lit(i32* %31, i32 %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %33, i32* %6, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @mrb_str_cat_cstr(i32* %34, i32 %35, i32 %41)
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %30
  %44 = load i64, i64* %9, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %9, align 8
  br label %23

46:                                               ; preds = %23
  %47 = load i32*, i32** %4, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @RSTRING_PTR(i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @RSTRING_LEN(i32 %53)
  %55 = call i32 @mrb_debug_eval(i32* %47, i32 %50, i32 %52, i32 %54, i32* null)
  store i32 %55, i32* %7, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @mrb_str_cat_lit(i32* %56, i32 %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %58, i32* %8, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  %63 = sext i32 %61 to i64
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @RSTRING_PTR(i32 %64)
  %66 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 %63, i32 %65)
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %46
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  store i32 1, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %46
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @mrb_gc_arena_restore(i32* %75, i32 %76)
  %78 = load i32, i32* @DBGST_PROMPT, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %74, %15
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @mrb_gc_arena_save(i32*) #1

declare dso_local i32 @mrb_str_new_cstr(i32*, i32*) #1

declare dso_local i32 @mrb_str_cat_lit(i32*, i32, i8*) #1

declare dso_local i32 @mrb_str_cat_cstr(i32*, i32, i32) #1

declare dso_local i32 @mrb_debug_eval(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @RSTRING_PTR(i32) #1

declare dso_local i32 @RSTRING_LEN(i32) #1

declare dso_local i32 @printf(i8*, i64, i32) #1

declare dso_local i32 @mrb_gc_arena_restore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
