; ModuleID = '/home/carl/AnghaBench/i3/i3bar/src/extr_workspaces.c_parse_workspaces_json.c'
source_filename = "/home/carl/AnghaBench/i3/i3bar/src/extr_workspaces.c_parse_workspaces_json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.workspaces_json_params = type { i8*, i32*, i32* }

@workspaces_callbacks = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Could not parse workspaces reply!\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_workspaces_json(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.workspaces_json_params, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = call i32 (...) @free_workspaces()
  %7 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %3, i32 0, i32 2
  store i32* null, i32** %7, align 8
  %8 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %3, i32 0, i32 1
  store i32* null, i32** %8, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %3, i32 0, i32 0
  store i8* %9, i8** %10, align 8
  %11 = bitcast %struct.workspaces_json_params* %3 to i8*
  %12 = call i32 @yajl_alloc(i32* @workspaces_callbacks, i32* null, i8* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i8*, i8** %2, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = call i32 @yajl_parse(i32 %13, i8* %14, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %24 [
    i32 128, label %19
    i32 130, label %20
    i32 129, label %20
  ]

19:                                               ; preds = %1
  br label %24

20:                                               ; preds = %1, %1
  %21 = call i32 @ELOG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EXIT_FAILURE, align 4
  %23 = call i32 @exit(i32 %22) #3
  unreachable

24:                                               ; preds = %1, %19
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @yajl_free(i32 %25)
  %27 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %3, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @FREE(i32* %28)
  ret void
}

declare dso_local i32 @free_workspaces(...) #1

declare dso_local i32 @yajl_alloc(i32*, i32*, i8*) #1

declare dso_local i32 @yajl_parse(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ELOG(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

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
