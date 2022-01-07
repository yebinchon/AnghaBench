; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_do_change_entry_value.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_do_change_entry_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_set_value = type { i8 }
%struct.lev_generic = type { i32 }

@metafile_mode = common dso_local global i64 0, align 8
@LEV_LI_INCR_VALUE_TINY = common dso_local global i64 0, align 8
@lev_list_object_bytes = common dso_local global i64 0, align 8
@LEV_LI_INCR_VALUE = common dso_local global i64 0, align 8
@LEV_LI_SET_VALUE = common dso_local global i64 0, align 8
@LEV_LI_INCR_VALUE_LONG = common dso_local global i64 0, align 8
@LEV_LI_SET_VALUE_LONG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @do_change_entry_value(i32 %0, i32 %1, i8 signext %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca %struct.lev_set_value*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8 %2, i8* %8, align 1
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @conv_list_id(i32 %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i64 -9223372036854775808, i64* %5, align 8
  br label %75

15:                                               ; preds = %4
  %16 = load i64, i64* @metafile_mode, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @prepare_list_metafile(i32 %19, i32 1)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i64 -9223372036854775808, i64* %5, align 8
  br label %75

23:                                               ; preds = %18, %15
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %23
  %27 = load i8, i8* %8, align 1
  %28 = sext i8 %27 to i32
  %29 = load i8, i8* %8, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load i64, i64* @LEV_LI_INCR_VALUE_TINY, align 8
  %34 = load i8, i8* %8, align 1
  %35 = sext i8 %34 to i32
  %36 = and i32 %35, 255
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %33, %37
  %39 = load i64, i64* @lev_list_object_bytes, align 8
  %40 = add i64 4, %39
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @FIRST_INT(i32 %41)
  %43 = call %struct.lev_set_value* @alloc_log_event(i64 %38, i64 %40, i32 %42)
  store %struct.lev_set_value* %43, %struct.lev_set_value** %10, align 8
  br label %63

44:                                               ; preds = %26, %23
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i64, i64* @LEV_LI_INCR_VALUE, align 8
  br label %51

49:                                               ; preds = %44
  %50 = load i64, i64* @LEV_LI_SET_VALUE, align 8
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i64 [ %48, %47 ], [ %50, %49 ]
  %53 = load i64, i64* @lev_list_object_bytes, align 8
  %54 = add i64 1, %53
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @FIRST_INT(i32 %55)
  %57 = call %struct.lev_set_value* @alloc_log_event(i64 %52, i64 %54, i32 %56)
  store %struct.lev_set_value* %57, %struct.lev_set_value** %10, align 8
  %58 = load i8, i8* %8, align 1
  %59 = load %struct.lev_set_value*, %struct.lev_set_value** %10, align 8
  %60 = call i64 @LEV_ADJUST_LO(%struct.lev_set_value* %59)
  %61 = inttoptr i64 %60 to %struct.lev_set_value*
  %62 = getelementptr inbounds %struct.lev_set_value, %struct.lev_set_value* %61, i32 0, i32 0
  store i8 %58, i8* %62, align 1
  br label %63

63:                                               ; preds = %51, %32
  %64 = load %struct.lev_set_value*, %struct.lev_set_value** %10, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @upcopy_list_object_id(%struct.lev_set_value* %64, i32 %65, i32 %66)
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i8, i8* %8, align 1
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.lev_set_value*, %struct.lev_set_value** %10, align 8
  %73 = bitcast %struct.lev_set_value* %72 to %struct.lev_generic*
  %74 = call i64 @set_incr_entry_value(i32 %68, i32 %69, i8 signext %70, i32 %71, %struct.lev_generic* %73)
  store i64 %74, i64* %5, align 8
  br label %75

75:                                               ; preds = %63, %22, %14
  %76 = load i64, i64* %5, align 8
  ret i64 %76
}

declare dso_local i64 @conv_list_id(i32) #1

declare dso_local i64 @prepare_list_metafile(i32, i32) #1

declare dso_local %struct.lev_set_value* @alloc_log_event(i64, i64, i32) #1

declare dso_local i32 @FIRST_INT(i32) #1

declare dso_local i64 @LEV_ADJUST_LO(%struct.lev_set_value*) #1

declare dso_local i32 @upcopy_list_object_id(%struct.lev_set_value*, i32, i32) #1

declare dso_local i64 @set_incr_entry_value(i32, i32, i8 signext, i32, %struct.lev_generic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
