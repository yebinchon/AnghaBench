; ModuleID = '/home/carl/AnghaBench/git/extr_unpack-trees.c_verify_clean_subdirectory.c'
source_filename = "/home/carl/AnghaBench/git/extr_unpack-trees.c_verify_clean_subdirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i8*, i32, i32 }
%struct.unpack_trees_options = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, %struct.cache_entry** }
%struct.TYPE_3__ = type { i32 }
%struct.dir_struct = type { i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@CE_REMOVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%.*s/\00", align 1
@ERROR_NOT_UPTODATE_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_entry*, %struct.unpack_trees_options*)* @verify_clean_subdirectory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_clean_subdirectory(%struct.cache_entry* %0, %struct.unpack_trees_options* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache_entry*, align 8
  %5 = alloca %struct.unpack_trees_options*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dir_struct, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.object_id, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cache_entry*, align 8
  %14 = alloca i32, align 4
  store %struct.cache_entry* %0, %struct.cache_entry** %4, align 8
  store %struct.unpack_trees_options* %1, %struct.unpack_trees_options** %5, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %16 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @S_ISGITLINK(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %2
  %21 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %22 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @resolve_gitlink_ref(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.object_id* %11)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %20
  %28 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %29 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %28, i32 0, i32 1
  %30 = call i64 @oideq(%struct.object_id* %11, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %160

33:                                               ; preds = %27, %20
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %39

37:                                               ; preds = %33
  %38 = call i32* @oid_to_hex(%struct.object_id* %11)
  br label %39

39:                                               ; preds = %37, %36
  %40 = phi i32* [ null, %36 ], [ %38, %37 ]
  %41 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %42 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %43 = call i32 @verify_clean_submodule(i32* %40, %struct.cache_entry* %41, %struct.unpack_trees_options* %42)
  store i32 %43, i32* %3, align 4
  br label %160

44:                                               ; preds = %2
  %45 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %46 = call i32 @ce_namelen(%struct.cache_entry* %45)
  store i32 %46, i32* %6, align 4
  %47 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %48 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %49 = call i32 @locate_in_src_index(%struct.cache_entry* %47, %struct.unpack_trees_options* %48)
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %118, %44
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %53 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %51, %56
  br i1 %57, label %58, label %121

58:                                               ; preds = %50
  %59 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %60 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load %struct.cache_entry**, %struct.cache_entry*** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %63, i64 %65
  %67 = load %struct.cache_entry*, %struct.cache_entry** %66, align 8
  store %struct.cache_entry* %67, %struct.cache_entry** %13, align 8
  %68 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %69 = call i32 @ce_namelen(%struct.cache_entry* %68)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %93, label %73

73:                                               ; preds = %58
  %74 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %75 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %78 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i64 @strncmp(i8* %76, i8* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %73
  %84 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %85 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 47
  br i1 %92, label %93, label %94

93:                                               ; preds = %83, %73, %58
  br label %121

94:                                               ; preds = %83
  %95 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %96 = call i32 @ce_stage(%struct.cache_entry* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %115, label %98

98:                                               ; preds = %94
  %99 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %100 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %101 = call i64 @verify_uptodate(%struct.cache_entry* %99, %struct.unpack_trees_options* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  store i32 -1, i32* %3, align 4
  br label %160

104:                                              ; preds = %98
  %105 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %106 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %107 = load i32, i32* @CE_REMOVE, align 4
  %108 = call i32 @add_entry(%struct.unpack_trees_options* %105, %struct.cache_entry* %106, i32 %107, i32 0)
  %109 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %110 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %111 = call i32 @invalidate_ce_path(%struct.cache_entry* %109, %struct.unpack_trees_options* %110)
  %112 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %113 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %114 = call i32 @mark_ce_used(%struct.cache_entry* %112, %struct.unpack_trees_options* %113)
  br label %115

115:                                              ; preds = %104, %94
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %10, align 4
  br label %118

118:                                              ; preds = %115
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %7, align 4
  br label %50

121:                                              ; preds = %93, %50
  %122 = load i32, i32* %6, align 4
  %123 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %124 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = call i8* @xstrfmt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %122, i8* %125)
  store i8* %126, i8** %9, align 8
  %127 = call i32 @memset(%struct.dir_struct* %8, i32 0, i32 4)
  %128 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %129 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %128, i32 0, i32 1
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = icmp ne %struct.TYPE_3__* %130, null
  br i1 %131, label %132, label %139

132:                                              ; preds = %121
  %133 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %134 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %133, i32 0, i32 1
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %8, i32 0, i32 0
  store i32 %137, i32* %138, align 4
  br label %139

139:                                              ; preds = %132, %121
  %140 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %141 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %140, i32 0, i32 0
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = load i8*, i8** %9, align 8
  %144 = load i32, i32* %6, align 4
  %145 = add nsw i32 %144, 1
  %146 = call i32 @read_directory(%struct.dir_struct* %8, %struct.TYPE_4__* %142, i8* %143, i32 %145, i32* null)
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %7, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %139
  %150 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %151 = load i32, i32* @ERROR_NOT_UPTODATE_DIR, align 4
  %152 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %153 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @add_rejected_path(%struct.unpack_trees_options* %150, i32 %151, i8* %154)
  store i32 %155, i32* %3, align 4
  br label %160

156:                                              ; preds = %139
  %157 = load i8*, i8** %9, align 8
  %158 = call i32 @free(i8* %157)
  %159 = load i32, i32* %10, align 4
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %156, %149, %103, %39, %32
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i64 @S_ISGITLINK(i32) #1

declare dso_local i32 @resolve_gitlink_ref(i8*, i8*, %struct.object_id*) #1

declare dso_local i64 @oideq(%struct.object_id*, i32*) #1

declare dso_local i32 @verify_clean_submodule(i32*, %struct.cache_entry*, %struct.unpack_trees_options*) #1

declare dso_local i32* @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @ce_namelen(%struct.cache_entry*) #1

declare dso_local i32 @locate_in_src_index(%struct.cache_entry*, %struct.unpack_trees_options*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @ce_stage(%struct.cache_entry*) #1

declare dso_local i64 @verify_uptodate(%struct.cache_entry*, %struct.unpack_trees_options*) #1

declare dso_local i32 @add_entry(%struct.unpack_trees_options*, %struct.cache_entry*, i32, i32) #1

declare dso_local i32 @invalidate_ce_path(%struct.cache_entry*, %struct.unpack_trees_options*) #1

declare dso_local i32 @mark_ce_used(%struct.cache_entry*, %struct.unpack_trees_options*) #1

declare dso_local i8* @xstrfmt(i8*, i32, i8*) #1

declare dso_local i32 @memset(%struct.dir_struct*, i32, i32) #1

declare dso_local i32 @read_directory(%struct.dir_struct*, %struct.TYPE_4__*, i8*, i32, i32*) #1

declare dso_local i32 @add_rejected_path(%struct.unpack_trees_options*, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
