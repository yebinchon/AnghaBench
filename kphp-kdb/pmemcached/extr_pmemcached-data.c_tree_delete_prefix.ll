; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_tree_delete_prefix.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_tree_delete_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.wildcard_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @tree_delete_prefix(%struct.TYPE_10__* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %15 = icmp ne %struct.TYPE_10__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %6, align 8
  br label %125

17:                                               ; preds = %5
  %18 = load i8*, i8** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @abs(i32 %30) #3
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @abs(i32 %32) #3
  %34 = call i64 @min(i32 %31, i32 %33)
  %35 = sub nsw i64 %34, 1
  %36 = call i32 @mystrcmp2(i8* %18, i32 %19, i32 %24, i32 %29, i64 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp sgt i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i32, i32* %12, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %17
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 2
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %43, %17
  %47 = load i32, i32* %12, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %49, %46
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %12, align 4
  %61 = sub nsw i32 0, %60
  %62 = call %struct.TYPE_10__* @tree_delete_prefix(%struct.TYPE_10__* %56, i8* %57, i32 %58, i32 %59, i32 %61)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  store %struct.TYPE_10__* %62, %struct.TYPE_10__** %64, align 8
  br label %65

65:                                               ; preds = %53, %49
  %66 = load i32, i32* %12, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %65
  %69 = load i32, i32* %11, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %11, align 4
  %73 = sub nsw i32 0, %72
  %74 = load i32, i32* %12, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %71, %68
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %11, align 4
  %84 = call %struct.TYPE_10__* @tree_delete_prefix(%struct.TYPE_10__* %79, i8* %80, i32 %81, i32 %82, i32 %83)
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  store %struct.TYPE_10__* %84, %struct.TYPE_10__** %86, align 8
  br label %87

87:                                               ; preds = %76, %71, %65
  %88 = load i32, i32* %12, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %107, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %12, align 4
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = sub nsw i32 0, %96
  %98 = icmp slt i32 %91, %97
  br i1 %98, label %107, label %99

99:                                               ; preds = %90
  %100 = load i32, i32* %12, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp sgt i32 %100, %105
  br i1 %106, label %107, label %123

107:                                              ; preds = %99, %90, %87
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %112, align 8
  %114 = call %struct.TYPE_10__* @tree_merge(%struct.TYPE_10__* %110, %struct.TYPE_10__* %113)
  store %struct.TYPE_10__* %114, %struct.TYPE_10__** %13, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = bitcast %struct.TYPE_9__* %117 to %struct.wildcard_entry*
  %119 = call i32 @free_wildcard_entry(%struct.wildcard_entry* %118)
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %121 = call i32 @free_tree_node(%struct.TYPE_10__* %120)
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %122, %struct.TYPE_10__** %6, align 8
  br label %125

123:                                              ; preds = %99
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %124, %struct.TYPE_10__** %6, align 8
  br label %125

125:                                              ; preds = %123, %107, %16
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  ret %struct.TYPE_10__* %126
}

declare dso_local i32 @mystrcmp2(i8*, i32, i32, i32, i64) #1

declare dso_local i64 @min(i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_10__* @tree_merge(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @free_wildcard_entry(%struct.wildcard_entry*) #1

declare dso_local i32 @free_tree_node(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
