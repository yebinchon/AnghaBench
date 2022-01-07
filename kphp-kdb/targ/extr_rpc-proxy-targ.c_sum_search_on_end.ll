; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_rpc-proxy-targ.c_sum_search_on_end.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_rpc-proxy-targ.c_sum_search_on_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gather = type { i32, %struct.TYPE_4__*, %struct.targ_extra* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.targ_extra = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@received_bad_answers = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Dropping result %d (num = %d)\0A\00", align 1
@TL_VECTOR_TOTAL = common dso_local global i32 0, align 4
@GH_total = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sum_search_on_end(%struct.gather* %0) #0 {
  %2 = alloca %struct.gather*, align 8
  %3 = alloca %struct.targ_extra*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store %struct.gather* %0, %struct.gather** %2, align 8
  %9 = load %struct.gather*, %struct.gather** %2, align 8
  %10 = getelementptr inbounds %struct.gather, %struct.gather* %9, i32 0, i32 2
  %11 = load %struct.targ_extra*, %struct.targ_extra** %10, align 8
  store %struct.targ_extra* %11, %struct.targ_extra** %3, align 8
  %12 = load %struct.gather*, %struct.gather** %2, align 8
  %13 = call i64 @merge_init_response(%struct.gather* %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.targ_extra*, %struct.targ_extra** %3, align 8
  %17 = call i32 @zfree(%struct.targ_extra* %16, i32 8)
  %18 = load %struct.gather*, %struct.gather** %2, align 8
  %19 = call i32 @merge_delete(%struct.gather* %18)
  br label %139

20:                                               ; preds = %1
  %21 = load %struct.targ_extra*, %struct.targ_extra** %3, align 8
  %22 = getelementptr inbounds %struct.targ_extra, %struct.targ_extra* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 7
  %25 = or i32 %24, 16
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, 1
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, 8
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %29, %20
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @clear_gather_heap(i32 %33)
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %92, %32
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.gather*, %struct.gather** %2, align 8
  %38 = getelementptr inbounds %struct.gather, %struct.gather* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %95

41:                                               ; preds = %35
  %42 = load %struct.gather*, %struct.gather** %2, align 8
  %43 = getelementptr inbounds %struct.gather, %struct.gather* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sge i64 %49, 0
  br i1 %50, label %51, label %75

51:                                               ; preds = %41
  %52 = load %struct.gather*, %struct.gather** %2, align 8
  %53 = getelementptr inbounds %struct.gather, %struct.gather* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.gather*, %struct.gather** %2, align 8
  %61 = getelementptr inbounds %struct.gather, %struct.gather* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @gather_heap_insert(i32 %59, i64 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %51
  %72 = load i32, i32* @received_bad_answers, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* @received_bad_answers, align 4
  br label %74

74:                                               ; preds = %71, %51
  br label %91

75:                                               ; preds = %41
  %76 = load i32, i32* @verbosity, align 4
  %77 = icmp sge i32 %76, 4
  br i1 %77, label %78, label %90

78:                                               ; preds = %75
  %79 = load i32, i32* @stderr, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.gather*, %struct.gather** %2, align 8
  %82 = getelementptr inbounds %struct.gather, %struct.gather* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @fprintf(i32 %79, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %80, i64 %88)
  br label %90

90:                                               ; preds = %78, %75
  br label %91

91:                                               ; preds = %90, %74
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %35

95:                                               ; preds = %35
  %96 = load i32, i32* @TL_VECTOR_TOTAL, align 4
  %97 = call i32 @tl_store_int(i32 %96)
  %98 = load i32, i32* @GH_total, align 4
  %99 = call i32 @tl_store_int(i32 %98)
  %100 = call i32* @tl_store_get_ptr(i32 4)
  store i32* %100, i32** %7, align 8
  %101 = load i32*, i32** %7, align 8
  store i32 0, i32* %101, align 4
  br label %102

102:                                              ; preds = %95, %128
  %103 = load i32*, i32** %7, align 8
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.targ_extra*, %struct.targ_extra** %3, align 8
  %106 = getelementptr inbounds %struct.targ_extra, %struct.targ_extra* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp sge i32 %104, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %102
  br label %133

110:                                              ; preds = %102
  %111 = call %struct.TYPE_5__* (...) @get_gather_heap_head()
  store %struct.TYPE_5__* %111, %struct.TYPE_5__** %8, align 8
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %113 = icmp ne %struct.TYPE_5__* %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %110
  br label %133

115:                                              ; preds = %110
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @tl_store_int(i32 %118)
  %120 = load i32, i32* %4, align 4
  %121 = and i32 %120, 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %115
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @tl_store_int(i32 %126)
  br label %128

128:                                              ; preds = %123, %115
  %129 = load i32*, i32** %7, align 8
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  %132 = call i32 (...) @gather_heap_advance()
  br label %102

133:                                              ; preds = %114, %109
  %134 = call i32 (...) @tl_store_end()
  %135 = load %struct.targ_extra*, %struct.targ_extra** %3, align 8
  %136 = call i32 @zfree(%struct.targ_extra* %135, i32 8)
  %137 = load %struct.gather*, %struct.gather** %2, align 8
  %138 = call i32 @merge_delete(%struct.gather* %137)
  br label %139

139:                                              ; preds = %133, %15
  ret void
}

declare dso_local i64 @merge_init_response(%struct.gather*) #1

declare dso_local i32 @zfree(%struct.targ_extra*, i32) #1

declare dso_local i32 @merge_delete(%struct.gather*) #1

declare dso_local i32 @clear_gather_heap(i32) #1

declare dso_local i32 @gather_heap_insert(i32, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i64) #1

declare dso_local i32 @tl_store_int(i32) #1

declare dso_local i32* @tl_store_get_ptr(i32) #1

declare dso_local %struct.TYPE_5__* @get_gather_heap_head(...) #1

declare dso_local i32 @gather_heap_advance(...) #1

declare dso_local i32 @tl_store_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
