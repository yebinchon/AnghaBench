; ModuleID = '/home/carl/AnghaBench/jemalloc/test/unit/extr_emitter.c_emit_json_array.c'
source_filename = "/home/carl/AnghaBench/jemalloc/test/unit/extr_emitter.c_emit_json_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"dict\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"arr\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@emitter_type_int = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"baz\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @emit_json_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_json_array(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 123, i32* %3, align 4
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @emitter_begin(i32* %4)
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @emitter_json_key(i32* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @emitter_json_object_begin(i32* %8)
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @emitter_json_key(i32* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @emitter_json_array_begin(i32* %12)
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @emitter_json_object_begin(i32* %14)
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* @emitter_type_int, align 4
  %18 = call i32 @emitter_json_kv(i32* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %17, i32* %3)
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @emitter_json_object_end(i32* %19)
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* @emitter_type_int, align 4
  %23 = call i32 @emitter_json_value(i32* %21, i32 %22, i32* %3)
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* @emitter_type_int, align 4
  %26 = call i32 @emitter_json_value(i32* %24, i32 %25, i32* %3)
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @emitter_json_object_begin(i32* %27)
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* @emitter_type_int, align 4
  %31 = call i32 @emitter_json_kv(i32* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %30, i32* %3)
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* @emitter_type_int, align 4
  %34 = call i32 @emitter_json_kv(i32* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %33, i32* %3)
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @emitter_json_object_end(i32* %35)
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @emitter_json_array_end(i32* %37)
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @emitter_json_object_end(i32* %39)
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @emitter_end(i32* %41)
  ret void
}

declare dso_local i32 @emitter_begin(i32*) #1

declare dso_local i32 @emitter_json_key(i32*, i8*) #1

declare dso_local i32 @emitter_json_object_begin(i32*) #1

declare dso_local i32 @emitter_json_array_begin(i32*) #1

declare dso_local i32 @emitter_json_kv(i32*, i8*, i32, i32*) #1

declare dso_local i32 @emitter_json_object_end(i32*) #1

declare dso_local i32 @emitter_json_value(i32*, i32, i32*) #1

declare dso_local i32 @emitter_json_array_end(i32*) #1

declare dso_local i32 @emitter_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
