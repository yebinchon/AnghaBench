; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-import-dump.c_process_albums_priv_row.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-import-dump.c_process_albums_priv_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I = common dso_local global i64* null, align 8
@al_owner_id = common dso_local global i64 0, align 8
@user_id = common dso_local global i64 0, align 8
@al_user_id = common dso_local global i64 0, align 8
@al_id = common dso_local global i64 0, align 8
@PK_album = common dso_local global i64 0, align 8
@al_type = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"*G*A*0*A/A\00", align 1
@adj_rec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_albums_priv_row() #0 {
  %1 = alloca i32, align 4
  %2 = load i64*, i64** @I, align 8
  %3 = load i64, i64* @al_owner_id, align 8
  %4 = getelementptr inbounds i64, i64* %2, i64 %3
  %5 = load i64, i64* %4, align 8
  store i64 %5, i64* @user_id, align 8
  %6 = load i64, i64* @user_id, align 8
  %7 = call i32 @conv_uid(i64 %6)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %0
  %11 = load i64, i64* @user_id, align 8
  %12 = icmp sle i64 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %10
  %14 = load i64, i64* @user_id, align 8
  %15 = load i64*, i64** @I, align 8
  %16 = load i64, i64* @al_user_id, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %14, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %13
  %21 = load i64*, i64** @I, align 8
  %22 = load i64, i64* @al_id, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = icmp sle i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %13, %10, %0
  br label %41

27:                                               ; preds = %20
  %28 = load i64, i64* @PK_album, align 8
  %29 = load i64*, i64** @I, align 8
  %30 = load i64, i64* @al_id, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %28, %32
  %34 = load i64*, i64** @I, align 8
  %35 = load i64, i64* @al_type, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @output_conv_privacy(i64 %33, i64 %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @adj_rec, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @adj_rec, align 4
  br label %41

41:                                               ; preds = %27, %26
  ret void
}

declare dso_local i32 @conv_uid(i64) #1

declare dso_local i32 @output_conv_privacy(i64, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
