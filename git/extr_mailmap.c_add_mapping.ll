; ModuleID = '/home/carl/AnghaBench/git/extr_mailmap.c_add_mapping.c'
source_filename = "/home/carl/AnghaBench/git/extr_mailmap.c_add_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, i32 }
%struct.mailmap_entry = type { %struct.string_list, i8*, i8* }
%struct.string_list_item = type { %struct.mailmap_info* }
%struct.mailmap_info = type { %struct.string_list, i8*, i8* }

@namemap_cmp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"mailmap: adding (simple) entry for '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"mailmap: adding (complex) entry for '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"mailmap:  '%s' <%s> -> '%s' <%s>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.string_list*, i8*, i8*, i8*, i8*)* @add_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_mapping(%struct.string_list* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.string_list*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.mailmap_entry*, align 8
  %12 = alloca %struct.string_list_item*, align 8
  %13 = alloca %struct.mailmap_info*, align 8
  store %struct.string_list* %0, %struct.string_list** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load i8*, i8** %8, align 8
  store i8* %17, i8** %10, align 8
  store i8* null, i8** %8, align 8
  br label %18

18:                                               ; preds = %16, %5
  %19 = load %struct.string_list*, %struct.string_list** %6, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = call %struct.string_list_item* @string_list_insert(%struct.string_list* %19, i8* %20)
  store %struct.string_list_item* %21, %struct.string_list_item** %12, align 8
  %22 = load %struct.string_list_item*, %struct.string_list_item** %12, align 8
  %23 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %22, i32 0, i32 0
  %24 = load %struct.mailmap_info*, %struct.mailmap_info** %23, align 8
  %25 = icmp ne %struct.mailmap_info* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = load %struct.string_list_item*, %struct.string_list_item** %12, align 8
  %28 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %27, i32 0, i32 0
  %29 = load %struct.mailmap_info*, %struct.mailmap_info** %28, align 8
  %30 = bitcast %struct.mailmap_info* %29 to %struct.mailmap_entry*
  store %struct.mailmap_entry* %30, %struct.mailmap_entry** %11, align 8
  br label %45

31:                                               ; preds = %18
  %32 = call i8* @xcalloc(i32 1, i32 24)
  %33 = bitcast i8* %32 to %struct.mailmap_entry*
  store %struct.mailmap_entry* %33, %struct.mailmap_entry** %11, align 8
  %34 = load %struct.mailmap_entry*, %struct.mailmap_entry** %11, align 8
  %35 = getelementptr inbounds %struct.mailmap_entry, %struct.mailmap_entry* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.string_list, %struct.string_list* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load i32, i32* @namemap_cmp, align 4
  %38 = load %struct.mailmap_entry*, %struct.mailmap_entry** %11, align 8
  %39 = getelementptr inbounds %struct.mailmap_entry, %struct.mailmap_entry* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.string_list, %struct.string_list* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load %struct.mailmap_entry*, %struct.mailmap_entry** %11, align 8
  %42 = bitcast %struct.mailmap_entry* %41 to %struct.mailmap_info*
  %43 = load %struct.string_list_item*, %struct.string_list_item** %12, align 8
  %44 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %43, i32 0, i32 0
  store %struct.mailmap_info* %42, %struct.mailmap_info** %44, align 8
  br label %45

45:                                               ; preds = %31, %26
  %46 = load i8*, i8** %9, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %75

48:                                               ; preds = %45
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 (i8*, i8*, ...) @debug_mm(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %49)
  %51 = load i8*, i8** %7, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load %struct.mailmap_entry*, %struct.mailmap_entry** %11, align 8
  %55 = getelementptr inbounds %struct.mailmap_entry, %struct.mailmap_entry* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @free(i8* %56)
  %58 = load i8*, i8** %7, align 8
  %59 = call i8* @xstrdup(i8* %58)
  %60 = load %struct.mailmap_entry*, %struct.mailmap_entry** %11, align 8
  %61 = getelementptr inbounds %struct.mailmap_entry, %struct.mailmap_entry* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  br label %62

62:                                               ; preds = %53, %48
  %63 = load i8*, i8** %8, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load %struct.mailmap_entry*, %struct.mailmap_entry** %11, align 8
  %67 = getelementptr inbounds %struct.mailmap_entry, %struct.mailmap_entry* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @free(i8* %68)
  %70 = load i8*, i8** %8, align 8
  %71 = call i8* @xstrdup(i8* %70)
  %72 = load %struct.mailmap_entry*, %struct.mailmap_entry** %11, align 8
  %73 = getelementptr inbounds %struct.mailmap_entry, %struct.mailmap_entry* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  br label %74

74:                                               ; preds = %65, %62
  br label %94

75:                                               ; preds = %45
  %76 = call i8* @xcalloc(i32 1, i32 24)
  %77 = bitcast i8* %76 to %struct.mailmap_info*
  store %struct.mailmap_info* %77, %struct.mailmap_info** %13, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = call i32 (i8*, i8*, ...) @debug_mm(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %78)
  %80 = load i8*, i8** %7, align 8
  %81 = call i8* @xstrdup_or_null(i8* %80)
  %82 = load %struct.mailmap_info*, %struct.mailmap_info** %13, align 8
  %83 = getelementptr inbounds %struct.mailmap_info, %struct.mailmap_info* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = call i8* @xstrdup_or_null(i8* %84)
  %86 = load %struct.mailmap_info*, %struct.mailmap_info** %13, align 8
  %87 = getelementptr inbounds %struct.mailmap_info, %struct.mailmap_info* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  %88 = load %struct.mailmap_info*, %struct.mailmap_info** %13, align 8
  %89 = load %struct.mailmap_entry*, %struct.mailmap_entry** %11, align 8
  %90 = getelementptr inbounds %struct.mailmap_entry, %struct.mailmap_entry* %89, i32 0, i32 0
  %91 = load i8*, i8** %9, align 8
  %92 = call %struct.string_list_item* @string_list_insert(%struct.string_list* %90, i8* %91)
  %93 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %92, i32 0, i32 0
  store %struct.mailmap_info* %88, %struct.mailmap_info** %93, align 8
  br label %94

94:                                               ; preds = %75, %74
  %95 = load i8*, i8** %9, align 8
  %96 = call i32 @debug_str(i8* %95)
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to i8*
  %99 = load i8*, i8** %10, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = call i32 @debug_str(i8* %100)
  %102 = load i8*, i8** %8, align 8
  %103 = call i32 @debug_str(i8* %102)
  %104 = call i32 (i8*, i8*, ...) @debug_mm(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %98, i8* %99, i32 %101, i32 %103)
  ret void
}

declare dso_local %struct.string_list_item* @string_list_insert(%struct.string_list*, i8*) #1

declare dso_local i8* @xcalloc(i32, i32) #1

declare dso_local i32 @debug_mm(i8*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @xstrdup_or_null(i8*) #1

declare dso_local i32 @debug_str(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
