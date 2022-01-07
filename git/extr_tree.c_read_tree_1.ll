; ModuleID = '/home/carl/AnghaBench/git/extr_tree.c_read_tree_1.c'
source_filename = "/home/carl/AnghaBench/git/extr_tree.c_read_tree_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.tree = type { i32, i32 }
%struct.strbuf = type { i32, i32 }
%struct.pathspec = type { i32 }
%struct.tree_desc = type { i32 }
%struct.name_entry = type { i32, i32, i32 }
%struct.object_id = type { i32 }
%struct.commit = type { i32 }

@entry_not_interesting = common dso_local global i32 0, align 4
@all_entries_interesting = common dso_local global i32 0, align 4
@all_entries_not_interesting = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Commit %s in submodule path %s%s not found\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Invalid commit %s in submodule path %s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, %struct.tree*, %struct.strbuf*, i32, %struct.pathspec*, i32 (i32*, %struct.strbuf*, i32, i32, i32, i8*)*, i8*)* @read_tree_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_tree_1(%struct.repository* %0, %struct.tree* %1, %struct.strbuf* %2, i32 %3, %struct.pathspec* %4, i32 (i32*, %struct.strbuf*, i32, i32, i32, i8*)* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.repository*, align 8
  %10 = alloca %struct.tree*, align 8
  %11 = alloca %struct.strbuf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.pathspec*, align 8
  %14 = alloca i32 (i32*, %struct.strbuf*, i32, i32, i32, i8*)*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.tree_desc, align 4
  %17 = alloca %struct.name_entry, align 4
  %18 = alloca %struct.object_id, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.commit*, align 8
  store %struct.repository* %0, %struct.repository** %9, align 8
  store %struct.tree* %1, %struct.tree** %10, align 8
  store %struct.strbuf* %2, %struct.strbuf** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.pathspec* %4, %struct.pathspec** %13, align 8
  store i32 (i32*, %struct.strbuf*, i32, i32, i32, i8*)* %5, i32 (i32*, %struct.strbuf*, i32, i32, i32, i8*)** %14, align 8
  store i8* %6, i8** %15, align 8
  %23 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %24 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %20, align 4
  %26 = load i32, i32* @entry_not_interesting, align 4
  store i32 %26, i32* %21, align 4
  %27 = load %struct.tree*, %struct.tree** %10, align 8
  %28 = call i64 @parse_tree(%struct.tree* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %150

31:                                               ; preds = %7
  %32 = load %struct.tree*, %struct.tree** %10, align 8
  %33 = getelementptr inbounds %struct.tree, %struct.tree* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.tree*, %struct.tree** %10, align 8
  %36 = getelementptr inbounds %struct.tree, %struct.tree* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @init_tree_desc(%struct.tree_desc* %16, i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %148, %122, %74, %61, %31
  %40 = call i64 @tree_entry(%struct.tree_desc* %16, %struct.name_entry* %17)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %149

42:                                               ; preds = %39
  %43 = load i32, i32* %21, align 4
  %44 = load i32, i32* @all_entries_interesting, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %42
  %47 = load %struct.repository*, %struct.repository** %9, align 8
  %48 = getelementptr inbounds %struct.repository, %struct.repository* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %51 = load %struct.pathspec*, %struct.pathspec** %13, align 8
  %52 = call i32 @tree_entry_interesting(i32 %49, %struct.name_entry* %17, %struct.strbuf* %50, i32 0, %struct.pathspec* %51)
  store i32 %52, i32* %21, align 4
  %53 = load i32, i32* %21, align 4
  %54 = load i32, i32* @all_entries_not_interesting, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %149

57:                                               ; preds = %46
  %58 = load i32, i32* %21, align 4
  %59 = load i32, i32* @entry_not_interesting, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %39

62:                                               ; preds = %57
  br label %63

63:                                               ; preds = %62, %42
  %64 = load i32 (i32*, %struct.strbuf*, i32, i32, i32, i8*)*, i32 (i32*, %struct.strbuf*, i32, i32, i32, i8*)** %14, align 8
  %65 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %17, i32 0, i32 1
  %66 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %67 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %17, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %17, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i8*, i8** %15, align 8
  %73 = call i32 %64(i32* %65, %struct.strbuf* %66, i32 %68, i32 %70, i32 %71, i8* %72)
  switch i32 %73, label %76 [
    i32 0, label %74
    i32 128, label %75
  ]

74:                                               ; preds = %63
  br label %39

75:                                               ; preds = %63
  br label %77

76:                                               ; preds = %63
  store i32 -1, i32* %8, align 4
  br label %150

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %17, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @S_ISDIR(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %17, i32 0, i32 1
  %84 = call i32 @oidcpy(%struct.object_id* %18, i32* %83)
  br label %124

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %17, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @S_ISGITLINK(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %122

90:                                               ; preds = %85
  %91 = load %struct.repository*, %struct.repository** %9, align 8
  %92 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %17, i32 0, i32 1
  %93 = call %struct.commit* @lookup_commit(%struct.repository* %91, i32* %92)
  store %struct.commit* %93, %struct.commit** %22, align 8
  %94 = load %struct.commit*, %struct.commit** %22, align 8
  %95 = icmp ne %struct.commit* %94, null
  br i1 %95, label %105, label %96

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %17, i32 0, i32 1
  %98 = call i32 @oid_to_hex(i32* %97)
  %99 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %100 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %17, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @die(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %101, i32 %103)
  br label %105

105:                                              ; preds = %96, %90
  %106 = load %struct.commit*, %struct.commit** %22, align 8
  %107 = call i64 @parse_commit(%struct.commit* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %17, i32 0, i32 1
  %111 = call i32 @oid_to_hex(i32* %110)
  %112 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %113 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %17, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @die(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %111, i32 %114, i32 %116)
  br label %118

118:                                              ; preds = %109, %105
  %119 = load %struct.commit*, %struct.commit** %22, align 8
  %120 = call i32* @get_commit_tree_oid(%struct.commit* %119)
  %121 = call i32 @oidcpy(%struct.object_id* %18, i32* %120)
  br label %123

122:                                              ; preds = %85
  br label %39

123:                                              ; preds = %118
  br label %124

124:                                              ; preds = %123, %82
  %125 = call i32 @tree_entry_len(%struct.name_entry* %17)
  store i32 %125, i32* %19, align 4
  %126 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %127 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %17, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %19, align 4
  %130 = call i32 @strbuf_add(%struct.strbuf* %126, i32 %128, i32 %129)
  %131 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %132 = call i32 @strbuf_addch(%struct.strbuf* %131, i8 signext 47)
  %133 = load %struct.repository*, %struct.repository** %9, align 8
  %134 = load %struct.repository*, %struct.repository** %9, align 8
  %135 = call %struct.tree* @lookup_tree(%struct.repository* %134, %struct.object_id* %18)
  %136 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %137 = load i32, i32* %12, align 4
  %138 = load %struct.pathspec*, %struct.pathspec** %13, align 8
  %139 = load i32 (i32*, %struct.strbuf*, i32, i32, i32, i8*)*, i32 (i32*, %struct.strbuf*, i32, i32, i32, i8*)** %14, align 8
  %140 = load i8*, i8** %15, align 8
  %141 = call i32 @read_tree_1(%struct.repository* %133, %struct.tree* %135, %struct.strbuf* %136, i32 %137, %struct.pathspec* %138, i32 (i32*, %struct.strbuf*, i32, i32, i32, i8*)* %139, i8* %140)
  store i32 %141, i32* %21, align 4
  %142 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %143 = load i32, i32* %20, align 4
  %144 = call i32 @strbuf_setlen(%struct.strbuf* %142, i32 %143)
  %145 = load i32, i32* %21, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %124
  store i32 -1, i32* %8, align 4
  br label %150

148:                                              ; preds = %124
  br label %39

149:                                              ; preds = %56, %39
  store i32 0, i32* %8, align 4
  br label %150

150:                                              ; preds = %149, %147, %76, %30
  %151 = load i32, i32* %8, align 4
  ret i32 %151
}

declare dso_local i64 @parse_tree(%struct.tree*) #1

declare dso_local i32 @init_tree_desc(%struct.tree_desc*, i32, i32) #1

declare dso_local i64 @tree_entry(%struct.tree_desc*, %struct.name_entry*) #1

declare dso_local i32 @tree_entry_interesting(i32, %struct.name_entry*, %struct.strbuf*, i32, %struct.pathspec*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @oidcpy(%struct.object_id*, i32*) #1

declare dso_local i64 @S_ISGITLINK(i32) #1

declare dso_local %struct.commit* @lookup_commit(%struct.repository*, i32*) #1

declare dso_local i32 @die(i8*, i32, i32, i32) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i64 @parse_commit(%struct.commit*) #1

declare dso_local i32* @get_commit_tree_oid(%struct.commit*) #1

declare dso_local i32 @tree_entry_len(%struct.name_entry*) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i32, i32) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local %struct.tree* @lookup_tree(%struct.repository*, %struct.object_id*) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
