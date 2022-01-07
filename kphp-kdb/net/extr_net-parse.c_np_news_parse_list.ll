; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-parse.c_np_news_parse_list.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-parse.c_np_news_parse_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nb_reader = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @np_news_parse_list(i32* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nb_reader, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %134

21:                                               ; preds = %5
  %22 = load i32, i32* %11, align 4
  %23 = icmp sge i32 %22, 4
  br i1 %23, label %24, label %77

24:                                               ; preds = %21
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @nbit_set(i32* %12, i32* %25)
  %27 = call i32 @nbit_read_in(i32* %12, i32* %13, i32 4)
  %28 = icmp ne i32 %27, 4
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32*, i32** %10, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @advance_skip_read_ptr(i32* %30, i32 %31)
  store i32 -1, i32* %6, align 4
  br label %134

33:                                               ; preds = %24
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %9, align 4
  %36 = sub nsw i32 %35, 1
  %37 = shl i32 %36, 24
  %38 = add nsw i32 808464432, %37
  %39 = icmp eq i32 %34, %38
  br i1 %39, label %40, label %76

40:                                               ; preds = %33
  %41 = load i32, i32* %11, align 4
  %42 = sub nsw i32 %41, 4
  %43 = ashr i32 %42, 2
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %11, align 4
  %45 = and i32 %44, 3
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %65, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %65, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %9, align 4
  %54 = srem i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %51
  %57 = load i32*, i32** %7, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %11, align 4
  %60 = sub nsw i32 %59, 4
  %61 = call i32 @nbit_read_in(i32* %12, i32* %58, i32 %60)
  %62 = load i32, i32* %11, align 4
  %63 = sub nsw i32 %62, 4
  %64 = icmp ne i32 %61, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %56, %51, %47, %40
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @advance_skip_read_ptr(i32* %66, i32 %67)
  store i32 -1, i32* %6, align 4
  br label %134

69:                                               ; preds = %56
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @advance_skip_read_ptr(i32* %70, i32 %71)
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %9, align 4
  %75 = sdiv i32 %73, %74
  store i32 %75, i32* %6, align 4
  br label %134

76:                                               ; preds = %33
  br label %77

77:                                               ; preds = %76, %21
  %78 = load i32*, i32** %10, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @nb_reader_set(%struct.nb_reader* %14, i32* %78, i32 %79)
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %81

81:                                               ; preds = %118, %77
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp sge i32 %82, %83
  br i1 %84, label %93, label %85

85:                                               ; preds = %81
  %86 = load i32*, i32** %7, align 8
  %87 = load i32, i32* %17, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %17, align 4
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = call i32 @nb_reader_parse_int(%struct.nb_reader* %14, i32* %90, i32* %15)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %85, %81
  %94 = load i32*, i32** %10, align 8
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @advance_skip_read_ptr(i32* %94, i32 %95)
  store i32 -1, i32* %6, align 4
  br label %134

97:                                               ; preds = %85
  %98 = load i32, i32* %15, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  br label %119

101:                                              ; preds = %97
  %102 = load i32, i32* %16, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %16, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  store i32 0, i32* %16, align 4
  br label %107

107:                                              ; preds = %106, %101
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %16, align 4
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 95, i32 44
  %113 = icmp ne i32 %108, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = load i32*, i32** %10, align 8
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @advance_skip_read_ptr(i32* %115, i32 %116)
  store i32 -1, i32* %6, align 4
  br label %134

118:                                              ; preds = %107
  br label %81

119:                                              ; preds = %100
  %120 = load i32*, i32** %10, align 8
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @advance_skip_read_ptr(i32* %120, i32 %121)
  %123 = load i32, i32* %17, align 4
  %124 = load i32, i32* %9, align 4
  %125 = srem i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %119
  br label %132

128:                                              ; preds = %119
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* %9, align 4
  %131 = sdiv i32 %129, %130
  br label %132

132:                                              ; preds = %128, %127
  %133 = phi i32 [ -1, %127 ], [ %131, %128 ]
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %132, %114, %93, %69, %65, %29, %20
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

declare dso_local i32 @nbit_set(i32*, i32*) #1

declare dso_local i32 @nbit_read_in(i32*, i32*, i32) #1

declare dso_local i32 @advance_skip_read_ptr(i32*, i32) #1

declare dso_local i32 @nb_reader_set(%struct.nb_reader*, i32*, i32) #1

declare dso_local i32 @nb_reader_parse_int(%struct.nb_reader*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
