; ModuleID = '/home/carl/AnghaBench/jq/src/extr_parser.c_jq_parse_library.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_parser.c_jq_parse_library.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.locfile = type { i32 }

@UNKNOWN_LOCATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"jq: error: library should only have function definitions, not a main expression\00", align 1
@OP_IS_CALL_PSEUDO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jq_parse_library(%struct.locfile* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.locfile*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.locfile* %0, %struct.locfile** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.locfile*, %struct.locfile** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32 @jq_parse(%struct.locfile* %7, i32* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %29

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @block_has_main(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.locfile*, %struct.locfile** %4, align 8
  %21 = load i32, i32* @UNKNOWN_LOCATION, align 4
  %22 = call i32 @locfile_locate(%struct.locfile* %20, i32 %21, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %29

23:                                               ; preds = %14
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @OP_IS_CALL_PSEUDO, align 4
  %27 = call i32 @block_has_only_binders_and_imports(i32 %25, i32 %26)
  %28 = call i32 @assert(i32 %27)
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %23, %19, %12
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @jq_parse(%struct.locfile*, i32*) #1

declare dso_local i64 @block_has_main(i32) #1

declare dso_local i32 @locfile_locate(%struct.locfile*, i32, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @block_has_only_binders_and_imports(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
