; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-import-dump.c_process_education_row.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-import-dump.c_process_education_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_education = type { i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@I = common dso_local global i8** null, align 8
@ed_user_id = common dso_local global i64 0, align 8
@user_id = common dso_local global i8* null, align 8
@ed_prime = common dso_local global i64 0, align 8
@LEV_TARG_EDUADD_PRIM = common dso_local global i32 0, align 4
@LEV_TARG_EDUADD = common dso_local global i32 0, align 4
@ed_graduation = common dso_local global i64 0, align 8
@ed_chair = common dso_local global i64 0, align 8
@ed_faculty = common dso_local global i64 0, align 8
@ed_university = common dso_local global i64 0, align 8
@ed_city = common dso_local global i64 0, align 8
@ed_country = common dso_local global i64 0, align 8
@ed_form = common dso_local global i64 0, align 8
@ed_status = common dso_local global i64 0, align 8
@adj_rec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_education_row() #0 {
  %1 = alloca %struct.lev_education*, align 8
  %2 = load i8**, i8*** @I, align 8
  %3 = load i64, i64* @ed_user_id, align 8
  %4 = getelementptr inbounds i8*, i8** %2, i64 %3
  %5 = load i8*, i8** %4, align 8
  store i8* %5, i8** @user_id, align 8
  %6 = load i8*, i8** @user_id, align 8
  %7 = call i32 @fits(i8* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  br label %83

10:                                               ; preds = %0
  %11 = call %struct.lev_education* @write_alloc(i32 88)
  store %struct.lev_education* %11, %struct.lev_education** %1, align 8
  %12 = load i8**, i8*** @I, align 8
  %13 = load i64, i64* @ed_prime, align 8
  %14 = getelementptr inbounds i8*, i8** %12, i64 %13
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load i32, i32* @LEV_TARG_EDUADD_PRIM, align 4
  br label %21

19:                                               ; preds = %10
  %20 = load i32, i32* @LEV_TARG_EDUADD, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = load %struct.lev_education*, %struct.lev_education** %1, align 8
  %24 = getelementptr inbounds %struct.lev_education, %struct.lev_education* %23, i32 0, i32 10
  store i32 %22, i32* %24, align 8
  %25 = load i8**, i8*** @I, align 8
  %26 = load i64, i64* @ed_user_id, align 8
  %27 = getelementptr inbounds i8*, i8** %25, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.lev_education*, %struct.lev_education** %1, align 8
  %30 = getelementptr inbounds %struct.lev_education, %struct.lev_education* %29, i32 0, i32 9
  store i8* %28, i8** %30, align 8
  %31 = load i8**, i8*** @I, align 8
  %32 = load i64, i64* @ed_graduation, align 8
  %33 = getelementptr inbounds i8*, i8** %31, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.lev_education*, %struct.lev_education** %1, align 8
  %36 = getelementptr inbounds %struct.lev_education, %struct.lev_education* %35, i32 0, i32 8
  store i8* %34, i8** %36, align 8
  %37 = load i8**, i8*** @I, align 8
  %38 = load i64, i64* @ed_chair, align 8
  %39 = getelementptr inbounds i8*, i8** %37, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.lev_education*, %struct.lev_education** %1, align 8
  %42 = getelementptr inbounds %struct.lev_education, %struct.lev_education* %41, i32 0, i32 7
  store i8* %40, i8** %42, align 8
  %43 = load i8**, i8*** @I, align 8
  %44 = load i64, i64* @ed_faculty, align 8
  %45 = getelementptr inbounds i8*, i8** %43, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.lev_education*, %struct.lev_education** %1, align 8
  %48 = getelementptr inbounds %struct.lev_education, %struct.lev_education* %47, i32 0, i32 6
  store i8* %46, i8** %48, align 8
  %49 = load i8**, i8*** @I, align 8
  %50 = load i64, i64* @ed_university, align 8
  %51 = getelementptr inbounds i8*, i8** %49, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.lev_education*, %struct.lev_education** %1, align 8
  %54 = getelementptr inbounds %struct.lev_education, %struct.lev_education* %53, i32 0, i32 5
  store i8* %52, i8** %54, align 8
  %55 = load i8**, i8*** @I, align 8
  %56 = load i64, i64* @ed_city, align 8
  %57 = getelementptr inbounds i8*, i8** %55, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.lev_education*, %struct.lev_education** %1, align 8
  %60 = getelementptr inbounds %struct.lev_education, %struct.lev_education* %59, i32 0, i32 4
  store i8* %58, i8** %60, align 8
  %61 = load i8**, i8*** @I, align 8
  %62 = load i64, i64* @ed_country, align 8
  %63 = getelementptr inbounds i8*, i8** %61, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.lev_education*, %struct.lev_education** %1, align 8
  %66 = getelementptr inbounds %struct.lev_education, %struct.lev_education* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  %67 = load i8**, i8*** @I, align 8
  %68 = load i64, i64* @ed_form, align 8
  %69 = getelementptr inbounds i8*, i8** %67, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.lev_education*, %struct.lev_education** %1, align 8
  %72 = getelementptr inbounds %struct.lev_education, %struct.lev_education* %71, i32 0, i32 2
  store i8* %70, i8** %72, align 8
  %73 = load i8**, i8*** @I, align 8
  %74 = load i64, i64* @ed_status, align 8
  %75 = getelementptr inbounds i8*, i8** %73, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.lev_education*, %struct.lev_education** %1, align 8
  %78 = getelementptr inbounds %struct.lev_education, %struct.lev_education* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load %struct.lev_education*, %struct.lev_education** %1, align 8
  %80 = getelementptr inbounds %struct.lev_education, %struct.lev_education* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  %81 = load i32, i32* @adj_rec, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* @adj_rec, align 4
  br label %83

83:                                               ; preds = %21, %9
  ret void
}

declare dso_local i32 @fits(i8*) #1

declare dso_local %struct.lev_education* @write_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
