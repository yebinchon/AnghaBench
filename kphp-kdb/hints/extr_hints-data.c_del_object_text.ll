; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_del_object_text.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_del_object_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_hints_del_object_text = type { i32, i64 }

@write_only = common dso_local global i64 0, align 8
@no_changes = common dso_local global i64 0, align 8
@stat_global = common dso_local global i32** null, align 8
@global_changes_st = common dso_local global i32 0, align 4
@global_changes_en = common dso_local global i32 0, align 4
@changes_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @del_object_text(%struct.lev_hints_del_object_text* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lev_hints_del_object_text*, align 8
  store %struct.lev_hints_del_object_text* %0, %struct.lev_hints_del_object_text** %3, align 8
  %4 = load %struct.lev_hints_del_object_text*, %struct.lev_hints_del_object_text** %3, align 8
  %5 = getelementptr inbounds %struct.lev_hints_del_object_text, %struct.lev_hints_del_object_text* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = and i32 %6, 255
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.lev_hints_del_object_text*, %struct.lev_hints_del_object_text** %3, align 8
  %11 = getelementptr inbounds %struct.lev_hints_del_object_text, %struct.lev_hints_del_object_text* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @check_object_id(i64 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9, %1
  store i32 0, i32* %2, align 4
  br label %47

16:                                               ; preds = %9
  %17 = load i64, i64* @write_only, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i64, i64* @no_changes, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %16
  store i32 1, i32* %2, align 4
  br label %47

23:                                               ; preds = %19
  %24 = load i32**, i32*** @stat_global, align 8
  %25 = load %struct.lev_hints_del_object_text*, %struct.lev_hints_del_object_text** %3, align 8
  %26 = getelementptr inbounds %struct.lev_hints_del_object_text, %struct.lev_hints_del_object_text* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, 255
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %24, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = load %struct.lev_hints_del_object_text*, %struct.lev_hints_del_object_text** %3, align 8
  %36 = getelementptr inbounds %struct.lev_hints_del_object_text, %struct.lev_hints_del_object_text* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, 255
  %39 = sub nsw i32 0, %38
  %40 = load %struct.lev_hints_del_object_text*, %struct.lev_hints_del_object_text** %3, align 8
  %41 = getelementptr inbounds %struct.lev_hints_del_object_text, %struct.lev_hints_del_object_text* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @chg_list_add_string(i32* @global_changes_st, i32* @global_changes_en, i32 %39, i32 %43, i32* null)
  %45 = load i32, i32* @changes_count, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @changes_count, align 4
  store i32 1, i32* %2, align 4
  br label %47

47:                                               ; preds = %23, %22, %15
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @check_object_id(i64) #1

declare dso_local i32 @chg_list_add_string(i32*, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
