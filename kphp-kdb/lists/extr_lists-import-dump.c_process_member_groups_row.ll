; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-import-dump.c_process_member_groups_row.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-import-dump.c_process_member_groups_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I = common dso_local global i8** null, align 8
@mg_group_id = common dso_local global i64 0, align 8
@mg_confirmed = common dso_local global i64 0, align 8
@mg_who_invited = common dso_local global i64 0, align 8
@mg_user_id = common dso_local global i64 0, align 8
@list_id = common dso_local global i8* null, align 8
@Gc = common dso_local global i32 0, align 4
@GT = common dso_local global i32* null, align 8
@LEV_LI_SET_ENTRY = common dso_local global i64 0, align 8
@adj_rec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_member_groups_row() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i8**, i8*** @I, align 8
  %5 = load i64, i64* @mg_group_id, align 8
  %6 = getelementptr inbounds i8*, i8** %4, i64 %5
  %7 = load i8*, i8** %6, align 8
  %8 = ptrtoint i8* %7 to i32
  store i32 %8, i32* %1, align 4
  %9 = load i8**, i8*** @I, align 8
  %10 = load i64, i64* @mg_confirmed, align 8
  %11 = getelementptr inbounds i8*, i8** %9, i64 %10
  %12 = load i8*, i8** %11, align 8
  %13 = ptrtoint i8* %12 to i32
  store i32 %13, i32* %2, align 4
  %14 = load i8**, i8*** @I, align 8
  %15 = load i64, i64* @mg_who_invited, align 8
  %16 = getelementptr inbounds i8*, i8** %14, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = ptrtoint i8* %17 to i32
  store i32 %18, i32* %3, align 4
  %19 = load i8**, i8*** @I, align 8
  %20 = load i64, i64* @mg_user_id, align 8
  %21 = getelementptr inbounds i8*, i8** %19, i64 %20
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** @list_id, align 8
  %23 = load i8*, i8** @list_id, align 8
  %24 = call i64 @conv_uid(i8* %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %0
  %27 = load i8*, i8** @list_id, align 8
  %28 = icmp ule i8* %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %1, align 4
  %31 = icmp sle i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %2, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %2, align 4
  %37 = icmp sgt i32 %36, 2
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %32, %29, %26, %0
  br label %80

39:                                               ; preds = %35
  %40 = load i32, i32* %1, align 4
  %41 = load i32, i32* @Gc, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %39
  %44 = load i32*, i32** @GT, align 8
  %45 = load i32, i32* %1, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* %2, align 4
  %52 = add nsw i32 %51, 4
  store i32 %52, i32* %2, align 4
  br label %62

53:                                               ; preds = %43
  %54 = load i32*, i32** @GT, align 8
  %55 = load i32, i32* %1, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 2
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %80

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %50
  br label %63

63:                                               ; preds = %62, %39
  %64 = load i64, i64* @LEV_LI_SET_ENTRY, align 8
  %65 = load i32, i32* %2, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %64, %66
  %68 = add nsw i64 %67, 1
  %69 = load i32, i32* %1, align 4
  %70 = load i32, i32* %3, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %63
  %73 = load i32, i32* %3, align 4
  br label %75

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %74, %72
  %76 = phi i32 [ %73, %72 ], [ 0, %74 ]
  %77 = call i32 @log_2ints(i64 %68, i32 %69, i32 %76)
  %78 = load i32, i32* @adj_rec, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* @adj_rec, align 4
  br label %80

80:                                               ; preds = %75, %60, %38
  ret void
}

declare dso_local i64 @conv_uid(i8*) #1

declare dso_local i32 @log_2ints(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
