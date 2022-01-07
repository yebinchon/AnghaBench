; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_write_combinator.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_write_combinator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_constructor = type { i32, i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@schema_version = common dso_local global i32 0, align 4
@TLS_COMBINATOR_LEFT_BUILTIN = common dso_local global i32 0, align 4
@TLS_COMBINATOR_LEFT = common dso_local global i32 0, align 4
@TLS_COMBINATOR_RIGHT_V2 = common dso_local global i32 0, align 4
@TLS_COMBINATOR_RIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_combinator(%struct.tl_constructor* %0) #0 {
  %2 = alloca %struct.tl_constructor*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.tl_constructor* %0, %struct.tl_constructor** %2, align 8
  %5 = load %struct.tl_constructor*, %struct.tl_constructor** %2, align 8
  %6 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @wint(i32 %7)
  %9 = load %struct.tl_constructor*, %struct.tl_constructor** %2, align 8
  %10 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @wstr(i32 %11)
  %13 = load %struct.tl_constructor*, %struct.tl_constructor** %2, align 8
  %14 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %13, i32 0, i32 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.tl_constructor*, %struct.tl_constructor** %2, align 8
  %19 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %18, i32 0, i32 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  br label %24

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %23, %17
  %25 = phi i32 [ %22, %17 ], [ 0, %23 ]
  %26 = call i32 @wint(i32 %25)
  store i32* null, i32** %3, align 8
  store i32 0, i32* %4, align 4
  %27 = load %struct.tl_constructor*, %struct.tl_constructor** %2, align 8
  %28 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @assert(i64 %29)
  %31 = load %struct.tl_constructor*, %struct.tl_constructor** %2, align 8
  %32 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %24
  %36 = load i32, i32* @schema_version, align 4
  %37 = icmp sge i32 %36, 1
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load %struct.tl_constructor*, %struct.tl_constructor** %2, align 8
  %40 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @is_builtin_type(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @TLS_COMBINATOR_LEFT_BUILTIN, align 4
  %46 = call i32 @wint(i32 %45)
  br label %58

47:                                               ; preds = %38, %35
  %48 = load i32, i32* @schema_version, align 4
  %49 = icmp sge i32 %48, 1
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* @TLS_COMBINATOR_LEFT, align 4
  %52 = call i32 @wint(i32 %51)
  br label %53

53:                                               ; preds = %50, %47
  %54 = load %struct.tl_constructor*, %struct.tl_constructor** %2, align 8
  %55 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @write_tree(i64 %56, i32 0, i32** %3, i32* %4)
  br label %58

58:                                               ; preds = %53, %44
  br label %69

59:                                               ; preds = %24
  %60 = load i32, i32* @schema_version, align 4
  %61 = icmp sge i32 %60, 1
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, i32* @TLS_COMBINATOR_LEFT, align 4
  %64 = call i32 @wint(i32 %63)
  %65 = call i32 @wint(i32 0)
  br label %68

66:                                               ; preds = %59
  %67 = call i32 @wint(i32 -11)
  br label %68

68:                                               ; preds = %66, %62
  br label %69

69:                                               ; preds = %68, %58
  %70 = load i32, i32* @schema_version, align 4
  %71 = icmp sge i32 %70, 1
  br i1 %71, label %72, label %82

72:                                               ; preds = %69
  %73 = load i32, i32* @schema_version, align 4
  %74 = icmp sge i32 %73, 2
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i32, i32* @TLS_COMBINATOR_RIGHT_V2, align 4
  br label %79

77:                                               ; preds = %72
  %78 = load i32, i32* @TLS_COMBINATOR_RIGHT, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  %81 = call i32 @wint(i32 %80)
  br label %82

82:                                               ; preds = %79, %69
  %83 = load %struct.tl_constructor*, %struct.tl_constructor** %2, align 8
  %84 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @write_tree(i64 %85, i32 1, i32** %3, i32* %4)
  ret void
}

declare dso_local i32 @wint(i32) #1

declare dso_local i32 @wstr(i32) #1

declare dso_local i32 @assert(i64) #1

declare dso_local i64 @is_builtin_type(i32) #1

declare dso_local i32 @write_tree(i64, i32, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
