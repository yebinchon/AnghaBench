; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_tl_tree_eq_array.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_tl_tree_eq_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_tree = type { i32 }
%struct.tl_tree_array = type { i32, %struct.TYPE_5__**, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.tl_tree*, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i64 (i8*)*, i32 (%struct.tl_tree*, %struct.tl_tree*)* }

@NODE_TYPE_ARRAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_tree_eq_array(%struct.tl_tree* %0, %struct.tl_tree* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tl_tree*, align 8
  %5 = alloca %struct.tl_tree*, align 8
  %6 = alloca %struct.tl_tree_array*, align 8
  %7 = alloca %struct.tl_tree_array*, align 8
  %8 = alloca i32, align 4
  store %struct.tl_tree* %0, %struct.tl_tree** %4, align 8
  store %struct.tl_tree* %1, %struct.tl_tree** %5, align 8
  %9 = load %struct.tl_tree*, %struct.tl_tree** %5, align 8
  %10 = call %struct.TYPE_6__* @TL_TREE_METHODS(%struct.tl_tree* %9)
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64 (i8*)*, i64 (i8*)** %11, align 8
  %13 = load %struct.tl_tree*, %struct.tl_tree** %5, align 8
  %14 = bitcast %struct.tl_tree* %13 to i8*
  %15 = call i64 %12(i8* %14)
  %16 = load i64, i64* @NODE_TYPE_ARRAY, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %150

19:                                               ; preds = %2
  %20 = load %struct.tl_tree*, %struct.tl_tree** %4, align 8
  %21 = bitcast %struct.tl_tree* %20 to i8*
  %22 = bitcast i8* %21 to %struct.tl_tree_array*
  store %struct.tl_tree_array* %22, %struct.tl_tree_array** %6, align 8
  %23 = load %struct.tl_tree*, %struct.tl_tree** %5, align 8
  %24 = bitcast %struct.tl_tree* %23 to i8*
  %25 = bitcast i8* %24 to %struct.tl_tree_array*
  store %struct.tl_tree_array* %25, %struct.tl_tree_array** %7, align 8
  %26 = load %struct.tl_tree_array*, %struct.tl_tree_array** %6, align 8
  %27 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.tl_tree_array*, %struct.tl_tree_array** %7, align 8
  %31 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %29, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %150

36:                                               ; preds = %19
  %37 = load %struct.tl_tree_array*, %struct.tl_tree_array** %6, align 8
  %38 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.tl_tree_array*, %struct.tl_tree_array** %7, align 8
  %41 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %150

45:                                               ; preds = %36
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %146, %45
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.tl_tree_array*, %struct.tl_tree_array** %6, align 8
  %49 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %149

52:                                               ; preds = %46
  %53 = load %struct.tl_tree_array*, %struct.tl_tree_array** %6, align 8
  %54 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %55, i64 %57
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %76, label %63

63:                                               ; preds = %52
  %64 = load %struct.tl_tree_array*, %struct.tl_tree_array** %7, align 8
  %65 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %64, i32 0, i32 1
  %66 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %66, i64 %68
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %150

75:                                               ; preds = %63
  br label %111

76:                                               ; preds = %52
  %77 = load %struct.tl_tree_array*, %struct.tl_tree_array** %7, align 8
  %78 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %77, i32 0, i32 1
  %79 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %79, i64 %81
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  br label %150

88:                                               ; preds = %76
  %89 = load %struct.tl_tree_array*, %struct.tl_tree_array** %6, align 8
  %90 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %89, i32 0, i32 1
  %91 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %91, i64 %93
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.tl_tree_array*, %struct.tl_tree_array** %7, align 8
  %99 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %98, i32 0, i32 1
  %100 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %100, i64 %102
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @strcmp(i64 %97, i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %88
  store i32 0, i32* %3, align 4
  br label %150

110:                                              ; preds = %88
  br label %111

111:                                              ; preds = %110, %75
  %112 = load %struct.tl_tree_array*, %struct.tl_tree_array** %6, align 8
  %113 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %112, i32 0, i32 1
  %114 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %114, i64 %116
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load %struct.tl_tree*, %struct.tl_tree** %119, align 8
  %121 = call %struct.TYPE_6__* @TL_TREE_METHODS(%struct.tl_tree* %120)
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i32 (%struct.tl_tree*, %struct.tl_tree*)*, i32 (%struct.tl_tree*, %struct.tl_tree*)** %122, align 8
  %124 = load %struct.tl_tree_array*, %struct.tl_tree_array** %6, align 8
  %125 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %124, i32 0, i32 1
  %126 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %126, i64 %128
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load %struct.tl_tree*, %struct.tl_tree** %131, align 8
  %133 = load %struct.tl_tree_array*, %struct.tl_tree_array** %7, align 8
  %134 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %133, i32 0, i32 1
  %135 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %134, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %135, i64 %137
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load %struct.tl_tree*, %struct.tl_tree** %140, align 8
  %142 = call i32 %123(%struct.tl_tree* %132, %struct.tl_tree* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %111
  store i32 0, i32* %3, align 4
  br label %150

145:                                              ; preds = %111
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %8, align 4
  br label %46

149:                                              ; preds = %46
  store i32 1, i32* %3, align 4
  br label %150

150:                                              ; preds = %149, %144, %109, %87, %74, %44, %35, %18
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local %struct.TYPE_6__* @TL_TREE_METHODS(%struct.tl_tree*) #1

declare dso_local i64 @strcmp(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
