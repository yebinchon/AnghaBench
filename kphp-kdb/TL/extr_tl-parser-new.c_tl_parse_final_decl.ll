; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_parse_final_decl.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_parse_final_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i64, i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32 }

@type_final_decl = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_parse_final_decl(%struct.tree* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tree*, align 8
  %5 = alloca i32, align 4
  store %struct.tree* %0, %struct.tree** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.tree*, %struct.tree** %4, align 8
  %7 = getelementptr inbounds %struct.tree, %struct.tree* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @type_final_decl, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.tree*, %struct.tree** %4, align 8
  %19 = getelementptr inbounds %struct.tree, %struct.tree* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 1
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.tree*, %struct.tree** %4, align 8
  %25 = getelementptr inbounds %struct.tree, %struct.tree* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %26, i64 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %52 [
    i32 128, label %31
    i32 129, label %38
    i32 130, label %45
  ]

31:                                               ; preds = %2
  %32 = load %struct.tree*, %struct.tree** %4, align 8
  %33 = getelementptr inbounds %struct.tree, %struct.tree* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %34, i64 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = call i32 @tl_parse_final_new(%struct.TYPE_4__* %36)
  store i32 %37, i32* %3, align 4
  br label %54

38:                                               ; preds = %2
  %39 = load %struct.tree*, %struct.tree** %4, align 8
  %40 = getelementptr inbounds %struct.tree, %struct.tree* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %41, i64 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = call i32 @tl_parse_final_final(%struct.TYPE_4__* %43)
  store i32 %44, i32* %3, align 4
  br label %54

45:                                               ; preds = %2
  %46 = load %struct.tree*, %struct.tree** %4, align 8
  %47 = getelementptr inbounds %struct.tree, %struct.tree* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %48, i64 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = call i32 @tl_parse_final_empty(%struct.TYPE_4__* %50)
  store i32 %51, i32* %3, align 4
  br label %54

52:                                               ; preds = %2
  %53 = call i32 @assert(i32 0)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %45, %38, %31
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tl_parse_final_new(%struct.TYPE_4__*) #1

declare dso_local i32 @tl_parse_final_final(%struct.TYPE_4__*) #1

declare dso_local i32 @tl_parse_final_empty(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
