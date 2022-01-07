; ModuleID = '/home/carl/AnghaBench/git/extr_match-trees.c_splice_tree.c'
source_filename = "/home/carl/AnghaBench/git/extr_match-trees.c_splice_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i8* }
%struct.tree_desc = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [20 x i8] c"cannot read tree %s\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"entry %s in tree %s is not a tree\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"entry %.*s not found in tree %s\00", align 1
@tree_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, i8*, %struct.object_id*, %struct.object_id*)* @splice_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @splice_tree(%struct.object_id* %0, i8* %1, %struct.object_id* %2, %struct.object_id* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca %struct.object_id*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.tree_desc, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.object_id*, align 8
  %17 = alloca %struct.object_id, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i16, align 2
  %22 = alloca %struct.object_id, align 8
  store %struct.object_id* %0, %struct.object_id** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.object_id* %2, %struct.object_id** %8, align 8
  store %struct.object_id* %3, %struct.object_id** %9, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i8* @strchrnul(i8* %23, i8 signext 47)
  store i8* %24, i8** %10, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = ptrtoint i8* %25 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %11, align 4
  %31 = load i8*, i8** %10, align 8
  %32 = load i8, i8* %31, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %4
  %35 = load i8*, i8** %10, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %10, align 8
  br label %37

37:                                               ; preds = %34, %4
  %38 = load %struct.object_id*, %struct.object_id** %6, align 8
  %39 = call i8* @read_object_file(%struct.object_id* %38, i32* %18, i64* %13)
  store i8* %39, i8** %12, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load %struct.object_id*, %struct.object_id** %6, align 8
  %44 = call i32 @oid_to_hex(%struct.object_id* %43)
  %45 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i8*, i8** %12, align 8
  %48 = load i64, i64* %13, align 8
  %49 = call i32 @init_tree_desc(%struct.tree_desc* %14, i8* %47, i64 %48)
  store i8* null, i8** %15, align 8
  br label %50

50:                                               ; preds = %86, %46
  %51 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %14, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %88

54:                                               ; preds = %50
  %55 = call i32 @tree_entry_extract(%struct.tree_desc* %14, i8** %20, i16* %21)
  %56 = load i8*, i8** %20, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = load i32, i32* %11, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %86

60:                                               ; preds = %54
  %61 = load i8*, i8** %20, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @memcmp(i8* %61, i8* %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %86, label %66

66:                                               ; preds = %60
  %67 = load i16, i16* %21, align 2
  %68 = call i32 @S_ISDIR(i16 zeroext %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %66
  %71 = load i8*, i8** %20, align 8
  %72 = load %struct.object_id*, %struct.object_id** %6, align 8
  %73 = call i32 @oid_to_hex(%struct.object_id* %72)
  %74 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %71, i32 %73)
  br label %75

75:                                               ; preds = %70, %66
  %76 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %14, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %14, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @strlen(i8* %81)
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %78, i64 %83
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  store i8* %85, i8** %15, align 8
  br label %88

86:                                               ; preds = %60, %54
  %87 = call i32 @update_tree_entry(%struct.tree_desc* %14)
  br label %50

88:                                               ; preds = %75, %50
  %89 = load i8*, i8** %15, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %97, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %11, align 4
  %93 = load i8*, i8** %7, align 8
  %94 = load %struct.object_id*, %struct.object_id** %6, align 8
  %95 = call i32 @oid_to_hex(%struct.object_id* %94)
  %96 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %92, i8* %93, i32 %95)
  br label %97

97:                                               ; preds = %91, %88
  %98 = load i8*, i8** %10, align 8
  %99 = load i8, i8* %98, align 1
  %100 = icmp ne i8 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.object_id, %struct.object_id* %22, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = load i8*, i8** %15, align 8
  %105 = call i32 @hashcpy(i8* %103, i8* %104)
  %106 = load i8*, i8** %10, align 8
  %107 = load %struct.object_id*, %struct.object_id** %8, align 8
  %108 = call i32 @splice_tree(%struct.object_id* %22, i8* %106, %struct.object_id* %107, %struct.object_id* %17)
  store i32 %108, i32* %19, align 4
  %109 = load i32, i32* %19, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %101
  %112 = load i32, i32* %19, align 4
  store i32 %112, i32* %5, align 4
  br label %130

113:                                              ; preds = %101
  store %struct.object_id* %17, %struct.object_id** %16, align 8
  br label %116

114:                                              ; preds = %97
  %115 = load %struct.object_id*, %struct.object_id** %8, align 8
  store %struct.object_id* %115, %struct.object_id** %16, align 8
  br label %116

116:                                              ; preds = %114, %113
  %117 = load i8*, i8** %15, align 8
  %118 = load %struct.object_id*, %struct.object_id** %16, align 8
  %119 = getelementptr inbounds %struct.object_id, %struct.object_id* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @hashcpy(i8* %117, i8* %120)
  %122 = load i8*, i8** %12, align 8
  %123 = load i64, i64* %13, align 8
  %124 = load i32, i32* @tree_type, align 4
  %125 = load %struct.object_id*, %struct.object_id** %9, align 8
  %126 = call i32 @write_object_file(i8* %122, i64 %123, i32 %124, %struct.object_id* %125)
  store i32 %126, i32* %19, align 4
  %127 = load i8*, i8** %12, align 8
  %128 = call i32 @free(i8* %127)
  %129 = load i32, i32* %19, align 4
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %116, %111
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local i8* @read_object_file(%struct.object_id*, i32*, i64*) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @init_tree_desc(%struct.tree_desc*, i8*, i64) #1

declare dso_local i32 @tree_entry_extract(%struct.tree_desc*, i8**, i16*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @S_ISDIR(i16 zeroext) #1

declare dso_local i32 @update_tree_entry(%struct.tree_desc*) #1

declare dso_local i32 @hashcpy(i8*, i8*) #1

declare dso_local i32 @write_object_file(i8*, i64, i32, %struct.object_id*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
