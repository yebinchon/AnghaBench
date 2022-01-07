; ModuleID = '/home/carl/AnghaBench/git/extr_fsck.c_fsck_walk_tree.c'
source_filename = "/home/carl/AnghaBench/git/extr_fsck.c_fsck_walk_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i32, i32, i32 }
%struct.fsck_options = type { i32 (%struct.object*, i32, i8*, %struct.fsck_options*)* }
%struct.object = type { i32 }
%struct.tree_desc = type { i32 }
%struct.name_entry = type { i8*, i32, i32 }

@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s%s/\00", align 1
@OBJ_TREE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@OBJ_BLOB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"in tree %s: entry %s has bad mode %.6o\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree*, i8*, %struct.fsck_options*)* @fsck_walk_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsck_walk_tree(%struct.tree* %0, i8* %1, %struct.fsck_options* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tree*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fsck_options*, align 8
  %8 = alloca %struct.tree_desc, align 4
  %9 = alloca %struct.name_entry, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.object*, align 8
  %13 = alloca i32, align 4
  store %struct.tree* %0, %struct.tree** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.fsck_options* %2, %struct.fsck_options** %7, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.tree*, %struct.tree** %5, align 8
  %15 = call i64 @parse_tree(%struct.tree* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %133

18:                                               ; preds = %3
  %19 = load %struct.fsck_options*, %struct.fsck_options** %7, align 8
  %20 = load %struct.tree*, %struct.tree** %5, align 8
  %21 = getelementptr inbounds %struct.tree, %struct.tree* %20, i32 0, i32 0
  %22 = call i8* @get_object_name(%struct.fsck_options* %19, i32* %21)
  store i8* %22, i8** %11, align 8
  %23 = load %struct.tree*, %struct.tree** %5, align 8
  %24 = getelementptr inbounds %struct.tree, %struct.tree* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.tree*, %struct.tree** %5, align 8
  %27 = getelementptr inbounds %struct.tree, %struct.tree* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @init_tree_desc_gently(%struct.tree_desc* %8, i32 %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  store i32 -1, i32* %4, align 4
  br label %133

32:                                               ; preds = %18
  br label %33

33:                                               ; preds = %130, %41, %32
  %34 = call i64 @tree_entry_gently(%struct.tree_desc* %8, %struct.name_entry* %9)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %131

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %9, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @S_ISGITLINK(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %33

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %9, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @S_ISDIR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %73

47:                                               ; preds = %42
  %48 = load i32, i32* @the_repository, align 4
  %49 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %9, i32 0, i32 2
  %50 = call i64 @lookup_tree(i32 %48, i32* %49)
  %51 = inttoptr i64 %50 to %struct.object*
  store %struct.object* %51, %struct.object** %12, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %64

54:                                               ; preds = %47
  %55 = load %struct.object*, %struct.object** %12, align 8
  %56 = icmp ne %struct.object* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load %struct.fsck_options*, %struct.fsck_options** %7, align 8
  %59 = load %struct.object*, %struct.object** %12, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %9, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @put_object_name(%struct.fsck_options* %58, %struct.object* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %60, i8* %62)
  br label %64

64:                                               ; preds = %57, %54, %47
  %65 = load %struct.fsck_options*, %struct.fsck_options** %7, align 8
  %66 = getelementptr inbounds %struct.fsck_options, %struct.fsck_options* %65, i32 0, i32 0
  %67 = load i32 (%struct.object*, i32, i8*, %struct.fsck_options*)*, i32 (%struct.object*, i32, i8*, %struct.fsck_options*)** %66, align 8
  %68 = load %struct.object*, %struct.object** %12, align 8
  %69 = load i32, i32* @OBJ_TREE, align 4
  %70 = load i8*, i8** %6, align 8
  %71 = load %struct.fsck_options*, %struct.fsck_options** %7, align 8
  %72 = call i32 %67(%struct.object* %68, i32 %69, i8* %70, %struct.fsck_options* %71)
  store i32 %72, i32* %13, align 4
  br label %120

73:                                               ; preds = %42
  %74 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %9, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @S_ISREG(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %9, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @S_ISLNK(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %109

83:                                               ; preds = %78, %73
  %84 = load i32, i32* @the_repository, align 4
  %85 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %9, i32 0, i32 2
  %86 = call i64 @lookup_blob(i32 %84, i32* %85)
  %87 = inttoptr i64 %86 to %struct.object*
  store %struct.object* %87, %struct.object** %12, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %100

90:                                               ; preds = %83
  %91 = load %struct.object*, %struct.object** %12, align 8
  %92 = icmp ne %struct.object* %91, null
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load %struct.fsck_options*, %struct.fsck_options** %7, align 8
  %95 = load %struct.object*, %struct.object** %12, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %9, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @put_object_name(%struct.fsck_options* %94, %struct.object* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %96, i8* %98)
  br label %100

100:                                              ; preds = %93, %90, %83
  %101 = load %struct.fsck_options*, %struct.fsck_options** %7, align 8
  %102 = getelementptr inbounds %struct.fsck_options, %struct.fsck_options* %101, i32 0, i32 0
  %103 = load i32 (%struct.object*, i32, i8*, %struct.fsck_options*)*, i32 (%struct.object*, i32, i8*, %struct.fsck_options*)** %102, align 8
  %104 = load %struct.object*, %struct.object** %12, align 8
  %105 = load i32, i32* @OBJ_BLOB, align 4
  %106 = load i8*, i8** %6, align 8
  %107 = load %struct.fsck_options*, %struct.fsck_options** %7, align 8
  %108 = call i32 %103(%struct.object* %104, i32 %105, i8* %106, %struct.fsck_options* %107)
  store i32 %108, i32* %13, align 4
  br label %119

109:                                              ; preds = %78
  %110 = load %struct.fsck_options*, %struct.fsck_options** %7, align 8
  %111 = load %struct.tree*, %struct.tree** %5, align 8
  %112 = getelementptr inbounds %struct.tree, %struct.tree* %111, i32 0, i32 0
  %113 = call i32 @describe_object(%struct.fsck_options* %110, i32* %112)
  %114 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %9, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %9, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %113, i8* %115, i32 %117)
  store i32 %118, i32* %13, align 4
  br label %119

119:                                              ; preds = %109, %100
  br label %120

120:                                              ; preds = %119, %64
  %121 = load i32, i32* %13, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = load i32, i32* %13, align 4
  store i32 %124, i32* %4, align 4
  br label %133

125:                                              ; preds = %120
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %13, align 4
  store i32 %129, i32* %10, align 4
  br label %130

130:                                              ; preds = %128, %125
  br label %33

131:                                              ; preds = %33
  %132 = load i32, i32* %10, align 4
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %131, %123, %31, %17
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i64 @parse_tree(%struct.tree*) #1

declare dso_local i8* @get_object_name(%struct.fsck_options*, i32*) #1

declare dso_local i64 @init_tree_desc_gently(%struct.tree_desc*, i32, i32) #1

declare dso_local i64 @tree_entry_gently(%struct.tree_desc*, %struct.name_entry*) #1

declare dso_local i64 @S_ISGITLINK(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @lookup_tree(i32, i32*) #1

declare dso_local i32 @put_object_name(%struct.fsck_options*, %struct.object*, i8*, i8*, i8*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @lookup_blob(i32, i32*) #1

declare dso_local i32 @error(i8*, i32, i8*, i32) #1

declare dso_local i32 @describe_object(%struct.fsck_options*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
