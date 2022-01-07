; ModuleID = '/home/carl/AnghaBench/jq/src/extr_lexer.c_jq_yylex_init_extra.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_lexer.c_jq_yylex_init_extra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yyguts_t = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yylex_init_extra(i32 %0, %struct.yyguts_t** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.yyguts_t**, align 8
  %6 = alloca %struct.yyguts_t, align 4
  store i32 %0, i32* %4, align 4
  store %struct.yyguts_t** %1, %struct.yyguts_t*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @yyset_extra(i32 %7, %struct.yyguts_t* %6)
  %9 = load %struct.yyguts_t**, %struct.yyguts_t*** %5, align 8
  %10 = icmp eq %struct.yyguts_t** %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* @errno, align 4
  store i32 1, i32* %3, align 4
  br label %33

13:                                               ; preds = %2
  %14 = call i64 @yyalloc(i32 4, %struct.yyguts_t* %6)
  %15 = inttoptr i64 %14 to %struct.yyguts_t*
  %16 = load %struct.yyguts_t**, %struct.yyguts_t*** %5, align 8
  store %struct.yyguts_t* %15, %struct.yyguts_t** %16, align 8
  %17 = load %struct.yyguts_t**, %struct.yyguts_t*** %5, align 8
  %18 = load %struct.yyguts_t*, %struct.yyguts_t** %17, align 8
  %19 = icmp eq %struct.yyguts_t* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* @ENOMEM, align 4
  store i32 %21, i32* @errno, align 4
  store i32 1, i32* %3, align 4
  br label %33

22:                                               ; preds = %13
  %23 = load %struct.yyguts_t**, %struct.yyguts_t*** %5, align 8
  %24 = load %struct.yyguts_t*, %struct.yyguts_t** %23, align 8
  %25 = call i32 @memset(%struct.yyguts_t* %24, i32 0, i32 4)
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.yyguts_t**, %struct.yyguts_t*** %5, align 8
  %28 = load %struct.yyguts_t*, %struct.yyguts_t** %27, align 8
  %29 = call i32 @yyset_extra(i32 %26, %struct.yyguts_t* %28)
  %30 = load %struct.yyguts_t**, %struct.yyguts_t*** %5, align 8
  %31 = load %struct.yyguts_t*, %struct.yyguts_t** %30, align 8
  %32 = call i32 @yy_init_globals(%struct.yyguts_t* %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %22, %20, %11
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @yyset_extra(i32, %struct.yyguts_t*) #1

declare dso_local i64 @yyalloc(i32, %struct.yyguts_t*) #1

declare dso_local i32 @memset(%struct.yyguts_t*, i32, i32) #1

declare dso_local i32 @yy_init_globals(%struct.yyguts_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
