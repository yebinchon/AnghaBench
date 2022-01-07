; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_sort.c_sort_holder_items.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_sort.c_sort_holder_items.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@SORT_DESC = common dso_local global i32 0, align 4
@cmp_num_desc = common dso_local global i32 0, align 4
@cmp_num_asc = common dso_local global i32 0, align 4
@cmp_vis_desc = common dso_local global i32 0, align 4
@cmp_vis_asc = common dso_local global i32 0, align 4
@cmp_data_desc = common dso_local global i32 0, align 4
@cmp_data_asc = common dso_local global i32 0, align 4
@cmp_bw_desc = common dso_local global i32 0, align 4
@cmp_bw_asc = common dso_local global i32 0, align 4
@cmp_avgts_desc = common dso_local global i32 0, align 4
@cmp_avgts_asc = common dso_local global i32 0, align 4
@cmp_cumts_desc = common dso_local global i32 0, align 4
@cmp_cumts_asc = common dso_local global i32 0, align 4
@cmp_maxts_desc = common dso_local global i32 0, align 4
@cmp_maxts_asc = common dso_local global i32 0, align 4
@cmp_proto_desc = common dso_local global i32 0, align 4
@cmp_proto_asc = common dso_local global i32 0, align 4
@cmp_mthd_desc = common dso_local global i32 0, align 4
@cmp_mthd_asc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sort_holder_items(i32* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = bitcast %struct.TYPE_3__* %4 to i64*
  store i64 %2, i64* %7, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %154 [
    i32 132, label %10
    i32 128, label %26
    i32 133, label %42
    i32 135, label %58
    i32 136, label %74
    i32 134, label %90
    i32 131, label %106
    i32 129, label %122
    i32 130, label %138
  ]

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SORT_DESC, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @cmp_num_desc, align 4
  %19 = call i32 @qsort(i32* %16, i32 %17, i32 4, i32 %18)
  br label %25

20:                                               ; preds = %10
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @cmp_num_asc, align 4
  %24 = call i32 @qsort(i32* %21, i32 %22, i32 4, i32 %23)
  br label %25

25:                                               ; preds = %20, %15
  br label %154

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SORT_DESC, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @cmp_vis_desc, align 4
  %35 = call i32 @qsort(i32* %32, i32 %33, i32 4, i32 %34)
  br label %41

36:                                               ; preds = %26
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @cmp_vis_asc, align 4
  %40 = call i32 @qsort(i32* %37, i32 %38, i32 4, i32 %39)
  br label %41

41:                                               ; preds = %36, %31
  br label %154

42:                                               ; preds = %3
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SORT_DESC, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @cmp_data_desc, align 4
  %51 = call i32 @qsort(i32* %48, i32 %49, i32 4, i32 %50)
  br label %57

52:                                               ; preds = %42
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @cmp_data_asc, align 4
  %56 = call i32 @qsort(i32* %53, i32 %54, i32 4, i32 %55)
  br label %57

57:                                               ; preds = %52, %47
  br label %154

58:                                               ; preds = %3
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SORT_DESC, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @cmp_bw_desc, align 4
  %67 = call i32 @qsort(i32* %64, i32 %65, i32 4, i32 %66)
  br label %73

68:                                               ; preds = %58
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @cmp_bw_asc, align 4
  %72 = call i32 @qsort(i32* %69, i32 %70, i32 4, i32 %71)
  br label %73

73:                                               ; preds = %68, %63
  br label %154

74:                                               ; preds = %3
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @SORT_DESC, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @cmp_avgts_desc, align 4
  %83 = call i32 @qsort(i32* %80, i32 %81, i32 4, i32 %82)
  br label %89

84:                                               ; preds = %74
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @cmp_avgts_asc, align 4
  %88 = call i32 @qsort(i32* %85, i32 %86, i32 4, i32 %87)
  br label %89

89:                                               ; preds = %84, %79
  br label %154

90:                                               ; preds = %3
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @SORT_DESC, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load i32*, i32** %5, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @cmp_cumts_desc, align 4
  %99 = call i32 @qsort(i32* %96, i32 %97, i32 4, i32 %98)
  br label %105

100:                                              ; preds = %90
  %101 = load i32*, i32** %5, align 8
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @cmp_cumts_asc, align 4
  %104 = call i32 @qsort(i32* %101, i32 %102, i32 4, i32 %103)
  br label %105

105:                                              ; preds = %100, %95
  br label %154

106:                                              ; preds = %3
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @SORT_DESC, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load i32*, i32** %5, align 8
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @cmp_maxts_desc, align 4
  %115 = call i32 @qsort(i32* %112, i32 %113, i32 4, i32 %114)
  br label %121

116:                                              ; preds = %106
  %117 = load i32*, i32** %5, align 8
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @cmp_maxts_asc, align 4
  %120 = call i32 @qsort(i32* %117, i32 %118, i32 4, i32 %119)
  br label %121

121:                                              ; preds = %116, %111
  br label %154

122:                                              ; preds = %3
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @SORT_DESC, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load i32*, i32** %5, align 8
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @cmp_proto_desc, align 4
  %131 = call i32 @qsort(i32* %128, i32 %129, i32 4, i32 %130)
  br label %137

132:                                              ; preds = %122
  %133 = load i32*, i32** %5, align 8
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* @cmp_proto_asc, align 4
  %136 = call i32 @qsort(i32* %133, i32 %134, i32 4, i32 %135)
  br label %137

137:                                              ; preds = %132, %127
  br label %154

138:                                              ; preds = %3
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @SORT_DESC, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load i32*, i32** %5, align 8
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* @cmp_mthd_desc, align 4
  %147 = call i32 @qsort(i32* %144, i32 %145, i32 4, i32 %146)
  br label %153

148:                                              ; preds = %138
  %149 = load i32*, i32** %5, align 8
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* @cmp_mthd_asc, align 4
  %152 = call i32 @qsort(i32* %149, i32 %150, i32 4, i32 %151)
  br label %153

153:                                              ; preds = %148, %143
  br label %154

154:                                              ; preds = %3, %153, %137, %121, %105, %89, %73, %57, %41, %25
  ret void
}

declare dso_local i32 @qsort(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
