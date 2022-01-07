; ModuleID = '/home/carl/AnghaBench/jemalloc/test/unit/extr_emitter.c_emit_modal.c'
source_filename = "/home/carl/AnghaBench/jemalloc/test/unit/extr_emitter.c_emit_modal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"j0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"T0\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"j1\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"I1\00", align 1
@emitter_type_int = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"i2\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"I3\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"T1\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"i4\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"I4\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"i5\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"I5\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"i6\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"I6\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @emit_modal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_modal(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 123, i32* %3, align 4
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @emitter_begin(i32* %4)
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @emitter_dict_begin(i32* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @emitter_json_key(i32* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @emitter_json_object_begin(i32* %10)
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* @emitter_type_int, align 4
  %14 = call i32 @emitter_kv(i32* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %13, i32* %3)
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @emitter_type_int, align 4
  %17 = call i32 @emitter_json_kv(i32* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %16, i32* %3)
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @emitter_type_int, align 4
  %20 = call i32 @emitter_table_kv(i32* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %19, i32* %3)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @emitter_table_dict_begin(i32* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* @emitter_type_int, align 4
  %25 = call i32 @emitter_kv(i32* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %24, i32* %3)
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @emitter_json_object_end(i32* %26)
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* @emitter_type_int, align 4
  %30 = call i32 @emitter_kv(i32* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 %29, i32* %3)
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @emitter_table_dict_end(i32* %31)
  %33 = load i32*, i32** %2, align 8
  %34 = load i32, i32* @emitter_type_int, align 4
  %35 = call i32 @emitter_kv(i32* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32 %34, i32* %3)
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @emitter_dict_end(i32* %36)
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @emitter_end(i32* %38)
  ret void
}

declare dso_local i32 @emitter_begin(i32*) #1

declare dso_local i32 @emitter_dict_begin(i32*, i8*, i8*) #1

declare dso_local i32 @emitter_json_key(i32*, i8*) #1

declare dso_local i32 @emitter_json_object_begin(i32*) #1

declare dso_local i32 @emitter_kv(i32*, i8*, i8*, i32, i32*) #1

declare dso_local i32 @emitter_json_kv(i32*, i8*, i32, i32*) #1

declare dso_local i32 @emitter_table_kv(i32*, i8*, i32, i32*) #1

declare dso_local i32 @emitter_table_dict_begin(i32*, i8*) #1

declare dso_local i32 @emitter_json_object_end(i32*) #1

declare dso_local i32 @emitter_table_dict_end(i32*) #1

declare dso_local i32 @emitter_dict_end(i32*) #1

declare dso_local i32 @emitter_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
