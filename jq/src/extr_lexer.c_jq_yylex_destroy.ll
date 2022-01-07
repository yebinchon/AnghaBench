; ModuleID = '/home/carl/AnghaBench/jq/src/extr_lexer.c_jq_yylex_destroy.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_lexer.c_jq_yylex_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yyguts_t = type { i32*, i32* }

@YY_CURRENT_BUFFER = common dso_local global i64 0, align 8
@YY_CURRENT_BUFFER_LVALUE = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yylex_destroy(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.yyguts_t*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = bitcast i32* %4 to %struct.yyguts_t*
  store %struct.yyguts_t* %5, %struct.yyguts_t** %3, align 8
  br label %6

6:                                                ; preds = %9, %1
  %7 = load i64, i64* @YY_CURRENT_BUFFER, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = load i64, i64* @YY_CURRENT_BUFFER, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @yy_delete_buffer(i64 %10, i32* %11)
  store i32* null, i32** @YY_CURRENT_BUFFER_LVALUE, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @yypop_buffer_state(i32* %13)
  br label %6

15:                                               ; preds = %6
  %16 = load %struct.yyguts_t*, %struct.yyguts_t** %3, align 8
  %17 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @yyfree(i32* %18, i32* %19)
  %21 = load %struct.yyguts_t*, %struct.yyguts_t** %3, align 8
  %22 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %21, i32 0, i32 1
  store i32* null, i32** %22, align 8
  %23 = load %struct.yyguts_t*, %struct.yyguts_t** %3, align 8
  %24 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @yyfree(i32* %25, i32* %26)
  %28 = load %struct.yyguts_t*, %struct.yyguts_t** %3, align 8
  %29 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @yy_init_globals(i32* %30)
  %32 = load i32*, i32** %2, align 8
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @yyfree(i32* %32, i32* %33)
  store i32* null, i32** %2, align 8
  ret i32 0
}

declare dso_local i32 @yy_delete_buffer(i64, i32*) #1

declare dso_local i32 @yypop_buffer_state(i32*) #1

declare dso_local i32 @yyfree(i32*, i32*) #1

declare dso_local i32 @yy_init_globals(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
