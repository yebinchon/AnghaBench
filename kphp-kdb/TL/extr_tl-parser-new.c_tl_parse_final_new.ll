; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_parse_final_new.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_parse_final_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i64, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32 }

@type_final_new = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"New statement: type `%.*s` already declared\0A\00", align 1
@TL_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_parse_final_new(%struct.tree* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tree*, align 8
  store %struct.tree* %0, %struct.tree** %3, align 8
  %4 = load %struct.tree*, %struct.tree** %3, align 8
  %5 = getelementptr inbounds %struct.tree, %struct.tree* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @type_final_new, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.tree*, %struct.tree** %3, align 8
  %12 = getelementptr inbounds %struct.tree, %struct.tree* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 1
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.tree*, %struct.tree** %3, align 8
  %18 = getelementptr inbounds %struct.tree, %struct.tree* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %19, i64 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.tree*, %struct.tree** %3, align 8
  %25 = getelementptr inbounds %struct.tree, %struct.tree* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %26, i64 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @tl_get_type(i32 %23, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %1
  %34 = load %struct.tree*, %struct.tree** %3, align 8
  %35 = getelementptr inbounds %struct.tree, %struct.tree* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %36, i64 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.tree*, %struct.tree** %3, align 8
  %42 = getelementptr inbounds %struct.tree, %struct.tree* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %43, i64 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @TL_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %47)
  %49 = load i32, i32* @TL_FAIL, align 4
  br label %51

50:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %33
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @tl_get_type(i32, i32) #1

declare dso_local i32 @TL_ERROR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
