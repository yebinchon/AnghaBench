; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_array.c_ary_replace.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_array.c_ary_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RArray = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i64, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.RBasic = type { i32 }

@ARY_REPLACE_SHARED_MIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.RArray*, %struct.RArray*)* @ary_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ary_replace(i32* %0, %struct.RArray* %1, %struct.RArray* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.RArray*, align 8
  %6 = alloca %struct.RArray*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.RArray* %1, %struct.RArray** %5, align 8
  store %struct.RArray* %2, %struct.RArray** %6, align 8
  %8 = load %struct.RArray*, %struct.RArray** %6, align 8
  %9 = call i64 @ARY_LEN(%struct.RArray* %8)
  store i64 %9, i64* %7, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load %struct.RArray*, %struct.RArray** %5, align 8
  %12 = call i32 @ary_modify_check(i32* %10, %struct.RArray* %11)
  %13 = load %struct.RArray*, %struct.RArray** %5, align 8
  %14 = load %struct.RArray*, %struct.RArray** %6, align 8
  %15 = icmp eq %struct.RArray* %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %142

17:                                               ; preds = %3
  %18 = load %struct.RArray*, %struct.RArray** %5, align 8
  %19 = call i64 @ARY_SHARED_P(%struct.RArray* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %17
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.RArray*, %struct.RArray** %5, align 8
  %24 = getelementptr inbounds %struct.RArray, %struct.RArray* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = call i32 @mrb_ary_decref(i32* %22, %struct.TYPE_8__* %28)
  %30 = load %struct.RArray*, %struct.RArray** %5, align 8
  %31 = getelementptr inbounds %struct.RArray, %struct.RArray* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.RArray*, %struct.RArray** %5, align 8
  %36 = getelementptr inbounds %struct.RArray, %struct.RArray* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.RArray*, %struct.RArray** %5, align 8
  %40 = getelementptr inbounds %struct.RArray, %struct.RArray* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  store i32* null, i32** %42, align 8
  %43 = load %struct.RArray*, %struct.RArray** %5, align 8
  %44 = call i32 @ARY_UNSET_SHARED_FLAG(%struct.RArray* %43)
  br label %45

45:                                               ; preds = %21, %17
  %46 = load %struct.RArray*, %struct.RArray** %6, align 8
  %47 = call i64 @ARY_SHARED_P(%struct.RArray* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %106

49:                                               ; preds = %45
  br label %50

50:                                               ; preds = %114, %49
  %51 = load %struct.RArray*, %struct.RArray** %5, align 8
  %52 = call i64 @ARY_EMBED_P(%struct.RArray* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load %struct.RArray*, %struct.RArray** %5, align 8
  %56 = call i32 @ARY_UNSET_EMBED_FLAG(%struct.RArray* %55)
  br label %65

57:                                               ; preds = %50
  %58 = load i32*, i32** %4, align 8
  %59 = load %struct.RArray*, %struct.RArray** %5, align 8
  %60 = getelementptr inbounds %struct.RArray, %struct.RArray* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @mrb_free(i32* %58, i32* %63)
  br label %65

65:                                               ; preds = %57, %54
  %66 = load %struct.RArray*, %struct.RArray** %6, align 8
  %67 = getelementptr inbounds %struct.RArray, %struct.RArray* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.RArray*, %struct.RArray** %5, align 8
  %72 = getelementptr inbounds %struct.RArray, %struct.RArray* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  store i32* %70, i32** %74, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load %struct.RArray*, %struct.RArray** %5, align 8
  %77 = getelementptr inbounds %struct.RArray, %struct.RArray* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  store i64 %75, i64* %79, align 8
  %80 = load %struct.RArray*, %struct.RArray** %6, align 8
  %81 = getelementptr inbounds %struct.RArray, %struct.RArray* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = load %struct.RArray*, %struct.RArray** %5, align 8
  %87 = getelementptr inbounds %struct.RArray, %struct.RArray* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  store %struct.TYPE_8__* %85, %struct.TYPE_8__** %90, align 8
  %91 = load %struct.RArray*, %struct.RArray** %5, align 8
  %92 = getelementptr inbounds %struct.RArray, %struct.RArray* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  %100 = load %struct.RArray*, %struct.RArray** %5, align 8
  %101 = call i32 @ARY_SET_SHARED_FLAG(%struct.RArray* %100)
  %102 = load i32*, i32** %4, align 8
  %103 = load %struct.RArray*, %struct.RArray** %5, align 8
  %104 = bitcast %struct.RArray* %103 to %struct.RBasic*
  %105 = call i32 @mrb_write_barrier(i32* %102, %struct.RBasic* %104)
  br label %142

106:                                              ; preds = %45
  %107 = load %struct.RArray*, %struct.RArray** %6, align 8
  %108 = call i32 @MRB_FROZEN_P(%struct.RArray* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %118, label %110

110:                                              ; preds = %106
  %111 = load i64, i64* %7, align 8
  %112 = load i64, i64* @ARY_REPLACE_SHARED_MIN, align 8
  %113 = icmp sgt i64 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load i32*, i32** %4, align 8
  %116 = load %struct.RArray*, %struct.RArray** %6, align 8
  %117 = call i32 @ary_make_shared(i32* %115, %struct.RArray* %116)
  br label %50

118:                                              ; preds = %110, %106
  %119 = load %struct.RArray*, %struct.RArray** %5, align 8
  %120 = call i64 @ARY_CAPA(%struct.RArray* %119)
  %121 = load i64, i64* %7, align 8
  %122 = icmp slt i64 %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load i32*, i32** %4, align 8
  %125 = load %struct.RArray*, %struct.RArray** %5, align 8
  %126 = load i64, i64* %7, align 8
  %127 = call i32 @ary_expand_capa(i32* %124, %struct.RArray* %125, i64 %126)
  br label %128

128:                                              ; preds = %123, %118
  %129 = load %struct.RArray*, %struct.RArray** %5, align 8
  %130 = call i32 @ARY_PTR(%struct.RArray* %129)
  %131 = load %struct.RArray*, %struct.RArray** %6, align 8
  %132 = call i32 @ARY_PTR(%struct.RArray* %131)
  %133 = load i64, i64* %7, align 8
  %134 = call i32 @array_copy(i32 %130, i32 %132, i64 %133)
  %135 = load i32*, i32** %4, align 8
  %136 = load %struct.RArray*, %struct.RArray** %5, align 8
  %137 = bitcast %struct.RArray* %136 to %struct.RBasic*
  %138 = call i32 @mrb_write_barrier(i32* %135, %struct.RBasic* %137)
  %139 = load %struct.RArray*, %struct.RArray** %5, align 8
  %140 = load i64, i64* %7, align 8
  %141 = call i32 @ARY_SET_LEN(%struct.RArray* %139, i64 %140)
  br label %142

142:                                              ; preds = %128, %65, %16
  ret void
}

declare dso_local i64 @ARY_LEN(%struct.RArray*) #1

declare dso_local i32 @ary_modify_check(i32*, %struct.RArray*) #1

declare dso_local i64 @ARY_SHARED_P(%struct.RArray*) #1

declare dso_local i32 @mrb_ary_decref(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @ARY_UNSET_SHARED_FLAG(%struct.RArray*) #1

declare dso_local i64 @ARY_EMBED_P(%struct.RArray*) #1

declare dso_local i32 @ARY_UNSET_EMBED_FLAG(%struct.RArray*) #1

declare dso_local i32 @mrb_free(i32*, i32*) #1

declare dso_local i32 @ARY_SET_SHARED_FLAG(%struct.RArray*) #1

declare dso_local i32 @mrb_write_barrier(i32*, %struct.RBasic*) #1

declare dso_local i32 @MRB_FROZEN_P(%struct.RArray*) #1

declare dso_local i32 @ary_make_shared(i32*, %struct.RArray*) #1

declare dso_local i64 @ARY_CAPA(%struct.RArray*) #1

declare dso_local i32 @ary_expand_capa(i32*, %struct.RArray*, i64) #1

declare dso_local i32 @array_copy(i32, i32, i64) #1

declare dso_local i32 @ARY_PTR(%struct.RArray*) #1

declare dso_local i32 @ARY_SET_LEN(%struct.RArray*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
