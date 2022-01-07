; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_parse_declaration.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_parse_declaration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i64, i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32 }

@type_declaration = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_parse_declaration(%struct.tree* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tree*, align 8
  %5 = alloca i32, align 4
  store %struct.tree* %0, %struct.tree** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.tree*, %struct.tree** %4, align 8
  %7 = getelementptr inbounds %struct.tree, %struct.tree* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @type_declaration, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.tree*, %struct.tree** %4, align 8
  %14 = getelementptr inbounds %struct.tree, %struct.tree* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 1
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.tree*, %struct.tree** %4, align 8
  %20 = getelementptr inbounds %struct.tree, %struct.tree* %19, i32 0, i32 2
  %21 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %21, i64 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %58 [
    i32 130, label %26
    i32 128, label %34
    i32 129, label %42
    i32 131, label %50
  ]

26:                                               ; preds = %2
  %27 = load %struct.tree*, %struct.tree** %4, align 8
  %28 = getelementptr inbounds %struct.tree, %struct.tree* %27, i32 0, i32 2
  %29 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %29, i64 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @tl_parse_combinator_decl(%struct.TYPE_5__* %31, i32 %32)
  store i32 %33, i32* %3, align 4
  br label %60

34:                                               ; preds = %2
  %35 = load %struct.tree*, %struct.tree** %4, align 8
  %36 = getelementptr inbounds %struct.tree, %struct.tree* %35, i32 0, i32 2
  %37 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %37, i64 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @tl_parse_partial_app_decl(%struct.TYPE_5__* %39, i32 %40)
  store i32 %41, i32* %3, align 4
  br label %60

42:                                               ; preds = %2
  %43 = load %struct.tree*, %struct.tree** %4, align 8
  %44 = getelementptr inbounds %struct.tree, %struct.tree* %43, i32 0, i32 2
  %45 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %45, i64 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @tl_parse_final_decl(%struct.TYPE_5__* %47, i32 %48)
  store i32 %49, i32* %3, align 4
  br label %60

50:                                               ; preds = %2
  %51 = load %struct.tree*, %struct.tree** %4, align 8
  %52 = getelementptr inbounds %struct.tree, %struct.tree* %51, i32 0, i32 2
  %53 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %53, i64 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @tl_parse_builtin_combinator_decl(%struct.TYPE_5__* %55, i32 %56)
  store i32 %57, i32* %3, align 4
  br label %60

58:                                               ; preds = %2
  %59 = call i32 @assert(i32 0)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %50, %42, %34, %26
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tl_parse_combinator_decl(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @tl_parse_partial_app_decl(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @tl_parse_final_decl(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @tl_parse_builtin_combinator_decl(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
