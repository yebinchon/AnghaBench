; ModuleID = '/home/carl/AnghaBench/i3/i3bar/src/extr_mode.c_parse_mode_json.c'
source_filename = "/home/carl/AnghaBench/i3/i3bar/src/extr_mode.c_parse_mode_json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mode_json_params = type { i8*, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@mode_callbacks = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Could not parse mode event!\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"default\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_mode_json(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mode_json_params, align 8
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = getelementptr inbounds %struct.mode_json_params, %struct.mode_json_params* %3, i32 0, i32 1
  store i32* null, i32** %7, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = getelementptr inbounds %struct.mode_json_params, %struct.mode_json_params* %3, i32 0, i32 0
  store i8* %8, i8** %9, align 8
  %10 = getelementptr inbounds %struct.mode_json_params, %struct.mode_json_params* %3, i32 0, i32 2
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %10, align 8
  %11 = bitcast %struct.mode_json_params* %3 to i8*
  %12 = call i32 @yajl_alloc(i32* @mode_callbacks, i32* null, i8* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i8*, i8** %2, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = call i32 @yajl_parse(i32 %13, i8* %14, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %24 [
    i32 128, label %19
    i32 130, label %20
    i32 129, label %20
  ]

19:                                               ; preds = %1
  br label %24

20:                                               ; preds = %1, %1
  %21 = call i32 @ELOG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EXIT_FAILURE, align 4
  %23 = call i32 @exit(i32 %22) #3
  unreachable

24:                                               ; preds = %1, %19
  %25 = getelementptr inbounds %struct.mode_json_params, %struct.mode_json_params* %3, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @i3string_as_utf8(i32 %28)
  %30 = call i64 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.mode_json_params, %struct.mode_json_params* %3, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @I3STRING_FREE(i32 %36)
  br label %38

38:                                               ; preds = %32, %24
  %39 = call i32 @set_current_mode(%struct.TYPE_3__* %4)
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @yajl_free(i32 %40)
  %42 = getelementptr inbounds %struct.mode_json_params, %struct.mode_json_params* %3, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @FREE(i32* %43)
  ret void
}

declare dso_local i32 @yajl_alloc(i32*, i32*, i8*) #1

declare dso_local i32 @yajl_parse(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ELOG(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @i3string_as_utf8(i32) #1

declare dso_local i32 @I3STRING_FREE(i32) #1

declare dso_local i32 @set_current_mode(%struct.TYPE_3__*) #1

declare dso_local i32 @yajl_free(i32) #1

declare dso_local i32 @FREE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
