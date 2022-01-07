; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_rpc-proxy-merge-hints.c_rpc_proxy_hints_on_end.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_rpc-proxy-merge-hints.c_rpc_proxy_hints_on_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gather = type { i32, %struct.hints_extra*, %struct.TYPE_4__* }
%struct.hints_extra = type { i32, i64, i64 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@received_bad_answers = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Dropping result %d (num = %d)\0A\00", align 1
@TL_VECTOR_TOTAL = common dso_local global i32 0, align 4
@GH_total = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpc_proxy_hints_on_end(%struct.gather* %0) #0 {
  %2 = alloca %struct.gather*, align 8
  %3 = alloca %struct.hints_extra*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  store %struct.gather* %0, %struct.gather** %2, align 8
  %8 = load %struct.gather*, %struct.gather** %2, align 8
  %9 = getelementptr inbounds %struct.gather, %struct.gather* %8, i32 0, i32 1
  %10 = load %struct.hints_extra*, %struct.hints_extra** %9, align 8
  store %struct.hints_extra* %10, %struct.hints_extra** %3, align 8
  %11 = call i32 (...) @clear_gather_heap()
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %64, %1
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.gather*, %struct.gather** %2, align 8
  %15 = getelementptr inbounds %struct.gather, %struct.gather* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %67

18:                                               ; preds = %12
  %19 = load %struct.gather*, %struct.gather** %2, align 8
  %20 = getelementptr inbounds %struct.gather, %struct.gather* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %18
  %29 = load %struct.gather*, %struct.gather** %2, align 8
  %30 = getelementptr inbounds %struct.gather, %struct.gather* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.gather*, %struct.gather** %2, align 8
  %38 = getelementptr inbounds %struct.gather, %struct.gather* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @gather_heap_insert(i32 %36, i64 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %28
  %49 = load i32, i32* @received_bad_answers, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @received_bad_answers, align 4
  br label %51

51:                                               ; preds = %48, %28
  br label %63

52:                                               ; preds = %18
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.gather*, %struct.gather** %2, align 8
  %55 = getelementptr inbounds %struct.gather, %struct.gather* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @vkprintf(i32 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %53, i64 %61)
  br label %63

63:                                               ; preds = %52, %51
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %12

67:                                               ; preds = %12
  %68 = load %struct.gather*, %struct.gather** %2, align 8
  %69 = call i64 @merge_init_response(%struct.gather* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %118

71:                                               ; preds = %67
  %72 = load i32, i32* @TL_VECTOR_TOTAL, align 4
  %73 = call i32 @tl_store_int(i32 %72)
  %74 = load i32, i32* @GH_total, align 4
  %75 = call i32 @tl_store_int(i32 %74)
  %76 = call i32* @tl_store_get_ptr(i32 4)
  store i32* %76, i32** %6, align 8
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %111, %71
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.hints_extra*, %struct.hints_extra** %3, align 8
  %80 = getelementptr inbounds %struct.hints_extra, %struct.hints_extra* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %114

83:                                               ; preds = %77
  %84 = call %struct.TYPE_5__* (...) @get_gather_heap_head()
  store %struct.TYPE_5__* %84, %struct.TYPE_5__** %7, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %86 = icmp eq %struct.TYPE_5__* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %114

88:                                               ; preds = %83
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @tl_store_int(i32 %91)
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @tl_store_int(i32 %95)
  %97 = load %struct.hints_extra*, %struct.hints_extra** %3, align 8
  %98 = getelementptr inbounds %struct.hints_extra, %struct.hints_extra* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.hints_extra*, %struct.hints_extra** %3, align 8
  %101 = getelementptr inbounds %struct.hints_extra, %struct.hints_extra* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %99, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %88
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @tl_store_double(i32 %107)
  br label %109

109:                                              ; preds = %104, %88
  %110 = call i32 (...) @gather_heap_advance()
  br label %111

111:                                              ; preds = %109
  %112 = load i32, i32* %4, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %4, align 4
  br label %77

114:                                              ; preds = %87, %77
  %115 = load i32, i32* %4, align 4
  %116 = load i32*, i32** %6, align 8
  store i32 %115, i32* %116, align 4
  %117 = call i32 (...) @tl_store_end()
  br label %118

118:                                              ; preds = %114, %67
  %119 = load %struct.gather*, %struct.gather** %2, align 8
  %120 = getelementptr inbounds %struct.gather, %struct.gather* %119, i32 0, i32 1
  %121 = load %struct.hints_extra*, %struct.hints_extra** %120, align 8
  %122 = call i32 @free(%struct.hints_extra* %121)
  %123 = load %struct.gather*, %struct.gather** %2, align 8
  %124 = call i32 @merge_delete(%struct.gather* %123)
  ret void
}

declare dso_local i32 @clear_gather_heap(...) #1

declare dso_local i32 @gather_heap_insert(i32, i64) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i64) #1

declare dso_local i64 @merge_init_response(%struct.gather*) #1

declare dso_local i32 @tl_store_int(i32) #1

declare dso_local i32* @tl_store_get_ptr(i32) #1

declare dso_local %struct.TYPE_5__* @get_gather_heap_head(...) #1

declare dso_local i32 @tl_store_double(i32) #1

declare dso_local i32 @gather_heap_advance(...) #1

declare dso_local i32 @tl_store_end(...) #1

declare dso_local i32 @free(%struct.hints_extra*) #1

declare dso_local i32 @merge_delete(%struct.gather*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
