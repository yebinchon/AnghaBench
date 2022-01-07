; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/asm/extr_q3asm.c_sort_symbols.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/asm/extr_q3asm.c_sort_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__* }

@symbols = common dso_local global %struct.TYPE_7__* null, align 8
@symlist_cmp = common dso_local global i32 0, align 4
@lastSymbol = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sort_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sort_symbols() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_7__**, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** @symbols, align 8
  %6 = icmp ne %struct.TYPE_7__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  br label %86

8:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** @symbols, align 8
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %3, align 8
  br label %10

10:                                               ; preds = %14, %8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = icmp ne %struct.TYPE_7__* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  br label %14

14:                                               ; preds = %13
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %3, align 8
  %18 = load i32, i32* %2, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %2, align 4
  br label %10

20:                                               ; preds = %10
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 8
  %24 = trunc i64 %23 to i32
  %25 = call %struct.TYPE_7__** @malloc(i32 %24)
  store %struct.TYPE_7__** %25, %struct.TYPE_7__*** %4, align 8
  store i32 0, i32* %1, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** @symbols, align 8
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %3, align 8
  br label %27

27:                                               ; preds = %36, %20
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = icmp ne %struct.TYPE_7__* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %32, i64 %34
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %35, align 8
  br label %36

36:                                               ; preds = %30
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %3, align 8
  %40 = load i32, i32* %1, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %1, align 4
  br label %27

42:                                               ; preds = %27
  %43 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* @symlist_cmp, align 4
  %46 = call i32 @qsort(%struct.TYPE_7__** %43, i32 %44, i32 8, i32 %45)
  %47 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %47, i64 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** @symbols, align 8
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %3, align 8
  store i32 1, i32* %1, align 4
  br label %50

50:                                               ; preds = %65, %42
  %51 = load i32, i32* %1, align 4
  %52 = load i32, i32* %2, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %50
  %55 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %56 = load i32, i32* %1, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %55, i64 %57
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  store %struct.TYPE_7__* %59, %struct.TYPE_7__** %61, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  store %struct.TYPE_7__* %64, %struct.TYPE_7__** %3, align 8
  br label %65

65:                                               ; preds = %54
  %66 = load i32, i32* %1, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %1, align 4
  br label %50

68:                                               ; preds = %50
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_7__* %69, %struct.TYPE_7__** @lastSymbol, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %71, align 8
  store i32 0, i32* %1, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** @symbols, align 8
  store %struct.TYPE_7__* %72, %struct.TYPE_7__** %3, align 8
  br label %73

73:                                               ; preds = %77, %68
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %75 = icmp ne %struct.TYPE_7__* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  store %struct.TYPE_7__* %80, %struct.TYPE_7__** %3, align 8
  %81 = load i32, i32* %1, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %1, align 4
  br label %73

83:                                               ; preds = %73
  %84 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %85 = call i32 @free(%struct.TYPE_7__** %84)
  br label %86

86:                                               ; preds = %83, %7
  ret void
}

declare dso_local %struct.TYPE_7__** @malloc(i32) #1

declare dso_local i32 @qsort(%struct.TYPE_7__**, i32, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_7__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
