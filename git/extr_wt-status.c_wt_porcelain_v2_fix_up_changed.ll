; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_wt_porcelain_v2_fix_up_changed.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_wt_porcelain_v2_fix_up_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list_item = type { %struct.wt_status_change_data* }
%struct.wt_status_change_data = type { i64, i64, i64, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.string_list_item*)* @wt_porcelain_v2_fix_up_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wt_porcelain_v2_fix_up_changed(%struct.string_list_item* %0) #0 {
  %2 = alloca %struct.string_list_item*, align 8
  %3 = alloca %struct.wt_status_change_data*, align 8
  store %struct.string_list_item* %0, %struct.string_list_item** %2, align 8
  %4 = load %struct.string_list_item*, %struct.string_list_item** %2, align 8
  %5 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %4, i32 0, i32 0
  %6 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %5, align 8
  store %struct.wt_status_change_data* %6, %struct.wt_status_change_data** %3, align 8
  %7 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %3, align 8
  %8 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %1
  %12 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %3, align 8
  %13 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %3, align 8
  %19 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %3, align 8
  %22 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %3, align 8
  %24 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %23, i32 0, i32 5
  %25 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %3, align 8
  %26 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %25, i32 0, i32 4
  %27 = call i32 @oidcpy(i32* %24, i32* %26)
  br label %28

28:                                               ; preds = %11, %1
  %29 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %3, align 8
  %30 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %28
  %34 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %3, align 8
  %35 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %3, align 8
  %41 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %3, align 8
  %44 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %33, %28
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @oidcpy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
