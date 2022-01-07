; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-import-dump.c_process_memgroups_row.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-import-dump.c_process_memgroups_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_user_generic = type { i32, i64 }

@I = common dso_local global i32* null, align 8
@mg_group_id = common dso_local global i64 0, align 8
@mg_user_id = common dso_local global i64 0, align 8
@user_id = common dso_local global i32 0, align 4
@MAX_GID = common dso_local global i32 0, align 4
@mg_confirmed = common dso_local global i64 0, align 8
@Gc = common dso_local global i32 0, align 4
@GT = common dso_local global i64* null, align 8
@LEV_TARG_GRTYPE_ADD = common dso_local global i64 0, align 8
@adj_rec = common dso_local global i32 0, align 4
@GA = common dso_local global i64* null, align 8
@GB = common dso_local global i64* null, align 8
@GC = common dso_local global i64* null, align 8
@MAX_GROUPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_memgroups_row() #0 {
  %1 = alloca %struct.lev_user_generic*, align 8
  %2 = alloca i32, align 4
  %3 = load i32*, i32** @I, align 8
  %4 = load i64, i64* @mg_group_id, align 8
  %5 = getelementptr inbounds i32, i32* %3, i64 %4
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %2, align 4
  %7 = load i32*, i32** @I, align 8
  %8 = load i64, i64* @mg_user_id, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* @user_id, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %0
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @MAX_GID, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %27, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @user_id, align 4
  %19 = call i32 @fits(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i32*, i32** @I, align 8
  %23 = load i64, i64* @mg_confirmed, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 2
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %17, %13, %0
  br label %81

28:                                               ; preds = %21
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @Gc, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %28
  %33 = load i64*, i64** @GT, align 8
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %32
  %40 = call %struct.lev_user_generic* @write_alloc(i32 8)
  store %struct.lev_user_generic* %40, %struct.lev_user_generic** %1, align 8
  %41 = load i64, i64* @LEV_TARG_GRTYPE_ADD, align 8
  %42 = load i64*, i64** @GT, align 8
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %41, %46
  %48 = load %struct.lev_user_generic*, %struct.lev_user_generic** %1, align 8
  %49 = getelementptr inbounds %struct.lev_user_generic, %struct.lev_user_generic* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load i32, i32* @user_id, align 4
  %51 = load %struct.lev_user_generic*, %struct.lev_user_generic** %1, align 8
  %52 = getelementptr inbounds %struct.lev_user_generic, %struct.lev_user_generic* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @adj_rec, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @adj_rec, align 4
  br label %55

55:                                               ; preds = %39, %32, %28
  %56 = load i64*, i64** @GA, align 8
  %57 = icmp ne i64* %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = load i64*, i64** @GT, align 8
  store i64* %59, i64** @GA, align 8
  store i64* %59, i64** @GB, align 8
  store i64* %59, i64** @GC, align 8
  br label %60

60:                                               ; preds = %58, %55
  %61 = load i64*, i64** @GC, align 8
  %62 = load i64*, i64** @GT, align 8
  %63 = load i32, i32* @MAX_GROUPS, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = getelementptr inbounds i64, i64* %65, i64 -8
  %67 = icmp ule i64* %61, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %60
  %69 = load i64*, i64** @GC, align 8
  %70 = call i32 @assert(i64* %69)
  %71 = load i32, i32* %2, align 4
  %72 = load i64*, i64** @GC, align 8
  %73 = bitcast i64* %72 to i32*
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* @user_id, align 4
  %76 = load i64*, i64** @GC, align 8
  %77 = bitcast i64* %76 to i32*
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  store i32 %75, i32* %78, align 4
  %79 = load i64*, i64** @GC, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 8
  store i64* %80, i64** @GC, align 8
  br label %81

81:                                               ; preds = %27, %68, %60
  ret void
}

declare dso_local i32 @fits(i32) #1

declare dso_local %struct.lev_user_generic* @write_alloc(i32) #1

declare dso_local i32 @assert(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
