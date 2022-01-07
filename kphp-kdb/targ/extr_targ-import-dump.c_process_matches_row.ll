; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-import-dump.c_process_matches_row.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-import-dump.c_process_matches_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_proposal = type { i32, i32, i64, i32 }

@L = common dso_local global i32* null, align 8
@mp_question = common dso_local global i64 0, align 8
@S = common dso_local global i8** null, align 8
@I = common dso_local global i64* null, align 8
@mp_id = common dso_local global i64 0, align 8
@user_id = common dso_local global i64 0, align 8
@mp_category = common dso_local global i64 0, align 8
@LEV_TARG_PROPOSAL = common dso_local global i32 0, align 4
@adj_rec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_matches_row() #0 {
  %1 = alloca %struct.lev_proposal*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = load i32*, i32** @L, align 8
  %6 = load i64, i64* @mp_question, align 8
  %7 = getelementptr inbounds i32, i32* %5, i64 %6
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %2, align 4
  %9 = load i8**, i8*** @S, align 8
  %10 = load i64, i64* @mp_question, align 8
  %11 = getelementptr inbounds i8*, i8** %9, i64 %10
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %3, align 8
  %13 = load i64*, i64** @I, align 8
  %14 = load i64, i64* @mp_id, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* @user_id, align 8
  %17 = load i64, i64* @user_id, align 8
  %18 = call i32 @fits(i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %0
  %21 = load i64*, i64** @I, align 8
  %22 = load i64, i64* @mp_category, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %2, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %2, align 4
  %31 = icmp sge i32 %30, 1024
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %26, %20, %0
  br label %75

33:                                               ; preds = %29
  %34 = load i32, i32* %2, align 4
  %35 = add nsw i32 11, %34
  %36 = call %struct.lev_proposal* @write_alloc(i32 %35)
  store %struct.lev_proposal* %36, %struct.lev_proposal** %1, align 8
  %37 = load i32, i32* @LEV_TARG_PROPOSAL, align 4
  %38 = load %struct.lev_proposal*, %struct.lev_proposal** %1, align 8
  %39 = getelementptr inbounds %struct.lev_proposal, %struct.lev_proposal* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load i64, i64* @user_id, align 8
  %41 = load %struct.lev_proposal*, %struct.lev_proposal** %1, align 8
  %42 = getelementptr inbounds %struct.lev_proposal, %struct.lev_proposal* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  %43 = load i32, i32* %2, align 4
  %44 = load %struct.lev_proposal*, %struct.lev_proposal** %1, align 8
  %45 = getelementptr inbounds %struct.lev_proposal, %struct.lev_proposal* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %64, %33
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %2, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %46
  %51 = load i8*, i8** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp slt i32 %56, 32
  br i1 %57, label %58, label %63

58:                                               ; preds = %50
  %59 = load i8*, i8** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  store i8 32, i8* %62, align 1
  br label %63

63:                                               ; preds = %58, %50
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %46

67:                                               ; preds = %46
  %68 = load %struct.lev_proposal*, %struct.lev_proposal** %1, align 8
  %69 = getelementptr inbounds %struct.lev_proposal, %struct.lev_proposal* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %3, align 8
  %72 = call i32 @strcpy(i32 %70, i8* %71)
  %73 = load i32, i32* @adj_rec, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* @adj_rec, align 4
  br label %75

75:                                               ; preds = %67, %32
  ret void
}

declare dso_local i32 @fits(i64) #1

declare dso_local %struct.lev_proposal* @write_alloc(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
