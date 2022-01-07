; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_set_object_type.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_set_object_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_hints_set_object_type = type { i32, i64 }

@write_only = common dso_local global i64 0, align 8
@no_changes = common dso_local global i64 0, align 8
@stat_global = common dso_local global i32** null, align 8
@global_changes_st = common dso_local global i32 0, align 4
@global_changes_en = common dso_local global i32 0, align 4
@changes_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_object_type(%struct.lev_hints_set_object_type* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lev_hints_set_object_type*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lev_hints_set_object_type* %0, %struct.lev_hints_set_object_type** %3, align 8
  %6 = load %struct.lev_hints_set_object_type*, %struct.lev_hints_set_object_type** %3, align 8
  %7 = getelementptr inbounds %struct.lev_hints_set_object_type, %struct.lev_hints_set_object_type* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = ashr i32 %8, 8
  %10 = and i32 %9, 255
  store i32 %10, i32* %4, align 4
  %11 = load %struct.lev_hints_set_object_type*, %struct.lev_hints_set_object_type** %3, align 8
  %12 = getelementptr inbounds %struct.lev_hints_set_object_type, %struct.lev_hints_set_object_type* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 255
  store i32 %14, i32* %5, align 4
  %15 = load %struct.lev_hints_set_object_type*, %struct.lev_hints_set_object_type** %3, align 8
  %16 = getelementptr inbounds %struct.lev_hints_set_object_type, %struct.lev_hints_set_object_type* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @check_object_id(i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %20, %1
  store i32 0, i32* %2, align 4
  br label %57

27:                                               ; preds = %23
  %28 = load i64, i64* @write_only, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* @no_changes, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %30, %27
  store i32 1, i32* %2, align 4
  br label %57

38:                                               ; preds = %33
  %39 = load i32**, i32*** @stat_global, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 256
  %49 = load %struct.lev_hints_set_object_type*, %struct.lev_hints_set_object_type** %3, align 8
  %50 = getelementptr inbounds %struct.lev_hints_set_object_type, %struct.lev_hints_set_object_type* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @chg_list_add_int(i32* @global_changes_st, i32* @global_changes_en, i32 %48, i32 %52, i32 %53)
  %55 = load i32, i32* @changes_count, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* @changes_count, align 4
  store i32 1, i32* %2, align 4
  br label %57

57:                                               ; preds = %38, %37, %26
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @check_object_id(i64) #1

declare dso_local i32 @chg_list_add_int(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
