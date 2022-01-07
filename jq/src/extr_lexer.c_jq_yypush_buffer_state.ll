; ModuleID = '/home/carl/AnghaBench/jq/src/extr_lexer.c_jq_yypush_buffer_state.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_lexer.c_jq_yypush_buffer_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }
%struct.yyguts_t = type { i32, i32, i32, i32*, i32 }

@YY_CURRENT_BUFFER = common dso_local global i64 0, align 8
@YY_CURRENT_BUFFER_LVALUE = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @yypush_buffer_state(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.yyguts_t*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = inttoptr i64 %6 to %struct.yyguts_t*
  store %struct.yyguts_t* %7, %struct.yyguts_t** %5, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = icmp eq %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %47

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @yyensure_buffer_stack(i64 %12)
  %14 = load i64, i64* @YY_CURRENT_BUFFER, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %11
  %17 = load %struct.yyguts_t*, %struct.yyguts_t** %5, align 8
  %18 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.yyguts_t*, %struct.yyguts_t** %5, align 8
  %21 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  store i32 %19, i32* %22, align 4
  %23 = load %struct.yyguts_t*, %struct.yyguts_t** %5, align 8
  %24 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @YY_CURRENT_BUFFER_LVALUE, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i32* %25, i32** %27, align 8
  %28 = load %struct.yyguts_t*, %struct.yyguts_t** %5, align 8
  %29 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @YY_CURRENT_BUFFER_LVALUE, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %16, %11
  %34 = load i64, i64* @YY_CURRENT_BUFFER, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load %struct.yyguts_t*, %struct.yyguts_t** %5, align 8
  %38 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %36, %33
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %42, %struct.TYPE_4__** @YY_CURRENT_BUFFER_LVALUE, align 8
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @yy_load_buffer_state(i64 %43)
  %45 = load %struct.yyguts_t*, %struct.yyguts_t** %5, align 8
  %46 = getelementptr inbounds %struct.yyguts_t, %struct.yyguts_t* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  br label %47

47:                                               ; preds = %41, %10
  ret void
}

declare dso_local i32 @yyensure_buffer_stack(i64) #1

declare dso_local i32 @yy_load_buffer_state(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
