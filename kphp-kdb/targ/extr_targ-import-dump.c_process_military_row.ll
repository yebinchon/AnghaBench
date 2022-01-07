; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-import-dump.c_process_military_row.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-import-dump.c_process_military_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_military = type { i8*, i8*, i8*, i8*, i32 }

@I = common dso_local global i8** null, align 8
@mi_member_id = common dso_local global i64 0, align 8
@user_id = common dso_local global i8* null, align 8
@LEV_TARG_MIL_ADD = common dso_local global i32 0, align 4
@mi_unit_id = common dso_local global i64 0, align 8
@mi_started = common dso_local global i64 0, align 8
@mi_finished = common dso_local global i64 0, align 8
@adj_rec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_military_row() #0 {
  %1 = alloca %struct.lev_military*, align 8
  %2 = load i8**, i8*** @I, align 8
  %3 = load i64, i64* @mi_member_id, align 8
  %4 = getelementptr inbounds i8*, i8** %2, i64 %3
  %5 = load i8*, i8** %4, align 8
  store i8* %5, i8** @user_id, align 8
  %6 = load i8*, i8** @user_id, align 8
  %7 = call i32 @fits(i8* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  br label %41

10:                                               ; preds = %0
  %11 = call %struct.lev_military* @write_alloc(i32 40)
  store %struct.lev_military* %11, %struct.lev_military** %1, align 8
  %12 = load i32, i32* @LEV_TARG_MIL_ADD, align 4
  %13 = load %struct.lev_military*, %struct.lev_military** %1, align 8
  %14 = getelementptr inbounds %struct.lev_military, %struct.lev_military* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 8
  %15 = load i8**, i8*** @I, align 8
  %16 = load i64, i64* @mi_member_id, align 8
  %17 = getelementptr inbounds i8*, i8** %15, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.lev_military*, %struct.lev_military** %1, align 8
  %20 = getelementptr inbounds %struct.lev_military, %struct.lev_military* %19, i32 0, i32 3
  store i8* %18, i8** %20, align 8
  %21 = load i8**, i8*** @I, align 8
  %22 = load i64, i64* @mi_unit_id, align 8
  %23 = getelementptr inbounds i8*, i8** %21, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.lev_military*, %struct.lev_military** %1, align 8
  %26 = getelementptr inbounds %struct.lev_military, %struct.lev_military* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load i8**, i8*** @I, align 8
  %28 = load i64, i64* @mi_started, align 8
  %29 = getelementptr inbounds i8*, i8** %27, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.lev_military*, %struct.lev_military** %1, align 8
  %32 = getelementptr inbounds %struct.lev_military, %struct.lev_military* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load i8**, i8*** @I, align 8
  %34 = load i64, i64* @mi_finished, align 8
  %35 = getelementptr inbounds i8*, i8** %33, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.lev_military*, %struct.lev_military** %1, align 8
  %38 = getelementptr inbounds %struct.lev_military, %struct.lev_military* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* @adj_rec, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @adj_rec, align 4
  br label %41

41:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @fits(i8*) #1

declare dso_local %struct.lev_military* @write_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
