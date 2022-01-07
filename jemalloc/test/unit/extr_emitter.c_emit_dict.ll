; ModuleID = '/home/carl/AnghaBench/jemalloc/test/unit/extr_emitter.c_emit_dict.c'
source_filename = "/home/carl/AnghaBench/jemalloc/test/unit/extr_emitter.c_emit_dict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"a string\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"This is the foo table:\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ABC\00", align 1
@emitter_type_bool = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"def\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"DEF\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"ghi\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"GHI\00", align 1
@emitter_type_int = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"note_key1\00", align 1
@emitter_type_string = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"jkl\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"JKL\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"note_key2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @emit_dict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_dict(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %4, align 4
  store i32 123, i32* %5, align 4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @emitter_begin(i32* %7)
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @emitter_dict_begin(i32* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @emitter_type_bool, align 4
  %13 = call i32 @emitter_kv(i32* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %12, i32* %3)
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* @emitter_type_bool, align 4
  %16 = call i32 @emitter_kv(i32* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %15, i32* %4)
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* @emitter_type_int, align 4
  %19 = load i32, i32* @emitter_type_string, align 4
  %20 = call i32 (i32*, i8*, i8*, i32, ...) @emitter_kv_note(i32* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %18, i32* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %19, i8** %6)
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* @emitter_type_string, align 4
  %23 = load i32, i32* @emitter_type_bool, align 4
  %24 = call i32 (i32*, i8*, i8*, i32, ...) @emitter_kv_note(i32* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %22, i8** %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 %23, i32* %3)
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @emitter_dict_end(i32* %25)
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @emitter_end(i32* %27)
  ret void
}

declare dso_local i32 @emitter_begin(i32*) #1

declare dso_local i32 @emitter_dict_begin(i32*, i8*, i8*) #1

declare dso_local i32 @emitter_kv(i32*, i8*, i8*, i32, i32*) #1

declare dso_local i32 @emitter_kv_note(i32*, i8*, i8*, i32, ...) #1

declare dso_local i32 @emitter_dict_end(i32*) #1

declare dso_local i32 @emitter_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
