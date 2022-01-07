; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_explicit_list_iterator_jump_to.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_explicit_list_iterator_jump_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.explicit_list_iterator = type { i32, i32*, i32*, i8* }

@empty_iterator_jump_to = common dso_local global i8* null, align 8
@INFTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @explicit_list_iterator_jump_to(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.explicit_list_iterator*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i64, i64* %4, align 8
  %12 = inttoptr i64 %11 to %struct.explicit_list_iterator*
  store %struct.explicit_list_iterator* %12, %struct.explicit_list_iterator** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.explicit_list_iterator*, %struct.explicit_list_iterator** %6, align 8
  %15 = getelementptr inbounds %struct.explicit_list_iterator, %struct.explicit_list_iterator* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sgt i32 %13, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.explicit_list_iterator*, %struct.explicit_list_iterator** %6, align 8
  %21 = getelementptr inbounds %struct.explicit_list_iterator, %struct.explicit_list_iterator* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.explicit_list_iterator*, %struct.explicit_list_iterator** %6, align 8
  %24 = getelementptr inbounds %struct.explicit_list_iterator, %struct.explicit_list_iterator* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %22, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = load i8*, i8** @empty_iterator_jump_to, align 8
  %29 = load %struct.explicit_list_iterator*, %struct.explicit_list_iterator** %6, align 8
  %30 = getelementptr inbounds %struct.explicit_list_iterator, %struct.explicit_list_iterator* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* @INFTY, align 4
  %32 = load %struct.explicit_list_iterator*, %struct.explicit_list_iterator** %6, align 8
  %33 = getelementptr inbounds %struct.explicit_list_iterator, %struct.explicit_list_iterator* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  store i32 %31, i32* %3, align 4
  br label %133

34:                                               ; preds = %2
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.explicit_list_iterator*, %struct.explicit_list_iterator** %6, align 8
  %37 = getelementptr inbounds %struct.explicit_list_iterator, %struct.explicit_list_iterator* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp sle i32 %35, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = load %struct.explicit_list_iterator*, %struct.explicit_list_iterator** %6, align 8
  %43 = getelementptr inbounds %struct.explicit_list_iterator, %struct.explicit_list_iterator* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %43, align 8
  %46 = load i32, i32* %44, align 4
  %47 = load %struct.explicit_list_iterator*, %struct.explicit_list_iterator** %6, align 8
  %48 = getelementptr inbounds %struct.explicit_list_iterator, %struct.explicit_list_iterator* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  store i32 %46, i32* %3, align 4
  br label %133

49:                                               ; preds = %34
  %50 = load %struct.explicit_list_iterator*, %struct.explicit_list_iterator** %6, align 8
  %51 = getelementptr inbounds %struct.explicit_list_iterator, %struct.explicit_list_iterator* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 1, i64* %9, align 8
  %53 = load %struct.explicit_list_iterator*, %struct.explicit_list_iterator** %6, align 8
  %54 = getelementptr inbounds %struct.explicit_list_iterator, %struct.explicit_list_iterator* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = ptrtoint i32* %55 to i64
  %58 = ptrtoint i32* %56 to i64
  %59 = sub i64 %57, %58
  %60 = sdiv exact i64 %59, 4
  store i64 %60, i64* %10, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %10, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %83

64:                                               ; preds = %49
  br label %65

65:                                               ; preds = %81, %64
  %66 = load i32*, i32** %7, align 8
  %67 = load i64, i64* %9, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %65
  %73 = load i64, i64* %9, align 8
  store i64 %73, i64* %8, align 8
  %74 = load i64, i64* %9, align 8
  %75 = shl i64 %74, 1
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* %10, align 8
  %78 = icmp sge i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i64, i64* %10, align 8
  store i64 %80, i64* %9, align 8
  br label %82

81:                                               ; preds = %72
  br label %65

82:                                               ; preds = %79, %65
  br label %83

83:                                               ; preds = %82, %49
  br label %84

84:                                               ; preds = %104, %83
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* %8, align 8
  %87 = sub nsw i64 %85, %86
  %88 = icmp sgt i64 %87, 1
  br i1 %88, label %89, label %105

89:                                               ; preds = %84
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* %9, align 8
  %92 = add nsw i64 %90, %91
  %93 = ashr i64 %92, 1
  store i64 %93, i64* %10, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = load i64, i64* %10, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %5, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %89
  %101 = load i64, i64* %10, align 8
  store i64 %101, i64* %8, align 8
  br label %104

102:                                              ; preds = %89
  %103 = load i64, i64* %10, align 8
  store i64 %103, i64* %9, align 8
  br label %104

104:                                              ; preds = %102, %100
  br label %84

105:                                              ; preds = %84
  %106 = load i64, i64* %9, align 8
  %107 = load i32*, i32** %7, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 %106
  store i32* %108, i32** %7, align 8
  %109 = load i32*, i32** %7, align 8
  %110 = load %struct.explicit_list_iterator*, %struct.explicit_list_iterator** %6, align 8
  %111 = getelementptr inbounds %struct.explicit_list_iterator, %struct.explicit_list_iterator* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = icmp eq i32* %109, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %105
  %115 = load i32*, i32** %7, align 8
  %116 = load %struct.explicit_list_iterator*, %struct.explicit_list_iterator** %6, align 8
  %117 = getelementptr inbounds %struct.explicit_list_iterator, %struct.explicit_list_iterator* %116, i32 0, i32 1
  store i32* %115, i32** %117, align 8
  %118 = load i8*, i8** @empty_iterator_jump_to, align 8
  %119 = load %struct.explicit_list_iterator*, %struct.explicit_list_iterator** %6, align 8
  %120 = getelementptr inbounds %struct.explicit_list_iterator, %struct.explicit_list_iterator* %119, i32 0, i32 3
  store i8* %118, i8** %120, align 8
  %121 = load i32, i32* @INFTY, align 4
  %122 = load %struct.explicit_list_iterator*, %struct.explicit_list_iterator** %6, align 8
  %123 = getelementptr inbounds %struct.explicit_list_iterator, %struct.explicit_list_iterator* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  store i32 %121, i32* %3, align 4
  br label %133

124:                                              ; preds = %105
  %125 = load i32*, i32** %7, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  %127 = load %struct.explicit_list_iterator*, %struct.explicit_list_iterator** %6, align 8
  %128 = getelementptr inbounds %struct.explicit_list_iterator, %struct.explicit_list_iterator* %127, i32 0, i32 1
  store i32* %126, i32** %128, align 8
  %129 = load i32*, i32** %7, align 8
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.explicit_list_iterator*, %struct.explicit_list_iterator** %6, align 8
  %132 = getelementptr inbounds %struct.explicit_list_iterator, %struct.explicit_list_iterator* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  store i32 %130, i32* %3, align 4
  br label %133

133:                                              ; preds = %124, %114, %41, %27
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
