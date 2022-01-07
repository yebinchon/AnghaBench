; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-import-dump.c_process_group_members_row.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-import-dump.c_process_group_members_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I = common dso_local global i8** null, align 8
@gm_user_id = common dso_local global i64 0, align 8
@gm_confirmed = common dso_local global i64 0, align 8
@gm_who_invited = common dso_local global i64 0, align 8
@gm_group_id = common dso_local global i64 0, align 8
@list_id = common dso_local global i64 0, align 8
@Gc = common dso_local global i64 0, align 8
@GT = common dso_local global i32* null, align 8
@LEV_LI_SET_ENTRY = common dso_local global i64 0, align 8
@adj_rec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_group_members_row() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i8**, i8*** @I, align 8
  %5 = load i64, i64* @gm_user_id, align 8
  %6 = getelementptr inbounds i8*, i8** %4, i64 %5
  %7 = load i8*, i8** %6, align 8
  %8 = ptrtoint i8* %7 to i32
  store i32 %8, i32* %1, align 4
  %9 = load i8**, i8*** @I, align 8
  %10 = load i64, i64* @gm_confirmed, align 8
  %11 = getelementptr inbounds i8*, i8** %9, i64 %10
  %12 = load i8*, i8** %11, align 8
  %13 = ptrtoint i8* %12 to i32
  store i32 %13, i32* %2, align 4
  %14 = load i8**, i8*** @I, align 8
  %15 = load i64, i64* @gm_who_invited, align 8
  %16 = getelementptr inbounds i8*, i8** %14, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = ptrtoint i8* %17 to i32
  store i32 %18, i32* %3, align 4
  %19 = load i8**, i8*** @I, align 8
  %20 = load i64, i64* @gm_group_id, align 8
  %21 = getelementptr inbounds i8*, i8** %19, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = ptrtoint i8* %22 to i64
  store i64 %23, i64* @list_id, align 8
  %24 = load i64, i64* @list_id, align 8
  %25 = call i64 @conv_uid(i64 %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %0
  %28 = load i64, i64* @list_id, align 8
  %29 = icmp ule i64 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %1, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %2, align 4
  %35 = icmp sle i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %2, align 4
  %38 = icmp sgt i32 %37, 2
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %33, %30, %27, %0
  br label %79

40:                                               ; preds = %36
  %41 = load i64, i64* @list_id, align 8
  %42 = load i64, i64* @Gc, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %40
  %45 = load i32*, i32** @GT, align 8
  %46 = load i64, i64* @list_id, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* %2, align 4
  %52 = add nsw i32 %51, 4
  store i32 %52, i32* %2, align 4
  br label %61

53:                                               ; preds = %44
  %54 = load i32*, i32** @GT, align 8
  %55 = load i64, i64* @list_id, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 2
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %79

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %50
  br label %62

62:                                               ; preds = %61, %40
  %63 = load i64, i64* @LEV_LI_SET_ENTRY, align 8
  %64 = load i32, i32* %2, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = add nsw i64 %66, 1
  %68 = load i32, i32* %1, align 4
  %69 = load i32, i32* %3, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = load i32, i32* %3, align 4
  br label %74

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73, %71
  %75 = phi i32 [ %72, %71 ], [ 0, %73 ]
  %76 = call i32 @log_2ints(i64 %67, i32 %68, i32 %75)
  %77 = load i32, i32* @adj_rec, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* @adj_rec, align 4
  br label %79

79:                                               ; preds = %74, %59, %39
  ret void
}

declare dso_local i64 @conv_uid(i64) #1

declare dso_local i32 @log_2ints(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
