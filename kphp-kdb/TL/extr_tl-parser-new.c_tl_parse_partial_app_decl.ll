; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_parse_partial_app_decl.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_parse_partial_app_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i64, i32, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i64 }

@type_partial_app_decl = common dso_local global i64 0, align 8
@type_partial_comb_app_decl = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Partial type app in functions block\0A\00", align 1
@TL_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_parse_partial_app_decl(%struct.tree* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tree*, align 8
  %5 = alloca i32, align 4
  store %struct.tree* %0, %struct.tree** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.tree*, %struct.tree** %4, align 8
  %7 = getelementptr inbounds %struct.tree, %struct.tree* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @type_partial_app_decl, align 8
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
  %21 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %21, i64 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @type_partial_comb_app_decl, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %2
  %29 = load %struct.tree*, %struct.tree** %4, align 8
  %30 = getelementptr inbounds %struct.tree, %struct.tree* %29, i32 0, i32 2
  %31 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %31, i64 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @tl_parse_partial_comb_app_decl(%struct.TYPE_3__* %33, i32 %34)
  store i32 %35, i32* %3, align 4
  br label %49

36:                                               ; preds = %2
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = call i32 @TL_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @TL_FAIL, align 4
  br label %42

42:                                               ; preds = %39, %36
  %43 = load %struct.tree*, %struct.tree** %4, align 8
  %44 = getelementptr inbounds %struct.tree, %struct.tree* %43, i32 0, i32 2
  %45 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %45, i64 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = call i32 @tl_parse_partial_type_app_decl(%struct.TYPE_3__* %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %42, %28
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tl_parse_partial_comb_app_decl(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @TL_ERROR(i8*) #1

declare dso_local i32 @tl_parse_partial_type_app_decl(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
