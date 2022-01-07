; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_checkout.c_checkout_conflicts_coalesce_renames.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_checkout.c_checkout_conflicts_coalesce_renames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32*, i32* }

@checkout_conflictdata_empty = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @checkout_conflicts_coalesce_renames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkout_conflicts_coalesce_renames(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32* @git_iterator_index(i32 %14)
  store i32* %15, i32** %4, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %124

18:                                               ; preds = %1
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @git_index_name_entrycount(i32* %19)
  store i64 %20, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %21

21:                                               ; preds = %114, %18
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %117

25:                                               ; preds = %21
  %26 = load i32*, i32** %4, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i32* @git_index_name_get_byindex(i32* %26, i64 %27)
  store i32* %28, i32** %5, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @checkout_conflicts_load_byname_entry(%struct.TYPE_9__** %6, %struct.TYPE_9__** %7, %struct.TYPE_9__** %8, %struct.TYPE_8__* %29, i32* %30)
  store i32 %31, i32* %11, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %122

34:                                               ; preds = %25
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %36 = icmp ne %struct.TYPE_9__* %35, null
  br i1 %36, label %37, label %65

37:                                               ; preds = %34
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %40 = icmp ne %struct.TYPE_9__* %38, %39
  br i1 %40, label %41, label %65

41:                                               ; preds = %37
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  store i32* %44, i32** %46, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  store i32* null, i32** %48, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %41
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  br label %56

56:                                               ; preds = %53, %41
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  br label %64

64:                                               ; preds = %61, %56
  br label %65

65:                                               ; preds = %64, %37, %34
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %67 = icmp ne %struct.TYPE_9__* %66, null
  br i1 %67, label %68, label %96

68:                                               ; preds = %65
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %71 = icmp ne %struct.TYPE_9__* %69, %70
  br i1 %71, label %72, label %96

72:                                               ; preds = %68
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 3
  store i32* %75, i32** %77, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 3
  store i32* null, i32** %79, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %72
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  br label %87

87:                                               ; preds = %84, %72
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  br label %95

95:                                               ; preds = %92, %87
  br label %96

96:                                               ; preds = %95, %68, %65
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %98 = icmp ne %struct.TYPE_9__* %97, null
  br i1 %98, label %99, label %113

99:                                               ; preds = %96
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %102 = icmp ne %struct.TYPE_9__* %100, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %99
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %105 = icmp ne %struct.TYPE_9__* %104, null
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %109 = icmp ne %struct.TYPE_9__* %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  store i32 1, i32* %112, align 4
  br label %113

113:                                              ; preds = %110, %106, %103, %99, %96
  br label %114

114:                                              ; preds = %113
  %115 = load i64, i64* %9, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %9, align 8
  br label %21

117:                                              ; preds = %21
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* @checkout_conflictdata_empty, align 4
  %121 = call i32 @git_vector_remove_matching(i32* %119, i32 %120, i32* null)
  br label %122

122:                                              ; preds = %117, %33
  %123 = load i32, i32* %11, align 4
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %122, %17
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i32* @git_iterator_index(i32) #1

declare dso_local i64 @git_index_name_entrycount(i32*) #1

declare dso_local i32* @git_index_name_get_byindex(i32*, i64) #1

declare dso_local i32 @checkout_conflicts_load_byname_entry(%struct.TYPE_9__**, %struct.TYPE_9__**, %struct.TYPE_9__**, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @git_vector_remove_matching(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
