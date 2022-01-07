; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_create_change_entry_flags.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_create_change_entry_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_change_flags_long = type { i32, i32, i32 }
%struct.lev_generic = type { i32 }
%struct.lev_set_flags = type { i32 }

@create_change_entry_flags.buf = internal global [1024 x i8] zeroinitializer, align 16
@LEV_LI_CHANGE_FLAGS_LONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_change_entry_flags(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.lev_change_flags_long*, align 8
  %10 = alloca %struct.lev_change_flags_long*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.lev_change_flags_long* bitcast ([1024 x i8]* @create_change_entry_flags.buf to %struct.lev_change_flags_long*), %struct.lev_change_flags_long** %9, align 8
  %11 = load i32, i32* @LEV_LI_CHANGE_FLAGS_LONG, align 4
  %12 = load %struct.lev_change_flags_long*, %struct.lev_change_flags_long** %9, align 8
  %13 = getelementptr inbounds %struct.lev_change_flags_long, %struct.lev_change_flags_long* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @FIRST_INT(i32 %14)
  %16 = load %struct.lev_change_flags_long*, %struct.lev_change_flags_long** %9, align 8
  %17 = bitcast %struct.lev_change_flags_long* %16 to %struct.lev_generic*
  %18 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  %19 = load %struct.lev_change_flags_long*, %struct.lev_change_flags_long** %9, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @upcopy_list_object_id(%struct.lev_change_flags_long* %19, i32 %20, i32 %21)
  %23 = load %struct.lev_change_flags_long*, %struct.lev_change_flags_long** %9, align 8
  %24 = call %struct.lev_change_flags_long* @LEV_ADJUST_LO(%struct.lev_change_flags_long* %23)
  store %struct.lev_change_flags_long* %24, %struct.lev_change_flags_long** %10, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.lev_change_flags_long*, %struct.lev_change_flags_long** %10, align 8
  %27 = getelementptr inbounds %struct.lev_change_flags_long, %struct.lev_change_flags_long* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.lev_change_flags_long*, %struct.lev_change_flags_long** %10, align 8
  %30 = getelementptr inbounds %struct.lev_change_flags_long, %struct.lev_change_flags_long* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.lev_change_flags_long*, %struct.lev_change_flags_long** %9, align 8
  %32 = bitcast %struct.lev_change_flags_long* %31 to %struct.lev_set_flags*
  %33 = call i32 @set_entry_flags(%struct.lev_set_flags* %32)
  ret i32 %33
}

declare dso_local i32 @FIRST_INT(i32) #1

declare dso_local i32 @upcopy_list_object_id(%struct.lev_change_flags_long*, i32, i32) #1

declare dso_local %struct.lev_change_flags_long* @LEV_ADJUST_LO(%struct.lev_change_flags_long*) #1

declare dso_local i32 @set_entry_flags(%struct.lev_set_flags*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
