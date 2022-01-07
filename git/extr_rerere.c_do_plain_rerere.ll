; ModuleID = '/home/carl/AnghaBench/git/extr_rerere.c_do_plain_rerere.c'
source_filename = "/home/carl/AnghaBench/git/extr_rerere.c_do_plain_rerere.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }
%struct.repository = type { i32 }
%struct.rerere_id = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { %struct.rerere_id* }

@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 8
@GIT_MAX_RAWSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, %struct.string_list*, i32)* @do_plain_rerere to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_plain_rerere(%struct.repository* %0, %struct.string_list* %1, i32 %2) #0 {
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.string_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.string_list, align 8
  %8 = alloca %struct.string_list, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rerere_id*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.string_list* %1, %struct.string_list** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = bitcast %struct.string_list* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 16, i1 false)
  %17 = bitcast %struct.string_list* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 16, i1 false)
  %18 = load %struct.repository*, %struct.repository** %4, align 8
  %19 = call i32 @find_conflict(%struct.repository* %18, %struct.string_list* %7)
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %77, %3
  %21 = load i32, i32* %9, align 4
  %22 = getelementptr inbounds %struct.string_list, %struct.string_list* %7, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %80

25:                                               ; preds = %20
  %26 = load i32, i32* @GIT_MAX_RAWSZ, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %11, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %12, align 8
  %30 = getelementptr inbounds %struct.string_list, %struct.string_list* %7, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %13, align 8
  %37 = load %struct.repository*, %struct.repository** %4, align 8
  %38 = getelementptr inbounds %struct.repository, %struct.repository* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %13, align 8
  %41 = call i32 @handle_file(i32 %39, i8* %40, i8* %29, i32* null)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %25
  %45 = load %struct.string_list*, %struct.string_list** %5, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = call i64 @string_list_has_string(%struct.string_list* %45, i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load %struct.string_list*, %struct.string_list** %5, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = call %struct.TYPE_4__* @string_list_lookup(%struct.string_list* %50, i8* %51)
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @remove_variant(i32 %54)
  %56 = load %struct.string_list*, %struct.string_list** %5, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = call i32 @string_list_remove(%struct.string_list* %56, i8* %57, i32 1)
  br label %59

59:                                               ; preds = %49, %44, %25
  %60 = load i32, i32* %14, align 4
  %61 = icmp slt i32 %60, 1
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 4, i32* %15, align 4
  br label %73

63:                                               ; preds = %59
  %64 = call %struct.rerere_id* @new_rerere_id(i8* %29)
  store %struct.rerere_id* %64, %struct.rerere_id** %10, align 8
  %65 = load %struct.rerere_id*, %struct.rerere_id** %10, align 8
  %66 = load %struct.string_list*, %struct.string_list** %5, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = call %struct.TYPE_5__* @string_list_insert(%struct.string_list* %66, i8* %67)
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store %struct.rerere_id* %65, %struct.rerere_id** %69, align 8
  %70 = load %struct.rerere_id*, %struct.rerere_id** %10, align 8
  %71 = call i32 @rerere_path(%struct.rerere_id* %70, i32* null)
  %72 = call i32 @mkdir_in_gitdir(i32 %71)
  store i32 0, i32* %15, align 4
  br label %73

73:                                               ; preds = %63, %62
  %74 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %74)
  %75 = load i32, i32* %15, align 4
  switch i32 %75, label %112 [
    i32 0, label %76
    i32 4, label %77
  ]

76:                                               ; preds = %73
  br label %77

77:                                               ; preds = %76, %73
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %20

80:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %98, %80
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.string_list*, %struct.string_list** %5, align 8
  %84 = getelementptr inbounds %struct.string_list, %struct.string_list* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %101

87:                                               ; preds = %81
  %88 = load %struct.repository*, %struct.repository** %4, align 8
  %89 = getelementptr inbounds %struct.repository, %struct.repository* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.string_list*, %struct.string_list** %5, align 8
  %92 = getelementptr inbounds %struct.string_list, %struct.string_list* %91, i32 0, i32 1
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 %95
  %97 = call i32 @do_rerere_one_path(i32 %90, %struct.TYPE_6__* %96, %struct.string_list* %8)
  br label %98

98:                                               ; preds = %87
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %81

101:                                              ; preds = %81
  %102 = getelementptr inbounds %struct.string_list, %struct.string_list* %8, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load %struct.repository*, %struct.repository** %4, align 8
  %107 = call i32 @update_paths(%struct.repository* %106, %struct.string_list* %8)
  br label %108

108:                                              ; preds = %105, %101
  %109 = load %struct.string_list*, %struct.string_list** %5, align 8
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @write_rr(%struct.string_list* %109, i32 %110)
  ret i32 %111

112:                                              ; preds = %73
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @find_conflict(%struct.repository*, %struct.string_list*) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @handle_file(i32, i8*, i8*, i32*) #2

declare dso_local i64 @string_list_has_string(%struct.string_list*, i8*) #2

declare dso_local i32 @remove_variant(i32) #2

declare dso_local %struct.TYPE_4__* @string_list_lookup(%struct.string_list*, i8*) #2

declare dso_local i32 @string_list_remove(%struct.string_list*, i8*, i32) #2

declare dso_local %struct.rerere_id* @new_rerere_id(i8*) #2

declare dso_local %struct.TYPE_5__* @string_list_insert(%struct.string_list*, i8*) #2

declare dso_local i32 @mkdir_in_gitdir(i32) #2

declare dso_local i32 @rerere_path(%struct.rerere_id*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i32 @do_rerere_one_path(i32, %struct.TYPE_6__*, %struct.string_list*) #2

declare dso_local i32 @update_paths(%struct.repository*, %struct.string_list*) #2

declare dso_local i32 @write_rr(%struct.string_list*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
