; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_apply_directory_rename_modifications.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_apply_directory_rename_modifications.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_options = type { i32 }
%struct.diff_filepair = type { i8, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }
%struct.rename = type { i8, i8*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.tree = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.string_list = type { i32 }
%struct.string_list_item = type { %struct.TYPE_8__* }

@.str = private unnamed_addr constant [34 x i8] c"Refusing to lose dirty file at %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.merge_options*, %struct.diff_filepair*, i8*, %struct.rename*, %struct.tree*, %struct.tree*, %struct.tree*, %struct.tree*, %struct.string_list*)* @apply_directory_rename_modifications to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_directory_rename_modifications(%struct.merge_options* %0, %struct.diff_filepair* %1, i8* %2, %struct.rename* %3, %struct.tree* %4, %struct.tree* %5, %struct.tree* %6, %struct.tree* %7, %struct.string_list* %8) #0 {
  %10 = alloca %struct.merge_options*, align 8
  %11 = alloca %struct.diff_filepair*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.rename*, align 8
  %14 = alloca %struct.tree*, align 8
  %15 = alloca %struct.tree*, align 8
  %16 = alloca %struct.tree*, align 8
  %17 = alloca %struct.tree*, align 8
  %18 = alloca %struct.string_list*, align 8
  %19 = alloca %struct.string_list_item*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.merge_options* %0, %struct.merge_options** %10, align 8
  store %struct.diff_filepair* %1, %struct.diff_filepair** %11, align 8
  store i8* %2, i8** %12, align 8
  store %struct.rename* %3, %struct.rename** %13, align 8
  store %struct.tree* %4, %struct.tree** %14, align 8
  store %struct.tree* %5, %struct.tree** %15, align 8
  store %struct.tree* %6, %struct.tree** %16, align 8
  store %struct.tree* %7, %struct.tree** %17, align 8
  store %struct.string_list* %8, %struct.string_list** %18, align 8
  %22 = load %struct.tree*, %struct.tree** %14, align 8
  %23 = load %struct.tree*, %struct.tree** %16, align 8
  %24 = icmp eq %struct.tree* %22, %23
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 2, i32 3
  store i32 %26, i32* %20, align 4
  %27 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %28 = load %struct.diff_filepair*, %struct.diff_filepair** %11, align 8
  %29 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %28, i32 0, i32 1
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @was_dirty(%struct.merge_options* %27, i8* %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %21, align 4
  %37 = load i32, i32* %21, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %9
  %40 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %41 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.diff_filepair*, %struct.diff_filepair** %11, align 8
  %43 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %42, i32 0, i32 1
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @output(%struct.merge_options* %40, i32 1, i32 %41, i8* %46)
  br label %48

48:                                               ; preds = %39, %9
  %49 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %50 = load %struct.diff_filepair*, %struct.diff_filepair** %11, align 8
  %51 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %50, i32 0, i32 1
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %21, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @remove_file(%struct.merge_options* %49, i32 1, i8* %54, i32 %58)
  %60 = load %struct.string_list*, %struct.string_list** %18, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = call %struct.string_list_item* @string_list_lookup(%struct.string_list* %60, i8* %61)
  store %struct.string_list_item* %62, %struct.string_list_item** %19, align 8
  %63 = load %struct.string_list_item*, %struct.string_list_item** %19, align 8
  %64 = icmp ne %struct.string_list_item* %63, null
  br i1 %64, label %65, label %75

65:                                               ; preds = %48
  %66 = load %struct.rename*, %struct.rename** %13, align 8
  %67 = getelementptr inbounds %struct.rename, %struct.rename* %66, i32 0, i32 2
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.string_list_item*, %struct.string_list_item** %19, align 8
  %71 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = load %struct.rename*, %struct.rename** %13, align 8
  %74 = getelementptr inbounds %struct.rename, %struct.rename* %73, i32 0, i32 2
  store %struct.TYPE_8__* %72, %struct.TYPE_8__** %74, align 8
  br label %106

75:                                               ; preds = %48
  %76 = load %struct.diff_filepair*, %struct.diff_filepair** %11, align 8
  %77 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %76, i32 0, i32 0
  %78 = load i8, i8* %77, align 8
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 82
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load %struct.rename*, %struct.rename** %13, align 8
  %83 = getelementptr inbounds %struct.rename, %struct.rename* %82, i32 0, i32 2
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  br label %86

86:                                               ; preds = %81, %75
  %87 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %88 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i8*, i8** %12, align 8
  %91 = load %struct.tree*, %struct.tree** %15, align 8
  %92 = load %struct.tree*, %struct.tree** %16, align 8
  %93 = load %struct.tree*, %struct.tree** %17, align 8
  %94 = load %struct.string_list*, %struct.string_list** %18, align 8
  %95 = call %struct.TYPE_8__* @insert_stage_data(i32 %89, i8* %90, %struct.tree* %91, %struct.tree* %92, %struct.tree* %93, %struct.string_list* %94)
  %96 = load %struct.rename*, %struct.rename** %13, align 8
  %97 = getelementptr inbounds %struct.rename, %struct.rename* %96, i32 0, i32 2
  store %struct.TYPE_8__* %95, %struct.TYPE_8__** %97, align 8
  %98 = load %struct.string_list*, %struct.string_list** %18, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = call %struct.string_list_item* @string_list_insert(%struct.string_list* %98, i8* %99)
  store %struct.string_list_item* %100, %struct.string_list_item** %19, align 8
  %101 = load %struct.rename*, %struct.rename** %13, align 8
  %102 = getelementptr inbounds %struct.rename, %struct.rename* %101, i32 0, i32 2
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = load %struct.string_list_item*, %struct.string_list_item** %19, align 8
  %105 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %104, i32 0, i32 0
  store %struct.TYPE_8__* %103, %struct.TYPE_8__** %105, align 8
  br label %106

106:                                              ; preds = %86, %65
  %107 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %108 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.tree*, %struct.tree** %14, align 8
  %111 = getelementptr inbounds %struct.tree, %struct.tree* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load %struct.diff_filepair*, %struct.diff_filepair** %11, align 8
  %114 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %113, i32 0, i32 1
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.rename*, %struct.rename** %13, align 8
  %119 = getelementptr inbounds %struct.rename, %struct.rename* %118, i32 0, i32 2
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = load i32, i32* %20, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load %struct.rename*, %struct.rename** %13, align 8
  %128 = getelementptr inbounds %struct.rename, %struct.rename* %127, i32 0, i32 2
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = load i32, i32* %20, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = call i32 @get_tree_entry(i32 %109, i32* %112, i8* %117, i32* %126, i32* %135)
  %137 = load %struct.diff_filepair*, %struct.diff_filepair** %11, align 8
  %138 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %137, i32 0, i32 0
  %139 = load i8, i8* %138, align 8
  %140 = load %struct.rename*, %struct.rename** %13, align 8
  %141 = getelementptr inbounds %struct.rename, %struct.rename* %140, i32 0, i32 0
  store i8 %139, i8* %141, align 8
  %142 = load %struct.diff_filepair*, %struct.diff_filepair** %11, align 8
  %143 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %142, i32 0, i32 1
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = load %struct.rename*, %struct.rename** %13, align 8
  %148 = getelementptr inbounds %struct.rename, %struct.rename* %147, i32 0, i32 1
  store i8* %146, i8** %148, align 8
  %149 = load %struct.diff_filepair*, %struct.diff_filepair** %11, align 8
  %150 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %149, i32 0, i32 0
  store i8 82, i8* %150, align 8
  %151 = load i8*, i8** %12, align 8
  %152 = load %struct.diff_filepair*, %struct.diff_filepair** %11, align 8
  %153 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %152, i32 0, i32 1
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  store i8* %151, i8** %155, align 8
  ret void
}

declare dso_local i32 @was_dirty(%struct.merge_options*, i8*) #1

declare dso_local i32 @output(%struct.merge_options*, i32, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @remove_file(%struct.merge_options*, i32, i8*, i32) #1

declare dso_local %struct.string_list_item* @string_list_lookup(%struct.string_list*, i8*) #1

declare dso_local %struct.TYPE_8__* @insert_stage_data(i32, i8*, %struct.tree*, %struct.tree*, %struct.tree*, %struct.string_list*) #1

declare dso_local %struct.string_list_item* @string_list_insert(%struct.string_list*, i8*) #1

declare dso_local i32 @get_tree_entry(i32, i32*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
