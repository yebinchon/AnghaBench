; ModuleID = '/home/carl/AnghaBench/git/extr_tree-walk.c_extended_entry_extract.c'
source_filename = "/home/carl/AnghaBench/git/extr_tree-walk.c_extended_entry_extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_desc_x = type { %struct.tree_desc, %struct.tree_desc_skip* }
%struct.tree_desc = type { i64 }
%struct.tree_desc_skip = type { i8*, %struct.tree_desc_skip* }
%struct.name_entry = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree_desc_x*, %struct.name_entry*, i8*, i32)* @extended_entry_extract to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extended_entry_extract(%struct.tree_desc_x* %0, %struct.name_entry* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.tree_desc_x*, align 8
  %6 = alloca %struct.name_entry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tree_desc, align 8
  %12 = alloca %struct.tree_desc_skip*, align 8
  store %struct.tree_desc_x* %0, %struct.tree_desc_x** %5, align 8
  store %struct.name_entry* %1, %struct.name_entry** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  br label %13

13:                                               ; preds = %4, %51
  %14 = load %struct.tree_desc_x*, %struct.tree_desc_x** %5, align 8
  %15 = getelementptr inbounds %struct.tree_desc_x, %struct.tree_desc_x* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = load %struct.name_entry*, %struct.name_entry** %6, align 8
  %21 = call i32 @entry_clear(%struct.name_entry* %20)
  br label %55

22:                                               ; preds = %13
  %23 = load %struct.tree_desc_x*, %struct.tree_desc_x** %5, align 8
  %24 = getelementptr inbounds %struct.tree_desc_x, %struct.tree_desc_x* %23, i32 0, i32 0
  %25 = load %struct.name_entry*, %struct.name_entry** %6, align 8
  %26 = call i32 @entry_extract(%struct.tree_desc* %24, %struct.name_entry* %25)
  %27 = load %struct.tree_desc_x*, %struct.tree_desc_x** %5, align 8
  %28 = getelementptr inbounds %struct.tree_desc_x, %struct.tree_desc_x* %27, i32 0, i32 1
  %29 = load %struct.tree_desc_skip*, %struct.tree_desc_skip** %28, align 8
  store %struct.tree_desc_skip* %29, %struct.tree_desc_skip** %12, align 8
  br label %30

30:                                               ; preds = %43, %22
  %31 = load %struct.tree_desc_skip*, %struct.tree_desc_skip** %12, align 8
  %32 = icmp ne %struct.tree_desc_skip* %31, null
  br i1 %32, label %33, label %47

33:                                               ; preds = %30
  %34 = load %struct.name_entry*, %struct.name_entry** %6, align 8
  %35 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.tree_desc_skip*, %struct.tree_desc_skip** %12, align 8
  %38 = getelementptr inbounds %struct.tree_desc_skip, %struct.tree_desc_skip* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = icmp eq i8* %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %47

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.tree_desc_skip*, %struct.tree_desc_skip** %12, align 8
  %45 = getelementptr inbounds %struct.tree_desc_skip, %struct.tree_desc_skip* %44, i32 0, i32 1
  %46 = load %struct.tree_desc_skip*, %struct.tree_desc_skip** %45, align 8
  store %struct.tree_desc_skip* %46, %struct.tree_desc_skip** %12, align 8
  br label %30

47:                                               ; preds = %41, %30
  %48 = load %struct.tree_desc_skip*, %struct.tree_desc_skip** %12, align 8
  %49 = icmp ne %struct.tree_desc_skip* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  br label %55

51:                                               ; preds = %47
  %52 = load %struct.tree_desc_x*, %struct.tree_desc_x** %5, align 8
  %53 = getelementptr inbounds %struct.tree_desc_x, %struct.tree_desc_x* %52, i32 0, i32 0
  %54 = call i32 @update_tree_entry(%struct.tree_desc* %53)
  br label %13

55:                                               ; preds = %50, %19
  %56 = load i8*, i8** %7, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load %struct.name_entry*, %struct.name_entry** %6, align 8
  %60 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %58, %55
  br label %112

64:                                               ; preds = %58
  %65 = load %struct.name_entry*, %struct.name_entry** %6, align 8
  %66 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %9, align 8
  %68 = load %struct.name_entry*, %struct.name_entry** %6, align 8
  %69 = call i32 @tree_entry_len(%struct.name_entry* %68)
  store i32 %69, i32* %10, align 4
  %70 = load i8*, i8** %7, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i8*, i8** %9, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @check_entry_match(i8* %70, i32 %71, i8* %72, i32 %73)
  switch i32 %74, label %79 [
    i32 -1, label %75
    i32 0, label %78
  ]

75:                                               ; preds = %64
  %76 = load %struct.name_entry*, %struct.name_entry** %6, align 8
  %77 = call i32 @entry_clear(%struct.name_entry* %76)
  br label %78

78:                                               ; preds = %64, %75
  br label %112

79:                                               ; preds = %64
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.tree_desc_x*, %struct.tree_desc_x** %5, align 8
  %82 = getelementptr inbounds %struct.tree_desc_x, %struct.tree_desc_x* %81, i32 0, i32 0
  %83 = bitcast %struct.tree_desc* %11 to i8*
  %84 = bitcast %struct.tree_desc* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %83, i8* align 8 %84, i64 8, i1 false)
  br label %85

85:                                               ; preds = %108, %80
  %86 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %11, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %109

89:                                               ; preds = %85
  %90 = load %struct.name_entry*, %struct.name_entry** %6, align 8
  %91 = call i32 @entry_extract(%struct.tree_desc* %11, %struct.name_entry* %90)
  %92 = load %struct.name_entry*, %struct.name_entry** %6, align 8
  %93 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %9, align 8
  %95 = load %struct.name_entry*, %struct.name_entry** %6, align 8
  %96 = call i32 @tree_entry_len(%struct.name_entry* %95)
  store i32 %96, i32* %10, align 4
  %97 = load i8*, i8** %7, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load i8*, i8** %9, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @check_entry_match(i8* %97, i32 %98, i8* %99, i32 %100)
  switch i32 %101, label %106 [
    i32 -1, label %102
    i32 0, label %105
  ]

102:                                              ; preds = %89
  %103 = load %struct.name_entry*, %struct.name_entry** %6, align 8
  %104 = call i32 @entry_clear(%struct.name_entry* %103)
  br label %105

105:                                              ; preds = %89, %102
  br label %112

106:                                              ; preds = %89
  %107 = call i32 @update_tree_entry(%struct.tree_desc* %11)
  br label %108

108:                                              ; preds = %106
  br label %85

109:                                              ; preds = %85
  %110 = load %struct.name_entry*, %struct.name_entry** %6, align 8
  %111 = call i32 @entry_clear(%struct.name_entry* %110)
  br label %112

112:                                              ; preds = %109, %105, %78, %63
  ret void
}

declare dso_local i32 @entry_clear(%struct.name_entry*) #1

declare dso_local i32 @entry_extract(%struct.tree_desc*, %struct.name_entry*) #1

declare dso_local i32 @update_tree_entry(%struct.tree_desc*) #1

declare dso_local i32 @tree_entry_len(%struct.name_entry*) #1

declare dso_local i32 @check_entry_match(i8*, i32, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
