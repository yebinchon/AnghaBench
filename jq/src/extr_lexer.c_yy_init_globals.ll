; ModuleID = '/home/carl/AnghaBench/jq/src/extr_lexer.c_yy_init_globals.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_lexer.c_yy_init_globals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yyguts_t = type { i32*, i64, i64, i64, i64, i32*, i64, i64, i32* }

@yyin = common dso_local global i32* null, align 8
@yyout = common dso_local global i32* null, align 8
@stdin = common dso_local global i32* null, align 8
@stdout = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @yy_init_globals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yy_init_globals(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.yyguts_t*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.yyguts_t*
  store %struct.yyguts_t* %5, %struct.yyguts_t** %3, align 8
  %6 = load %struct.yyguts_t*, %struct.yyguts_t** %3, align 8
  %7 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %6, i32 0, i32 8
  store i32* null, i32** %7, align 8
  %8 = load %struct.yyguts_t*, %struct.yyguts_t** %3, align 8
  %9 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %8, i32 0, i32 7
  store i64 0, i64* %9, align 8
  %10 = load %struct.yyguts_t*, %struct.yyguts_t** %3, align 8
  %11 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %10, i32 0, i32 6
  store i64 0, i64* %11, align 8
  %12 = load %struct.yyguts_t*, %struct.yyguts_t** %3, align 8
  %13 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %12, i32 0, i32 5
  store i32* null, i32** %13, align 8
  %14 = load %struct.yyguts_t*, %struct.yyguts_t** %3, align 8
  %15 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %14, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = load %struct.yyguts_t*, %struct.yyguts_t** %3, align 8
  %17 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load %struct.yyguts_t*, %struct.yyguts_t** %3, align 8
  %19 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.yyguts_t*, %struct.yyguts_t** %3, align 8
  %21 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.yyguts_t*, %struct.yyguts_t** %3, align 8
  %23 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  store i32* null, i32** @yyin, align 8
  store i32* null, i32** @yyout, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
