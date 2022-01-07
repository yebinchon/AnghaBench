; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_index.c_index_insert.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_index.c_index_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, i64, i32, i32 }
%struct.entry_internal = type { i64 }

@GIT_INDEX_ENTRY_UPTODATE = common dso_local global i32 0, align 4
@GIT_FILEMODE_COMMIT = common dso_local global i32 0, align 4
@index_no_dups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_24__**, i32, i32, i32, i32)* @index_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @index_insert(%struct.TYPE_25__* %0, %struct.TYPE_24__** %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_24__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca %struct.TYPE_24__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %7, align 8
  store %struct.TYPE_24__** %1, %struct.TYPE_24__*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %20 = icmp ne %struct.TYPE_25__* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %8, align 8
  %23 = icmp ne %struct.TYPE_24__** %22, null
  br label %24

24:                                               ; preds = %21, %6
  %25 = phi i1 [ false, %6 ], [ %23, %21 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %8, align 8
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  store %struct.TYPE_24__* %29, %struct.TYPE_24__** %15, align 8
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %31 = bitcast %struct.TYPE_24__* %30 to %struct.entry_internal*
  %32 = getelementptr inbounds %struct.entry_internal, %struct.entry_internal* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %16, align 8
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %35 = load i64, i64* %16, align 8
  %36 = call i32 @index_entry_adjust_namemask(%struct.TYPE_24__* %34, i64 %35)
  %37 = load i32, i32* @GIT_INDEX_ENTRY_UPTODATE, align 4
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 1
  %44 = call i32 @git_vector_sort(i32* %43)
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %47 = call i32 @index_existing_and_best(%struct.TYPE_24__** %13, i64* %17, %struct.TYPE_24__** %14, %struct.TYPE_25__* %45, %struct.TYPE_24__* %46)
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %24
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @git_index__create_mode(i32 %53)
  br label %62

55:                                               ; preds = %24
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @index_merge_mode(%struct.TYPE_25__* %56, %struct.TYPE_24__* %57, i32 %60)
  br label %62

62:                                               ; preds = %55, %50
  %63 = phi i32 [ %54, %50 ], [ %61, %55 ]
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %62
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %72 = call i32 @canonicalize_directory_path(%struct.TYPE_25__* %69, %struct.TYPE_24__* %70, %struct.TYPE_24__* %71)
  store i32 %72, i32* %18, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %158

75:                                               ; preds = %68, %62
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %103, label %78

78:                                               ; preds = %75
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %80 = call i64 @INDEX_OWNER(%struct.TYPE_25__* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %103

82:                                               ; preds = %78
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @GIT_FILEMODE_COMMIT, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* @GIT_FILEMODE_COMMIT, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %82
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %92 = call i64 @INDEX_OWNER(%struct.TYPE_25__* %91)
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @git_object__type_from_filemode(i32 %97)
  %99 = call i32 @git_object__is_valid(i64 %92, i32* %94, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %90
  store i32 -1, i32* %18, align 4
  br label %158

102:                                              ; preds = %90
  br label %103

103:                                              ; preds = %102, %82, %78, %75
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %106 = load i64, i64* %17, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @check_file_directory_collision(%struct.TYPE_25__* %104, %struct.TYPE_24__* %105, i64 %106, i32 %107)
  store i32 %108, i32* %18, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  br label %158

111:                                              ; preds = %103
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %113 = icmp ne %struct.TYPE_24__* %112, null
  br i1 %113, label %114, label %142

114:                                              ; preds = %111
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %137

117:                                              ; preds = %114
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %120 = call i32 @index_entry_cpy(%struct.TYPE_24__* %118, %struct.TYPE_24__* %119)
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %136

123:                                              ; preds = %117
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = inttoptr i64 %126 to i8*
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @strlen(i64 %133)
  %135 = call i32 @memcpy(i8* %127, i64 %130, i32 %134)
  br label %136

136:                                              ; preds = %123, %117
  br label %137

137:                                              ; preds = %136, %114
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %139 = call i32 @index_entry_free(%struct.TYPE_24__* %138)
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %141 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %8, align 8
  store %struct.TYPE_24__* %140, %struct.TYPE_24__** %141, align 8
  br label %155

142:                                              ; preds = %111
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %146 = load i32, i32* @index_no_dups, align 4
  %147 = call i32 @git_vector_insert_sorted(i32* %144, %struct.TYPE_24__* %145, i32 %146)
  store i32 %147, i32* %18, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  br label %158

150:                                              ; preds = %142
  %151 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %153 = load i32, i32* %18, align 4
  %154 = call i32 @INSERT_IN_MAP(%struct.TYPE_25__* %151, %struct.TYPE_24__* %152, i32 %153)
  br label %155

155:                                              ; preds = %150, %137
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 0
  store i32 1, i32* %157, align 4
  br label %158

158:                                              ; preds = %155, %149, %110, %101, %74
  %159 = load i32, i32* %18, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %158
  %162 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %8, align 8
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %162, align 8
  %164 = call i32 @index_entry_free(%struct.TYPE_24__* %163)
  %165 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %8, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %165, align 8
  br label %166

166:                                              ; preds = %161, %158
  %167 = load i32, i32* %18, align 4
  ret i32 %167
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @index_entry_adjust_namemask(%struct.TYPE_24__*, i64) #1

declare dso_local i32 @git_vector_sort(i32*) #1

declare dso_local i32 @index_existing_and_best(%struct.TYPE_24__**, i64*, %struct.TYPE_24__**, %struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i32 @git_index__create_mode(i32) #1

declare dso_local i32 @index_merge_mode(%struct.TYPE_25__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @canonicalize_directory_path(%struct.TYPE_25__*, %struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i64 @INDEX_OWNER(%struct.TYPE_25__*) #1

declare dso_local i32 @git_object__is_valid(i64, i32*, i32) #1

declare dso_local i32 @git_object__type_from_filemode(i32) #1

declare dso_local i32 @check_file_directory_collision(%struct.TYPE_25__*, %struct.TYPE_24__*, i64, i32) #1

declare dso_local i32 @index_entry_cpy(%struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @index_entry_free(%struct.TYPE_24__*) #1

declare dso_local i32 @git_vector_insert_sorted(i32*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @INSERT_IN_MAP(%struct.TYPE_25__*, %struct.TYPE_24__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
