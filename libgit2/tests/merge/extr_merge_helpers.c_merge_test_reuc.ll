; ModuleID = '/home/carl/AnghaBench/libgit2/tests/merge/extr_merge_helpers.c_merge_test_reuc.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/merge/extr_merge_helpers.c_merge_test_reuc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_reuc_entry = type { i64, i64, i64, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64*, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @merge_test_reuc(i32* %0, %struct.merge_reuc_entry* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.merge_reuc_entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.merge_reuc_entry* %1, %struct.merge_reuc_entry** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i64 @git_index_reuc_entrycount(i32* %11)
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %149

16:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %17

17:                                               ; preds = %145, %16
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %148

21:                                               ; preds = %17
  %22 = load i32*, i32** %5, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call %struct.TYPE_3__* @git_index_reuc_get_byindex(i32* %22, i64 %23)
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %9, align 8
  %25 = icmp eq %struct.TYPE_3__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %149

27:                                               ; preds = %21
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.merge_reuc_entry*, %struct.merge_reuc_entry** %6, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds %struct.merge_reuc_entry, %struct.merge_reuc_entry* %31, i64 %32
  %34 = getelementptr inbounds %struct.merge_reuc_entry, %struct.merge_reuc_entry* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @strcmp(i32 %30, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %74, label %38

38:                                               ; preds = %27
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.merge_reuc_entry*, %struct.merge_reuc_entry** %6, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds %struct.merge_reuc_entry, %struct.merge_reuc_entry* %44, i64 %45
  %47 = getelementptr inbounds %struct.merge_reuc_entry, %struct.merge_reuc_entry* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %43, %48
  br i1 %49, label %74, label %50

50:                                               ; preds = %38
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.merge_reuc_entry*, %struct.merge_reuc_entry** %6, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds %struct.merge_reuc_entry, %struct.merge_reuc_entry* %56, i64 %57
  %59 = getelementptr inbounds %struct.merge_reuc_entry, %struct.merge_reuc_entry* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %55, %60
  br i1 %61, label %74, label %62

62:                                               ; preds = %50
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.merge_reuc_entry*, %struct.merge_reuc_entry** %6, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds %struct.merge_reuc_entry, %struct.merge_reuc_entry* %68, i64 %69
  %71 = getelementptr inbounds %struct.merge_reuc_entry, %struct.merge_reuc_entry* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %67, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %62, %50, %38, %27
  store i32 0, i32* %4, align 4
  br label %149

75:                                               ; preds = %62
  %76 = load %struct.merge_reuc_entry*, %struct.merge_reuc_entry** %6, align 8
  %77 = load i64, i64* %8, align 8
  %78 = getelementptr inbounds %struct.merge_reuc_entry, %struct.merge_reuc_entry* %76, i64 %77
  %79 = getelementptr inbounds %struct.merge_reuc_entry, %struct.merge_reuc_entry* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp sgt i64 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %75
  %83 = load %struct.merge_reuc_entry*, %struct.merge_reuc_entry** %6, align 8
  %84 = load i64, i64* %8, align 8
  %85 = getelementptr inbounds %struct.merge_reuc_entry, %struct.merge_reuc_entry* %83, i64 %84
  %86 = getelementptr inbounds %struct.merge_reuc_entry, %struct.merge_reuc_entry* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @git_oid_fromstr(i32* %10, i32 %87)
  %89 = call i32 @cl_git_pass(i32 %88)
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = call i64 @git_oid_cmp(i32* %93, i32* %10)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %82
  store i32 0, i32* %4, align 4
  br label %149

97:                                               ; preds = %82
  br label %98

98:                                               ; preds = %97, %75
  %99 = load %struct.merge_reuc_entry*, %struct.merge_reuc_entry** %6, align 8
  %100 = load i64, i64* %8, align 8
  %101 = getelementptr inbounds %struct.merge_reuc_entry, %struct.merge_reuc_entry* %99, i64 %100
  %102 = getelementptr inbounds %struct.merge_reuc_entry, %struct.merge_reuc_entry* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp sgt i64 %103, 0
  br i1 %104, label %105, label %121

105:                                              ; preds = %98
  %106 = load %struct.merge_reuc_entry*, %struct.merge_reuc_entry** %6, align 8
  %107 = load i64, i64* %8, align 8
  %108 = getelementptr inbounds %struct.merge_reuc_entry, %struct.merge_reuc_entry* %106, i64 %107
  %109 = getelementptr inbounds %struct.merge_reuc_entry, %struct.merge_reuc_entry* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @git_oid_fromstr(i32* %10, i32 %110)
  %112 = call i32 @cl_git_pass(i32 %111)
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = call i64 @git_oid_cmp(i32* %116, i32* %10)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %105
  store i32 0, i32* %4, align 4
  br label %149

120:                                              ; preds = %105
  br label %121

121:                                              ; preds = %120, %98
  %122 = load %struct.merge_reuc_entry*, %struct.merge_reuc_entry** %6, align 8
  %123 = load i64, i64* %8, align 8
  %124 = getelementptr inbounds %struct.merge_reuc_entry, %struct.merge_reuc_entry* %122, i64 %123
  %125 = getelementptr inbounds %struct.merge_reuc_entry, %struct.merge_reuc_entry* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = icmp sgt i64 %126, 0
  br i1 %127, label %128, label %144

128:                                              ; preds = %121
  %129 = load %struct.merge_reuc_entry*, %struct.merge_reuc_entry** %6, align 8
  %130 = load i64, i64* %8, align 8
  %131 = getelementptr inbounds %struct.merge_reuc_entry, %struct.merge_reuc_entry* %129, i64 %130
  %132 = getelementptr inbounds %struct.merge_reuc_entry, %struct.merge_reuc_entry* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @git_oid_fromstr(i32* %10, i32 %133)
  %135 = call i32 @cl_git_pass(i32 %134)
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 2
  %140 = call i64 @git_oid_cmp(i32* %139, i32* %10)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %128
  store i32 0, i32* %4, align 4
  br label %149

143:                                              ; preds = %128
  br label %144

144:                                              ; preds = %143, %121
  br label %145

145:                                              ; preds = %144
  %146 = load i64, i64* %8, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %8, align 8
  br label %17

148:                                              ; preds = %17
  store i32 1, i32* %4, align 4
  br label %149

149:                                              ; preds = %148, %142, %119, %96, %74, %26, %15
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i64 @git_index_reuc_entrycount(i32*) #1

declare dso_local %struct.TYPE_3__* @git_index_reuc_get_byindex(i32*, i64) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i64 @git_oid_cmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
