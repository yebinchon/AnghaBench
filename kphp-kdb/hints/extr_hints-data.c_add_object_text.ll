; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_add_object_text.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_add_object_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_hints_add_object_text = type { i8*, i64, i64, i32 }

@write_only = common dso_local global i64 0, align 8
@no_changes = common dso_local global i64 0, align 8
@changes_memory = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"botva %s\0A\00", align 1
@stat_global = common dso_local global i32** null, align 8
@global_changes_st = common dso_local global i32 0, align 4
@global_changes_en = common dso_local global i32 0, align 4
@changes_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_object_text(%struct.lev_hints_add_object_text* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lev_hints_add_object_text*, align 8
  %4 = alloca i8*, align 8
  store %struct.lev_hints_add_object_text* %0, %struct.lev_hints_add_object_text** %3, align 8
  %5 = load %struct.lev_hints_add_object_text*, %struct.lev_hints_add_object_text** %3, align 8
  %6 = getelementptr inbounds %struct.lev_hints_add_object_text, %struct.lev_hints_add_object_text* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @check_type(i64 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load %struct.lev_hints_add_object_text*, %struct.lev_hints_add_object_text** %3, align 8
  %12 = getelementptr inbounds %struct.lev_hints_add_object_text, %struct.lev_hints_add_object_text* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @check_object_id(i64 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = load %struct.lev_hints_add_object_text*, %struct.lev_hints_add_object_text** %3, align 8
  %18 = getelementptr inbounds %struct.lev_hints_add_object_text, %struct.lev_hints_add_object_text* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @check_text_len(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16, %10, %1
  store i32 0, i32* %2, align 4
  br label %81

23:                                               ; preds = %16
  %24 = load i64, i64* @write_only, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* @no_changes, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %23
  store i32 1, i32* %2, align 4
  br label %81

30:                                               ; preds = %26
  %31 = call i64 (...) @dl_get_memory_used()
  %32 = load i32, i32* @changes_memory, align 4
  %33 = sext i32 %32 to i64
  %34 = sub nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* @changes_memory, align 4
  %36 = load %struct.lev_hints_add_object_text*, %struct.lev_hints_add_object_text** %3, align 8
  %37 = getelementptr inbounds %struct.lev_hints_add_object_text, %struct.lev_hints_add_object_text* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i8* @prepare_str(i8* %38)
  store i8* %39, i8** %4, align 8
  %40 = call i64 (...) @dl_get_memory_used()
  %41 = load i32, i32* @changes_memory, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* @changes_memory, align 4
  %45 = load i8*, i8** %4, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %30
  %48 = load i32, i32* @verbosity, align 4
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32, i32* @stderr, align 4
  %52 = load %struct.lev_hints_add_object_text*, %struct.lev_hints_add_object_text** %3, align 8
  %53 = getelementptr inbounds %struct.lev_hints_add_object_text, %struct.lev_hints_add_object_text* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @fprintf(i32 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %50, %47
  store i32 0, i32* %2, align 4
  br label %81

57:                                               ; preds = %30
  %58 = load i32**, i32*** @stat_global, align 8
  %59 = load %struct.lev_hints_add_object_text*, %struct.lev_hints_add_object_text** %3, align 8
  %60 = getelementptr inbounds %struct.lev_hints_add_object_text, %struct.lev_hints_add_object_text* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %58, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = load %struct.lev_hints_add_object_text*, %struct.lev_hints_add_object_text** %3, align 8
  %70 = getelementptr inbounds %struct.lev_hints_add_object_text, %struct.lev_hints_add_object_text* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = load %struct.lev_hints_add_object_text*, %struct.lev_hints_add_object_text** %3, align 8
  %74 = getelementptr inbounds %struct.lev_hints_add_object_text, %struct.lev_hints_add_object_text* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = load i8*, i8** %4, align 8
  %78 = call i32 @chg_list_add_string(i32* @global_changes_st, i32* @global_changes_en, i32 %72, i32 %76, i8* %77)
  %79 = load i32, i32* @changes_count, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* @changes_count, align 4
  store i32 1, i32* %2, align 4
  br label %81

81:                                               ; preds = %57, %56, %29, %22
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @check_type(i64) #1

declare dso_local i32 @check_object_id(i64) #1

declare dso_local i32 @check_text_len(i32) #1

declare dso_local i64 @dl_get_memory_used(...) #1

declare dso_local i8* @prepare_str(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @chg_list_add_string(i32*, i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
