; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_do_list_entry_get.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_do_list_entry_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_act_extra = type { i64 }
%struct.tl_list_entry_get = type { i32, i32, i32 }

@R = common dso_local global i32* null, align 8
@TL_MAYBE_FALSE = common dso_local global i32 0, align 4
@TL_MAYBE_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_do_list_entry_get(%struct.tl_act_extra* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tl_act_extra*, align 8
  %4 = alloca %struct.tl_list_entry_get*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  store %struct.tl_act_extra* %0, %struct.tl_act_extra** %3, align 8
  %8 = load %struct.tl_act_extra*, %struct.tl_act_extra** %3, align 8
  %9 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.tl_list_entry_get*
  store %struct.tl_list_entry_get* %12, %struct.tl_list_entry_get** %4, align 8
  %13 = load %struct.tl_list_entry_get*, %struct.tl_list_entry_get** %4, align 8
  %14 = getelementptr inbounds %struct.tl_list_entry_get, %struct.tl_list_entry_get* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.tl_list_entry_get*, %struct.tl_list_entry_get** %4, align 8
  %17 = getelementptr inbounds %struct.tl_list_entry_get, %struct.tl_list_entry_get* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** @R, align 8
  %20 = call i32 @fetch_list_entry(i32 %15, i32 %18, i32* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, -2
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 -2, i32* %2, align 4
  br label %117

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @TL_MAYBE_FALSE, align 4
  %29 = call i32 @tl_store_int(i32 %28)
  store i32 0, i32* %2, align 4
  br label %117

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 6
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32*, i32** @R, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 12
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* @TL_MAYBE_TRUE, align 4
  %39 = call i32 @tl_store_int(i32 %38)
  %40 = load %struct.tl_list_entry_get*, %struct.tl_list_entry_get** %4, align 8
  %41 = getelementptr inbounds %struct.tl_list_entry_get, %struct.tl_list_entry_get* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 32768
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %30
  %46 = load %struct.tl_list_entry_get*, %struct.tl_list_entry_get** %4, align 8
  %47 = getelementptr inbounds %struct.tl_list_entry_get, %struct.tl_list_entry_get* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @tl_store_object_id(i32 %48)
  br label %50

50:                                               ; preds = %45, %30
  %51 = load %struct.tl_list_entry_get*, %struct.tl_list_entry_get** %4, align 8
  %52 = getelementptr inbounds %struct.tl_list_entry_get, %struct.tl_list_entry_get* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 64
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load i32*, i32** @R, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @tl_store_int(i32 %59)
  br label %61

61:                                               ; preds = %56, %50
  %62 = load %struct.tl_list_entry_get*, %struct.tl_list_entry_get** %4, align 8
  %63 = getelementptr inbounds %struct.tl_list_entry_get, %struct.tl_list_entry_get* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 128
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load i32*, i32** @R, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @tl_store_int(i32 %70)
  br label %72

72:                                               ; preds = %67, %61
  %73 = load %struct.tl_list_entry_get*, %struct.tl_list_entry_get** %4, align 8
  %74 = getelementptr inbounds %struct.tl_list_entry_get, %struct.tl_list_entry_get* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 256
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load i32*, i32** @R, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = bitcast i32* %80 to i64*
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @tl_store_long(i64 %82)
  br label %84

84:                                               ; preds = %78, %72
  %85 = load %struct.tl_list_entry_get*, %struct.tl_list_entry_get** %4, align 8
  %86 = getelementptr inbounds %struct.tl_list_entry_get, %struct.tl_list_entry_get* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 512
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %84
  %91 = load i32*, i32** @R, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 4
  %93 = bitcast i32* %92 to i64*
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @tl_store_long(i64 %94)
  br label %96

96:                                               ; preds = %90, %84
  %97 = load %struct.tl_list_entry_get*, %struct.tl_list_entry_get** %4, align 8
  %98 = getelementptr inbounds %struct.tl_list_entry_get, %struct.tl_list_entry_get* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 1024
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %96
  %103 = load i32*, i32** @R, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 10
  %105 = bitcast i32* %104 to i8**
  store i8** %105, i8*** %7, align 8
  %106 = load i8**, i8*** %7, align 8
  %107 = icmp ne i8** %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load i8**, i8*** %7, align 8
  %110 = load i8*, i8** %109, align 8
  br label %112

111:                                              ; preds = %102
  br label %112

112:                                              ; preds = %111, %108
  %113 = phi i8* [ %110, %108 ], [ null, %111 ]
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @tl_store_string(i8* %113, i32 %114)
  br label %116

116:                                              ; preds = %112, %96
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %116, %27, %23
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @fetch_list_entry(i32, i32, i32*) #1

declare dso_local i32 @tl_store_int(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tl_store_object_id(i32) #1

declare dso_local i32 @tl_store_long(i64) #1

declare dso_local i32 @tl_store_string(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
