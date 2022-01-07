; ModuleID = '/home/carl/AnghaBench/git/extr_parse-options.c_parse_options_end.c'
source_filename = "/home/carl/AnghaBench/git/extr_parse-options.c_parse_options_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_opt_ctx_t = type { i32, i32, i64, i32, i32**, i32 }

@PARSE_OPT_ONE_SHOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_options_end(%struct.parse_opt_ctx_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.parse_opt_ctx_t*, align 8
  store %struct.parse_opt_ctx_t* %0, %struct.parse_opt_ctx_t** %3, align 8
  %4 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %3, align 8
  %5 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @PARSE_OPT_ONE_SHOT, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %3, align 8
  %12 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %3, align 8
  %16 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = sub i64 %14, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %2, align 4
  br label %57

20:                                               ; preds = %1
  %21 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %3, align 8
  %22 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %21, i32 0, i32 4
  %23 = load i32**, i32*** %22, align 8
  %24 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %3, align 8
  %25 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %23, i64 %27
  %29 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %3, align 8
  %30 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %3, align 8
  %33 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @MOVE_ARRAY(i32** %28, i32 %31, i64 %34)
  %36 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %3, align 8
  %37 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %36, i32 0, i32 4
  %38 = load i32**, i32*** %37, align 8
  %39 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %3, align 8
  %40 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %3, align 8
  %44 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %42, %45
  %47 = getelementptr inbounds i32*, i32** %38, i64 %46
  store i32* null, i32** %47, align 8
  %48 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %3, align 8
  %49 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %3, align 8
  %53 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %51, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %20, %10
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @MOVE_ARRAY(i32**, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
