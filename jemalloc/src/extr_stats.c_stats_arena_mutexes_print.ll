; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_stats.c_stats_arena_mutexes_print.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_stats.c_stats_arena_mutexes_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mutex_prof_num_uint64_t_counters = common dso_local global i32 0, align 4
@mutex_prof_num_uint32_t_counters = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"mutexes\00", align 1
@mutex_prof_num_arena_mutexes = common dso_local global i64 0, align 8
@arena_mutex_names = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @stats_arena_mutexes_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stats_arena_mutexes_print(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* @mutex_prof_num_uint64_t_counters, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i32, i32* @mutex_prof_num_uint32_t_counters, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %21 = call i32 @emitter_row_init(i32* %7)
  %22 = call i32 @mutex_stats_init_cols(i32* %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* %8, i32* %17, i32* %20)
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @emitter_json_object_kv_begin(i32* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @emitter_table_row(i32* %25, i32* %7)
  store i64 0, i64* %12, align 8
  br label %27

27:                                               ; preds = %48, %3
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* @mutex_prof_num_arena_mutexes, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %51

31:                                               ; preds = %27
  %32 = load i8**, i8*** @arena_mutex_names, align 8
  %33 = load i64, i64* %12, align 8
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %13, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = call i32 @emitter_json_object_kv_begin(i32* %36, i8* %37)
  %39 = load i32, i32* %5, align 4
  %40 = load i64, i64* %12, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @mutex_stats_read_arena(i32 %39, i64 %40, i8* %41, i32* %8, i32* %17, i32* %20, i32 %42)
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @mutex_stats_emit(i32* %44, i32* %7, i32* %17, i32* %20)
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @emitter_json_object_end(i32* %46)
  br label %48

48:                                               ; preds = %31
  %49 = load i64, i64* %12, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %12, align 8
  br label %27

51:                                               ; preds = %27
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @emitter_json_object_end(i32* %52)
  %54 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %54)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @emitter_row_init(i32*) #2

declare dso_local i32 @mutex_stats_init_cols(i32*, i8*, i32*, i32*, i32*) #2

declare dso_local i32 @emitter_json_object_kv_begin(i32*, i8*) #2

declare dso_local i32 @emitter_table_row(i32*, i32*) #2

declare dso_local i32 @mutex_stats_read_arena(i32, i64, i8*, i32*, i32*, i32*, i32) #2

declare dso_local i32 @mutex_stats_emit(i32*, i32*, i32*, i32*) #2

declare dso_local i32 @emitter_json_object_end(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
