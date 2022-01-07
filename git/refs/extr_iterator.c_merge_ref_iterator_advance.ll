; ModuleID = '/home/carl/AnghaBench/git/refs/extr_iterator.c_merge_ref_iterator_advance.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_iterator.c_merge_ref_iterator_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_iterator = type { i32, i32, i32 }
%struct.merge_ref_iterator = type { i32 (%struct.ref_iterator*, %struct.ref_iterator*, i32)*, %struct.ref_iterator**, %struct.TYPE_2__, %struct.ref_iterator*, %struct.ref_iterator*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ITER_OK = common dso_local global i32 0, align 4
@ITER_ERROR = common dso_local global i32 0, align 4
@ITER_SELECT_DONE = common dso_local global i32 0, align 4
@ITER_SELECT_ERROR = common dso_local global i32 0, align 4
@ITER_CURRENT_SELECTION_MASK = common dso_local global i32 0, align 4
@ITER_SKIP_SECONDARY = common dso_local global i32 0, align 4
@ITER_YIELD_CURRENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_iterator*)* @merge_ref_iterator_advance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge_ref_iterator_advance(%struct.ref_iterator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_iterator*, align 8
  %4 = alloca %struct.merge_ref_iterator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ref_iterator**, align 8
  %7 = alloca i32, align 4
  store %struct.ref_iterator* %0, %struct.ref_iterator** %3, align 8
  %8 = load %struct.ref_iterator*, %struct.ref_iterator** %3, align 8
  %9 = bitcast %struct.ref_iterator* %8 to %struct.merge_ref_iterator*
  store %struct.merge_ref_iterator* %9, %struct.merge_ref_iterator** %4, align 8
  %10 = load %struct.merge_ref_iterator*, %struct.merge_ref_iterator** %4, align 8
  %11 = getelementptr inbounds %struct.merge_ref_iterator, %struct.merge_ref_iterator* %10, i32 0, i32 1
  %12 = load %struct.ref_iterator**, %struct.ref_iterator*** %11, align 8
  %13 = icmp ne %struct.ref_iterator** %12, null
  br i1 %13, label %45, label %14

14:                                               ; preds = %1
  %15 = load %struct.merge_ref_iterator*, %struct.merge_ref_iterator** %4, align 8
  %16 = getelementptr inbounds %struct.merge_ref_iterator, %struct.merge_ref_iterator* %15, i32 0, i32 3
  %17 = load %struct.ref_iterator*, %struct.ref_iterator** %16, align 8
  %18 = call i32 @ref_iterator_advance(%struct.ref_iterator* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @ITER_OK, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %14
  %22 = load %struct.merge_ref_iterator*, %struct.merge_ref_iterator** %4, align 8
  %23 = getelementptr inbounds %struct.merge_ref_iterator, %struct.merge_ref_iterator* %22, i32 0, i32 3
  store %struct.ref_iterator* null, %struct.ref_iterator** %23, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @ITER_ERROR, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %166

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %14
  %30 = load %struct.merge_ref_iterator*, %struct.merge_ref_iterator** %4, align 8
  %31 = getelementptr inbounds %struct.merge_ref_iterator, %struct.merge_ref_iterator* %30, i32 0, i32 4
  %32 = load %struct.ref_iterator*, %struct.ref_iterator** %31, align 8
  %33 = call i32 @ref_iterator_advance(%struct.ref_iterator* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* @ITER_OK, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load %struct.merge_ref_iterator*, %struct.merge_ref_iterator** %4, align 8
  %38 = getelementptr inbounds %struct.merge_ref_iterator, %struct.merge_ref_iterator* %37, i32 0, i32 4
  store %struct.ref_iterator* null, %struct.ref_iterator** %38, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @ITER_ERROR, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %166

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %29
  br label %63

45:                                               ; preds = %1
  %46 = load %struct.merge_ref_iterator*, %struct.merge_ref_iterator** %4, align 8
  %47 = getelementptr inbounds %struct.merge_ref_iterator, %struct.merge_ref_iterator* %46, i32 0, i32 1
  %48 = load %struct.ref_iterator**, %struct.ref_iterator*** %47, align 8
  %49 = load %struct.ref_iterator*, %struct.ref_iterator** %48, align 8
  %50 = call i32 @ref_iterator_advance(%struct.ref_iterator* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* @ITER_OK, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %45
  %54 = load %struct.merge_ref_iterator*, %struct.merge_ref_iterator** %4, align 8
  %55 = getelementptr inbounds %struct.merge_ref_iterator, %struct.merge_ref_iterator* %54, i32 0, i32 1
  %56 = load %struct.ref_iterator**, %struct.ref_iterator*** %55, align 8
  store %struct.ref_iterator* null, %struct.ref_iterator** %56, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @ITER_ERROR, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %166

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %45
  br label %63

63:                                               ; preds = %62, %44
  br label %64

64:                                               ; preds = %63, %165
  %65 = load %struct.merge_ref_iterator*, %struct.merge_ref_iterator** %4, align 8
  %66 = getelementptr inbounds %struct.merge_ref_iterator, %struct.merge_ref_iterator* %65, i32 0, i32 0
  %67 = load i32 (%struct.ref_iterator*, %struct.ref_iterator*, i32)*, i32 (%struct.ref_iterator*, %struct.ref_iterator*, i32)** %66, align 8
  %68 = load %struct.merge_ref_iterator*, %struct.merge_ref_iterator** %4, align 8
  %69 = getelementptr inbounds %struct.merge_ref_iterator, %struct.merge_ref_iterator* %68, i32 0, i32 3
  %70 = load %struct.ref_iterator*, %struct.ref_iterator** %69, align 8
  %71 = load %struct.merge_ref_iterator*, %struct.merge_ref_iterator** %4, align 8
  %72 = getelementptr inbounds %struct.merge_ref_iterator, %struct.merge_ref_iterator* %71, i32 0, i32 4
  %73 = load %struct.ref_iterator*, %struct.ref_iterator** %72, align 8
  %74 = load %struct.merge_ref_iterator*, %struct.merge_ref_iterator** %4, align 8
  %75 = getelementptr inbounds %struct.merge_ref_iterator, %struct.merge_ref_iterator* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = call i32 %67(%struct.ref_iterator* %70, %struct.ref_iterator* %73, i32 %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @ITER_SELECT_DONE, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %64
  %82 = load %struct.ref_iterator*, %struct.ref_iterator** %3, align 8
  %83 = call i32 @ref_iterator_abort(%struct.ref_iterator* %82)
  store i32 %83, i32* %2, align 4
  br label %170

84:                                               ; preds = %64
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @ITER_SELECT_ERROR, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load %struct.ref_iterator*, %struct.ref_iterator** %3, align 8
  %90 = call i32 @ref_iterator_abort(%struct.ref_iterator* %89)
  %91 = load i32, i32* @ITER_ERROR, align 4
  store i32 %91, i32* %2, align 4
  br label %170

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @ITER_CURRENT_SELECTION_MASK, align 4
  %96 = and i32 %94, %95
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load %struct.merge_ref_iterator*, %struct.merge_ref_iterator** %4, align 8
  %100 = getelementptr inbounds %struct.merge_ref_iterator, %struct.merge_ref_iterator* %99, i32 0, i32 3
  %101 = load %struct.merge_ref_iterator*, %struct.merge_ref_iterator** %4, align 8
  %102 = getelementptr inbounds %struct.merge_ref_iterator, %struct.merge_ref_iterator* %101, i32 0, i32 1
  store %struct.ref_iterator** %100, %struct.ref_iterator*** %102, align 8
  %103 = load %struct.merge_ref_iterator*, %struct.merge_ref_iterator** %4, align 8
  %104 = getelementptr inbounds %struct.merge_ref_iterator, %struct.merge_ref_iterator* %103, i32 0, i32 4
  store %struct.ref_iterator** %104, %struct.ref_iterator*** %6, align 8
  br label %112

105:                                              ; preds = %93
  %106 = load %struct.merge_ref_iterator*, %struct.merge_ref_iterator** %4, align 8
  %107 = getelementptr inbounds %struct.merge_ref_iterator, %struct.merge_ref_iterator* %106, i32 0, i32 4
  %108 = load %struct.merge_ref_iterator*, %struct.merge_ref_iterator** %4, align 8
  %109 = getelementptr inbounds %struct.merge_ref_iterator, %struct.merge_ref_iterator* %108, i32 0, i32 1
  store %struct.ref_iterator** %107, %struct.ref_iterator*** %109, align 8
  %110 = load %struct.merge_ref_iterator*, %struct.merge_ref_iterator** %4, align 8
  %111 = getelementptr inbounds %struct.merge_ref_iterator, %struct.merge_ref_iterator* %110, i32 0, i32 3
  store %struct.ref_iterator** %111, %struct.ref_iterator*** %6, align 8
  br label %112

112:                                              ; preds = %105, %98
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @ITER_SKIP_SECONDARY, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %131

117:                                              ; preds = %112
  %118 = load %struct.ref_iterator**, %struct.ref_iterator*** %6, align 8
  %119 = load %struct.ref_iterator*, %struct.ref_iterator** %118, align 8
  %120 = call i32 @ref_iterator_advance(%struct.ref_iterator* %119)
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* @ITER_OK, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %117
  %124 = load %struct.ref_iterator**, %struct.ref_iterator*** %6, align 8
  store %struct.ref_iterator* null, %struct.ref_iterator** %124, align 8
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* @ITER_ERROR, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  br label %166

129:                                              ; preds = %123
  br label %130

130:                                              ; preds = %129, %117
  br label %131

131:                                              ; preds = %130, %112
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @ITER_YIELD_CURRENT, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %165

136:                                              ; preds = %131
  %137 = load %struct.merge_ref_iterator*, %struct.merge_ref_iterator** %4, align 8
  %138 = getelementptr inbounds %struct.merge_ref_iterator, %struct.merge_ref_iterator* %137, i32 0, i32 1
  %139 = load %struct.ref_iterator**, %struct.ref_iterator*** %138, align 8
  %140 = load %struct.ref_iterator*, %struct.ref_iterator** %139, align 8
  %141 = getelementptr inbounds %struct.ref_iterator, %struct.ref_iterator* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.merge_ref_iterator*, %struct.merge_ref_iterator** %4, align 8
  %144 = getelementptr inbounds %struct.merge_ref_iterator, %struct.merge_ref_iterator* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 2
  store i32 %142, i32* %145, align 8
  %146 = load %struct.merge_ref_iterator*, %struct.merge_ref_iterator** %4, align 8
  %147 = getelementptr inbounds %struct.merge_ref_iterator, %struct.merge_ref_iterator* %146, i32 0, i32 1
  %148 = load %struct.ref_iterator**, %struct.ref_iterator*** %147, align 8
  %149 = load %struct.ref_iterator*, %struct.ref_iterator** %148, align 8
  %150 = getelementptr inbounds %struct.ref_iterator, %struct.ref_iterator* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.merge_ref_iterator*, %struct.merge_ref_iterator** %4, align 8
  %153 = getelementptr inbounds %struct.merge_ref_iterator, %struct.merge_ref_iterator* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 1
  store i32 %151, i32* %154, align 4
  %155 = load %struct.merge_ref_iterator*, %struct.merge_ref_iterator** %4, align 8
  %156 = getelementptr inbounds %struct.merge_ref_iterator, %struct.merge_ref_iterator* %155, i32 0, i32 1
  %157 = load %struct.ref_iterator**, %struct.ref_iterator*** %156, align 8
  %158 = load %struct.ref_iterator*, %struct.ref_iterator** %157, align 8
  %159 = getelementptr inbounds %struct.ref_iterator, %struct.ref_iterator* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.merge_ref_iterator*, %struct.merge_ref_iterator** %4, align 8
  %162 = getelementptr inbounds %struct.merge_ref_iterator, %struct.merge_ref_iterator* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  store i32 %160, i32* %163, align 8
  %164 = load i32, i32* @ITER_OK, align 4
  store i32 %164, i32* %2, align 4
  br label %170

165:                                              ; preds = %131
  br label %64

166:                                              ; preds = %128, %60, %42, %27
  %167 = load %struct.ref_iterator*, %struct.ref_iterator** %3, align 8
  %168 = call i32 @ref_iterator_abort(%struct.ref_iterator* %167)
  %169 = load i32, i32* @ITER_ERROR, align 4
  store i32 %169, i32* %2, align 4
  br label %170

170:                                              ; preds = %166, %136, %88, %81
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local i32 @ref_iterator_advance(%struct.ref_iterator*) #1

declare dso_local i32 @ref_iterator_abort(%struct.ref_iterator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
