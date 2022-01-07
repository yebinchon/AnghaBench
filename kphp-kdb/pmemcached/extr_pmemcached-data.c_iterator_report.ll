; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_iterator_report.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_iterator_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_entry = type { i32, i8*, i32 }
%struct.hash_entry = type { i32, i8* }

@.str = private unnamed_addr constant [48 x i8] c"iterator_report: index_entry %p, hash_entry %p\0A\00", align 1
@iterator_index_entry = common dso_local global %struct.index_entry* null, align 8
@iterator_key = common dso_local global i32 0, align 4
@iterator_prefix_len = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iterator_report(%struct.hash_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hash_entry*, align 8
  %4 = alloca %struct.index_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hash_entry* %0, %struct.hash_entry** %3, align 8
  %10 = load %struct.index_entry*, %struct.index_entry** @iterator_index_entry, align 8
  %11 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %12 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), %struct.index_entry* %10, %struct.hash_entry* %11)
  %13 = load %struct.index_entry*, %struct.index_entry** @iterator_index_entry, align 8
  store %struct.index_entry* %13, %struct.index_entry** %4, align 8
  store i8* null, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %14 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %15 = icmp ne %struct.hash_entry* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %18 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  %20 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %21 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %5, align 8
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %16, %1
  br label %24

24:                                               ; preds = %23, %106
  %25 = load %struct.index_entry*, %struct.index_entry** %4, align 8
  %26 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 -1, i32* %8, align 4
  br label %45

30:                                               ; preds = %24
  %31 = load i8*, i8** %5, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  store i32 1, i32* %8, align 4
  br label %44

34:                                               ; preds = %30
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.index_entry*, %struct.index_entry** %4, align 8
  %38 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.index_entry*, %struct.index_entry** %4, align 8
  %41 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @mystrcmp(i8* %35, i32 %36, i8* %39, i32 %42)
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %34, %33
  br label %45

45:                                               ; preds = %44, %29
  %46 = load i32, i32* %8, align 4
  %47 = icmp sle i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %107

49:                                               ; preds = %45
  %50 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %51 = icmp ne %struct.hash_entry* %50, null
  br i1 %51, label %75, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* @iterator_key, align 4
  %54 = load i32, i32* @iterator_prefix_len, align 4
  %55 = load %struct.index_entry*, %struct.index_entry** %4, align 8
  %56 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.index_entry*, %struct.index_entry** %4, align 8
  %59 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @mystrcmp2(i32 %53, i32 %54, i8* %57, i32 %60, i32 0)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp sle i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %52
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @iterator_prefix_len, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp sge i32 %69, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %148

74:                                               ; preds = %68, %52
  br label %75

75:                                               ; preds = %74, %49
  %76 = load %struct.index_entry*, %struct.index_entry** %4, align 8
  %77 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.index_entry*, %struct.index_entry** %4, align 8
  %80 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = icmp sle i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  br label %87

86:                                               ; preds = %75
  br label %87

87:                                               ; preds = %86, %84
  %88 = phi %struct.hash_entry* [ %85, %84 ], [ null, %86 ]
  %89 = load i32, i32* %8, align 4
  %90 = icmp sge i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load %struct.index_entry*, %struct.index_entry** %4, align 8
  br label %94

93:                                               ; preds = %87
  br label %94

94:                                               ; preds = %93, %91
  %95 = phi %struct.index_entry* [ %92, %91 ], [ null, %93 ]
  %96 = call i32 @cache_load_local(i8* %78, i32 %81, %struct.hash_entry* %88, %struct.index_entry* %95)
  %97 = call i64 (...) @wildcard_report()
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  store i32 -1, i32* %2, align 4
  br label %148

100:                                              ; preds = %94
  %101 = load %struct.index_entry*, %struct.index_entry** %4, align 8
  %102 = call %struct.index_entry* @index_entry_next(%struct.index_entry* %101)
  store %struct.index_entry* %102, %struct.index_entry** %4, align 8
  %103 = load %struct.index_entry*, %struct.index_entry** %4, align 8
  %104 = icmp ne %struct.index_entry* %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %100
  store i32 -2, i32* %2, align 4
  br label %148

106:                                              ; preds = %100
  br label %24

107:                                              ; preds = %48
  %108 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %109 = icmp ne %struct.hash_entry* %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %107
  store i32 0, i32* %2, align 4
  br label %148

111:                                              ; preds = %107
  %112 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %113 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %116 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = icmp sle i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %111
  %121 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  br label %123

122:                                              ; preds = %111
  br label %123

123:                                              ; preds = %122, %120
  %124 = phi %struct.hash_entry* [ %121, %120 ], [ null, %122 ]
  %125 = load i32, i32* %8, align 4
  %126 = icmp sge i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load %struct.index_entry*, %struct.index_entry** %4, align 8
  br label %130

129:                                              ; preds = %123
  br label %130

130:                                              ; preds = %129, %127
  %131 = phi %struct.index_entry* [ %128, %127 ], [ null, %129 ]
  %132 = call i32 @cache_load_local(i8* %114, i32 %117, %struct.hash_entry* %124, %struct.index_entry* %131)
  %133 = call i64 (...) @wildcard_report()
  %134 = icmp slt i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  store i32 -1, i32* %2, align 4
  br label %148

136:                                              ; preds = %130
  %137 = load i32, i32* %8, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %136
  %140 = load %struct.index_entry*, %struct.index_entry** %4, align 8
  %141 = call %struct.index_entry* @index_entry_next(%struct.index_entry* %140)
  store %struct.index_entry* %141, %struct.index_entry** %4, align 8
  %142 = load %struct.index_entry*, %struct.index_entry** %4, align 8
  %143 = icmp ne %struct.index_entry* %142, null
  br i1 %143, label %145, label %144

144:                                              ; preds = %139
  store i32 -2, i32* %2, align 4
  br label %148

145:                                              ; preds = %139
  br label %146

146:                                              ; preds = %145, %136
  %147 = load %struct.index_entry*, %struct.index_entry** %4, align 8
  store %struct.index_entry* %147, %struct.index_entry** @iterator_index_entry, align 8
  store i32 0, i32* %2, align 4
  br label %148

148:                                              ; preds = %146, %144, %135, %110, %105, %99, %73
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local i32 @vkprintf(i32, i8*, %struct.index_entry*, %struct.hash_entry*) #1

declare dso_local i32 @mystrcmp(i8*, i32, i8*, i32) #1

declare dso_local i32 @mystrcmp2(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cache_load_local(i8*, i32, %struct.hash_entry*, %struct.index_entry*) #1

declare dso_local i64 @wildcard_report(...) #1

declare dso_local %struct.index_entry* @index_entry_next(%struct.index_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
