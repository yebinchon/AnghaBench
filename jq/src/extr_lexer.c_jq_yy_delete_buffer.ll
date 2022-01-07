; ModuleID = '/home/carl/AnghaBench/jq/src/extr_lexer.c_jq_yy_delete_buffer.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_lexer.c_jq_yy_delete_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }
%struct.yyguts_t = type { i32 }

@YY_CURRENT_BUFFER = common dso_local global %struct.TYPE_5__* null, align 8
@YY_CURRENT_BUFFER_LVALUE = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @yy_delete_buffer(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.yyguts_t*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = inttoptr i64 %6 to %struct.yyguts_t*
  store %struct.yyguts_t* %7, %struct.yyguts_t** %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = icmp ne %struct.TYPE_5__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %33

11:                                               ; preds = %2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @YY_CURRENT_BUFFER, align 8
  %14 = icmp eq %struct.TYPE_5__* %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store %struct.TYPE_5__* null, %struct.TYPE_5__** @YY_CURRENT_BUFFER_LVALUE, align 8
  br label %16

16:                                               ; preds = %15, %11
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @yyfree(i8* %25, i64 %26)
  br label %28

28:                                               ; preds = %21, %16
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = bitcast %struct.TYPE_5__* %29 to i8*
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @yyfree(i8* %30, i64 %31)
  br label %33

33:                                               ; preds = %28, %10
  ret void
}

declare dso_local i32 @yyfree(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
