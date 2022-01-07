; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_parse_query_expr.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_parse_query_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, %struct.TYPE_4__* }

@parse_ptr = common dso_local global i8* null, align 8
@qn_or = common dso_local global i32 0, align 4
@qn_minus = common dso_local global i32 0, align 4
@qn_and = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* ()* @parse_query_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @parse_query_expr() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = call i8* (...) @parse_query_term()
  %5 = bitcast i8* %4 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %2, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %1, align 8
  br label %73

9:                                                ; preds = %0
  br label %10

10:                                               ; preds = %9, %71
  %11 = call i32 (...) @skipspc()
  %12 = load i8*, i8** @parse_ptr, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 38
  br i1 %15, label %16, label %33

16:                                               ; preds = %10
  %17 = load i8*, i8** @parse_ptr, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 43
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = load i8*, i8** @parse_ptr, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 45
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load i8*, i8** @parse_ptr, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 35
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %1, align 8
  br label %73

33:                                               ; preds = %26, %21, %16, %10
  %34 = load i8*, i8** @parse_ptr, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 35
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @qn_or, align 4
  br label %51

40:                                               ; preds = %33
  %41 = load i8*, i8** @parse_ptr, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 45
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @qn_minus, align 4
  br label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @qn_and, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  br label %51

51:                                               ; preds = %49, %38
  %52 = phi i32 [ %39, %38 ], [ %50, %49 ]
  %53 = call %struct.TYPE_4__* @new_query_node(i32 %52)
  store %struct.TYPE_4__* %53, %struct.TYPE_4__** %3, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %55 = icmp ne %struct.TYPE_4__* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %1, align 8
  br label %73

57:                                               ; preds = %51
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store %struct.TYPE_4__* %58, %struct.TYPE_4__** %60, align 8
  %61 = load i8*, i8** @parse_ptr, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** @parse_ptr, align 8
  %63 = call i8* (...) @parse_query_term()
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %57
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %1, align 8
  br label %73

71:                                               ; preds = %57
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %72, %struct.TYPE_4__** %2, align 8
  br label %10

73:                                               ; preds = %70, %56, %31, %8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  ret %struct.TYPE_4__* %74
}

declare dso_local i8* @parse_query_term(...) #1

declare dso_local i32 @skipspc(...) #1

declare dso_local %struct.TYPE_4__* @new_query_node(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
