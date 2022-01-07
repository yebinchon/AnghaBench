; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_gc.c_incremental_sweep_phase.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_gc.c_incremental_sweep_phase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64, i64, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_26__*, i8*, %struct.RBasic* }
%struct.RBasic = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_23__, %struct.TYPE_24__ }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_24__ = type { %struct.RBasic* }

@MRB_HEAP_PAGE_SIZE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@MRB_TT_FREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_27__*, i64)* @incremental_sweep_phase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @incremental_sweep_phase(i32* %0, %struct.TYPE_27__* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_26__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  store %struct.TYPE_26__* %17, %struct.TYPE_26__** %7, align 8
  store i64 0, i64* %8, align 8
  br label %18

18:                                               ; preds = %171, %3
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %20 = icmp ne %struct.TYPE_26__* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp ult i64 %22, %23
  br label %25

25:                                               ; preds = %21, %18
  %26 = phi i1 [ false, %18 ], [ %24, %21 ]
  br i1 %26, label %27, label %185

27:                                               ; preds = %25
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %29 = call %struct.TYPE_28__* @objects(%struct.TYPE_26__* %28)
  store %struct.TYPE_28__* %29, %struct.TYPE_28__** %9, align 8
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %31 = load i64, i64* @MRB_HEAP_PAGE_SIZE, align 8
  %32 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %30, i64 %31
  store %struct.TYPE_28__* %32, %struct.TYPE_28__** %10, align 8
  store i64 0, i64* %11, align 8
  %33 = load i8*, i8** @TRUE, align 8
  store i8* %33, i8** %12, align 8
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %34, i32 0, i32 2
  %36 = load %struct.RBasic*, %struct.RBasic** %35, align 8
  %37 = icmp eq %struct.RBasic* %36, null
  %38 = zext i1 %37 to i32
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  store i8* %40, i8** %13, align 8
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %42 = call i64 @is_minor_gc(%struct.TYPE_27__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %27
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  store %struct.TYPE_28__* %50, %struct.TYPE_28__** %9, align 8
  %51 = load i8*, i8** @FALSE, align 8
  store i8* %51, i8** %12, align 8
  br label %52

52:                                               ; preds = %49, %44, %27
  br label %53

53:                                               ; preds = %116, %52
  %54 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %55 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %56 = icmp ult %struct.TYPE_28__* %54, %55
  br i1 %56, label %57, label %119

57:                                               ; preds = %53
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 0
  %62 = call i64 @is_dead(%struct.TYPE_27__* %58, %struct.TYPE_23__* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %104

64:                                               ; preds = %57
  %65 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @MRB_TT_FREE, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %103

72:                                               ; preds = %64
  %73 = load i32*, i32** %4, align 8
  %74 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 0
  %77 = load i8*, i8** @FALSE, align 8
  %78 = call i32 @obj_free(i32* %73, %struct.TYPE_23__* %76, i8* %77)
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @MRB_TT_FREE, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %72
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %87, i32 0, i32 2
  %89 = load %struct.RBasic*, %struct.RBasic** %88, align 8
  %90 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 0
  store %struct.RBasic* %89, %struct.RBasic** %93, align 8
  %94 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %95 = bitcast %struct.TYPE_28__* %94 to %struct.RBasic*
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i32 0, i32 2
  store %struct.RBasic* %95, %struct.RBasic** %97, align 8
  %98 = load i64, i64* %11, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %11, align 8
  br label %102

100:                                              ; preds = %72
  %101 = load i8*, i8** @FALSE, align 8
  store i8* %101, i8** %12, align 8
  br label %102

102:                                              ; preds = %100, %86
  br label %103

103:                                              ; preds = %102, %64
  br label %116

104:                                              ; preds = %57
  %105 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %106 = call i32 @is_generational(%struct.TYPE_27__* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %104
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %110 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 0
  %113 = call i32 @paint_partial_white(%struct.TYPE_27__* %109, %struct.TYPE_23__* %112)
  br label %114

114:                                              ; preds = %108, %104
  %115 = load i8*, i8** @FALSE, align 8
  store i8* %115, i8** %12, align 8
  br label %116

116:                                              ; preds = %114, %103
  %117 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %117, i32 1
  store %struct.TYPE_28__* %118, %struct.TYPE_28__** %9, align 8
  br label %53

119:                                              ; preds = %53
  %120 = load i8*, i8** %12, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %140

122:                                              ; preds = %119
  %123 = load i64, i64* %11, align 8
  %124 = load i64, i64* @MRB_HEAP_PAGE_SIZE, align 8
  %125 = icmp ult i64 %123, %124
  br i1 %125, label %126, label %140

126:                                              ; preds = %122
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_26__*, %struct.TYPE_26__** %128, align 8
  store %struct.TYPE_26__* %129, %struct.TYPE_26__** %14, align 8
  %130 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %131 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %132 = call i32 @unlink_heap_page(%struct.TYPE_27__* %130, %struct.TYPE_26__* %131)
  %133 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %134 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %135 = call i32 @unlink_free_heap_page(%struct.TYPE_27__* %133, %struct.TYPE_26__* %134)
  %136 = load i32*, i32** %4, align 8
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %138 = call i32 @mrb_free(i32* %136, %struct.TYPE_26__* %137)
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  store %struct.TYPE_26__* %139, %struct.TYPE_26__** %7, align 8
  br label %171

140:                                              ; preds = %122, %119
  %141 = load i8*, i8** %13, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %150

143:                                              ; preds = %140
  %144 = load i64, i64* %11, align 8
  %145 = icmp ugt i64 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %143
  %147 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %149 = call i32 @link_free_heap_page(%struct.TYPE_27__* %147, %struct.TYPE_26__* %148)
  br label %150

150:                                              ; preds = %146, %143, %140
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %151, i32 0, i32 2
  %153 = load %struct.RBasic*, %struct.RBasic** %152, align 8
  %154 = icmp eq %struct.RBasic* %153, null
  br i1 %154, label %155, label %163

155:                                              ; preds = %150
  %156 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %157 = call i64 @is_minor_gc(%struct.TYPE_27__* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %155
  %160 = load i8*, i8** @TRUE, align 8
  %161 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %161, i32 0, i32 1
  store i8* %160, i8** %162, align 8
  br label %167

163:                                              ; preds = %155, %150
  %164 = load i8*, i8** @FALSE, align 8
  %165 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %165, i32 0, i32 1
  store i8* %164, i8** %166, align 8
  br label %167

167:                                              ; preds = %163, %159
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** %169, align 8
  store %struct.TYPE_26__* %170, %struct.TYPE_26__** %7, align 8
  br label %171

171:                                              ; preds = %167, %126
  %172 = load i64, i64* @MRB_HEAP_PAGE_SIZE, align 8
  %173 = load i64, i64* %8, align 8
  %174 = add i64 %173, %172
  store i64 %174, i64* %8, align 8
  %175 = load i64, i64* %11, align 8
  %176 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = sub i64 %178, %175
  store i64 %179, i64* %177, align 8
  %180 = load i64, i64* %11, align 8
  %181 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = sub i64 %183, %180
  store i64 %184, i64* %182, align 8
  br label %18

185:                                              ; preds = %25
  %186 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %187 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %187, i32 0, i32 2
  store %struct.TYPE_26__* %186, %struct.TYPE_26__** %188, align 8
  %189 = load i64, i64* %8, align 8
  ret i64 %189
}

declare dso_local %struct.TYPE_28__* @objects(%struct.TYPE_26__*) #1

declare dso_local i64 @is_minor_gc(%struct.TYPE_27__*) #1

declare dso_local i64 @is_dead(%struct.TYPE_27__*, %struct.TYPE_23__*) #1

declare dso_local i32 @obj_free(i32*, %struct.TYPE_23__*, i8*) #1

declare dso_local i32 @is_generational(%struct.TYPE_27__*) #1

declare dso_local i32 @paint_partial_white(%struct.TYPE_27__*, %struct.TYPE_23__*) #1

declare dso_local i32 @unlink_heap_page(%struct.TYPE_27__*, %struct.TYPE_26__*) #1

declare dso_local i32 @unlink_free_heap_page(%struct.TYPE_27__*, %struct.TYPE_26__*) #1

declare dso_local i32 @mrb_free(i32*, %struct.TYPE_26__*) #1

declare dso_local i32 @link_free_heap_page(%struct.TYPE_27__*, %struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
