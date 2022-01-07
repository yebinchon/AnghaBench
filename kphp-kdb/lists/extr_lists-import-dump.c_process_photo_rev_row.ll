; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-import-dump.c_process_photo_rev_row.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-import-dump.c_process_photo_rev_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_generic = type { i32, i32, i32, i32, i32, i32, i64 }

@I = common dso_local global i32* null, align 8
@pr_orig_user = common dso_local global i64 0, align 8
@pr_orig_album = common dso_local global i64 0, align 8
@pr_server = common dso_local global i64 0, align 8
@pr_owner = common dso_local global i64 0, align 8
@pr_id = common dso_local global i64 0, align 8
@L = common dso_local global i64* null, align 8
@pr_photo = common dso_local global i64 0, align 8
@LEV_LI_SET_ENTRY_TEXT = common dso_local global i64 0, align 8
@S = common dso_local global i32* null, align 8
@adj_rec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_photo_rev_row() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.lev_generic*, align 8
  %7 = load i32*, i32** @I, align 8
  %8 = load i64, i64* @pr_orig_user, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %1, align 4
  %11 = load i32*, i32** @I, align 8
  %12 = load i64, i64* @pr_orig_album, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %2, align 4
  %15 = load i32*, i32** @I, align 8
  %16 = load i64, i64* @pr_server, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %3, align 4
  %19 = load i32*, i32** @I, align 8
  %20 = load i64, i64* @pr_owner, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %4, align 4
  %23 = load i32*, i32** @I, align 8
  %24 = load i64, i64* @pr_id, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %1, align 4
  %28 = call i32 @check_id(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %0
  br label %80

31:                                               ; preds = %0
  %32 = load i32, i32* %1, align 4
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @log_x32_set(i32 %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 0, i32 0)
  %38 = load i64*, i64** @L, align 8
  %39 = load i64, i64* @pr_photo, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 24, %41
  %43 = call %struct.lev_generic* @write_alloc(i64 %42)
  store %struct.lev_generic* %43, %struct.lev_generic** %6, align 8
  %44 = load i64, i64* @LEV_LI_SET_ENTRY_TEXT, align 8
  %45 = load i64*, i64** @L, align 8
  %46 = load i64, i64* @pr_photo, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %44, %48
  %50 = load %struct.lev_generic*, %struct.lev_generic** %6, align 8
  %51 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %50, i32 0, i32 6
  store i64 %49, i64* %51, align 8
  %52 = load i32, i32* %1, align 4
  %53 = load %struct.lev_generic*, %struct.lev_generic** %6, align 8
  %54 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %2, align 4
  %56 = load %struct.lev_generic*, %struct.lev_generic** %6, align 8
  %57 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %3, align 4
  %59 = load %struct.lev_generic*, %struct.lev_generic** %6, align 8
  %60 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.lev_generic*, %struct.lev_generic** %6, align 8
  %63 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.lev_generic*, %struct.lev_generic** %6, align 8
  %66 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load %struct.lev_generic*, %struct.lev_generic** %6, align 8
  %68 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %67, i32 0, i32 5
  %69 = load i32*, i32** @S, align 8
  %70 = load i64, i64* @pr_photo, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i64*, i64** @L, align 8
  %74 = load i64, i64* @pr_photo, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @memcpy(i32* %68, i32 %72, i64 %76)
  %78 = load i32, i32* @adj_rec, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* @adj_rec, align 4
  br label %80

80:                                               ; preds = %31, %30
  ret void
}

declare dso_local i32 @check_id(i32) #1

declare dso_local i32 @log_x32_set(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.lev_generic* @write_alloc(i64) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
