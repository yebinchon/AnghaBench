; ModuleID = '/home/carl/AnghaBench/git/extr_mailmap.c_map_user.c'
source_filename = "/home/carl/AnghaBench/git/extr_mailmap.c_map_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i64 }
%struct.string_list_item = type { i64 }
%struct.mailmap_entry = type { %struct.string_list }
%struct.mailmap_info = type { i8*, i8* }

@.str = private unnamed_addr constant [29 x i8] c"map_user: map '%.*s' <%.*s>\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"map_user:  -- (no simple mapping)\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"map_user:  to '%.*s' <%.*s>\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"map_user:  --\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @map_user(%struct.string_list* %0, i8** %1, i64* %2, i8** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.string_list*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.string_list_item*, align 8
  %13 = alloca %struct.mailmap_entry*, align 8
  %14 = alloca %struct.string_list_item*, align 8
  %15 = alloca %struct.mailmap_info*, align 8
  store %struct.string_list* %0, %struct.string_list** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i64* %2, i64** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i64* %4, i64** %11, align 8
  %16 = load i64*, i64** %11, align 8
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = load i8**, i8*** %10, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @debug_str(i8* %20)
  %22 = load i64*, i64** %9, align 8
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i8**, i8*** %8, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @debug_str(i8* %26)
  %28 = call i32 (i8*, ...) @debug_mm(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21, i32 %24, i32 %27)
  %29 = load %struct.string_list*, %struct.string_list** %7, align 8
  %30 = load i8**, i8*** %8, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = load i64*, i64** %9, align 8
  %33 = load i64, i64* %32, align 8
  %34 = call %struct.string_list_item* @lookup_prefix(%struct.string_list* %29, i8* %31, i64 %33)
  store %struct.string_list_item* %34, %struct.string_list_item** %12, align 8
  %35 = load %struct.string_list_item*, %struct.string_list_item** %12, align 8
  %36 = icmp ne %struct.string_list_item* %35, null
  br i1 %36, label %37, label %61

37:                                               ; preds = %5
  %38 = load %struct.string_list_item*, %struct.string_list_item** %12, align 8
  %39 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.mailmap_entry*
  store %struct.mailmap_entry* %41, %struct.mailmap_entry** %13, align 8
  %42 = load %struct.mailmap_entry*, %struct.mailmap_entry** %13, align 8
  %43 = getelementptr inbounds %struct.mailmap_entry, %struct.mailmap_entry* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.string_list, %struct.string_list* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %37
  %48 = load %struct.mailmap_entry*, %struct.mailmap_entry** %13, align 8
  %49 = getelementptr inbounds %struct.mailmap_entry, %struct.mailmap_entry* %48, i32 0, i32 0
  %50 = load i8**, i8*** %10, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = load i64*, i64** %11, align 8
  %53 = load i64, i64* %52, align 8
  %54 = call %struct.string_list_item* @lookup_prefix(%struct.string_list* %49, i8* %51, i64 %53)
  store %struct.string_list_item* %54, %struct.string_list_item** %14, align 8
  %55 = load %struct.string_list_item*, %struct.string_list_item** %14, align 8
  %56 = icmp ne %struct.string_list_item* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load %struct.string_list_item*, %struct.string_list_item** %14, align 8
  store %struct.string_list_item* %58, %struct.string_list_item** %12, align 8
  br label %59

59:                                               ; preds = %57, %47
  br label %60

60:                                               ; preds = %59, %37
  br label %61

61:                                               ; preds = %60, %5
  %62 = load %struct.string_list_item*, %struct.string_list_item** %12, align 8
  %63 = icmp ne %struct.string_list_item* %62, null
  br i1 %63, label %64, label %122

64:                                               ; preds = %61
  %65 = load %struct.string_list_item*, %struct.string_list_item** %12, align 8
  %66 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to %struct.mailmap_info*
  store %struct.mailmap_info* %68, %struct.mailmap_info** %15, align 8
  %69 = load %struct.mailmap_info*, %struct.mailmap_info** %15, align 8
  %70 = getelementptr inbounds %struct.mailmap_info, %struct.mailmap_info* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %64
  %74 = load %struct.mailmap_info*, %struct.mailmap_info** %15, align 8
  %75 = getelementptr inbounds %struct.mailmap_info, %struct.mailmap_info* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = icmp eq i8* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = call i32 (i8*, ...) @debug_mm(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %124

80:                                               ; preds = %73, %64
  %81 = load %struct.mailmap_info*, %struct.mailmap_info** %15, align 8
  %82 = getelementptr inbounds %struct.mailmap_info, %struct.mailmap_info* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %94

85:                                               ; preds = %80
  %86 = load %struct.mailmap_info*, %struct.mailmap_info** %15, align 8
  %87 = getelementptr inbounds %struct.mailmap_info, %struct.mailmap_info* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = load i8**, i8*** %8, align 8
  store i8* %88, i8** %89, align 8
  %90 = load i8**, i8*** %8, align 8
  %91 = load i8*, i8** %90, align 8
  %92 = call i64 @strlen(i8* %91)
  %93 = load i64*, i64** %9, align 8
  store i64 %92, i64* %93, align 8
  br label %94

94:                                               ; preds = %85, %80
  %95 = load %struct.mailmap_info*, %struct.mailmap_info** %15, align 8
  %96 = getelementptr inbounds %struct.mailmap_info, %struct.mailmap_info* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %108

99:                                               ; preds = %94
  %100 = load %struct.mailmap_info*, %struct.mailmap_info** %15, align 8
  %101 = getelementptr inbounds %struct.mailmap_info, %struct.mailmap_info* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = load i8**, i8*** %10, align 8
  store i8* %102, i8** %103, align 8
  %104 = load i8**, i8*** %10, align 8
  %105 = load i8*, i8** %104, align 8
  %106 = call i64 @strlen(i8* %105)
  %107 = load i64*, i64** %11, align 8
  store i64 %106, i64* %107, align 8
  br label %108

108:                                              ; preds = %99, %94
  %109 = load i64*, i64** %11, align 8
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = load i8**, i8*** %10, align 8
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @debug_str(i8* %113)
  %115 = load i64*, i64** %9, align 8
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = load i8**, i8*** %8, align 8
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @debug_str(i8* %119)
  %121 = call i32 (i8*, ...) @debug_mm(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %111, i32 %114, i32 %117, i32 %120)
  store i32 1, i32* %6, align 4
  br label %124

122:                                              ; preds = %61
  %123 = call i32 (i8*, ...) @debug_mm(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %124

124:                                              ; preds = %122, %108, %78
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

declare dso_local i32 @debug_mm(i8*, ...) #1

declare dso_local i32 @debug_str(i8*) #1

declare dso_local %struct.string_list_item* @lookup_prefix(%struct.string_list*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
