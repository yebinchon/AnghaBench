; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-import-dump.c_process_mempriv_row.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-import-dump.c_process_mempriv_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I = common dso_local global i32* null, align 8
@mp_id = common dso_local global i64 0, align 8
@user_id = common dso_local global i32 0, align 4
@PK_groups_invite = common dso_local global i32 0, align 4
@mp_notify_mail = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"*G*A*0*A/A\00", align 1
@PK_events_invite = common dso_local global i32 0, align 4
@mp_event_privacy = common dso_local global i64 0, align 8
@PK_mail_send = common dso_local global i32 0, align 4
@mp_pm_privacy = common dso_local global i64 0, align 8
@PK_wall_send = common dso_local global i32 0, align 4
@mp_wall_privacy = common dso_local global i64 0, align 8
@PK_graffiti_send = common dso_local global i32 0, align 4
@mp_group_invitations = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"*0*A/A\00", align 1
@PK_photos_with = common dso_local global i32 0, align 4
@mp_photo_privacy = common dso_local global i64 0, align 8
@PK_friends = common dso_local global i32 0, align 4
@mp_friends_privacy = common dso_local global i64 0, align 8
@PK_profile = common dso_local global i32 0, align 4
@mp_profile_privacy = common dso_local global i64 0, align 8
@PK_mobile = common dso_local global i32 0, align 4
@mp_m_privacy = common dso_local global i64 0, align 8
@PK_home = common dso_local global i32 0, align 4
@mp_h_privacy = common dso_local global i64 0, align 8
@PK_icq = common dso_local global i32 0, align 4
@mp_i_privacy = common dso_local global i64 0, align 8
@adj_rec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_mempriv_row() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @I, align 8
  %3 = load i64, i64* @mp_id, align 8
  %4 = getelementptr inbounds i32, i32* %2, i64 %3
  %5 = load i32, i32* %4, align 4
  store i32 %5, i32* @user_id, align 4
  %6 = load i32, i32* @user_id, align 4
  %7 = call i32 @conv_uid(i32 %6)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  br label %80

11:                                               ; preds = %0
  %12 = load i32, i32* @PK_groups_invite, align 4
  %13 = load i32*, i32** @I, align 8
  %14 = load i64, i64* @mp_notify_mail, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @output_conv_privacy(i32 %12, i32 %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @PK_events_invite, align 4
  %19 = load i32*, i32** @I, align 8
  %20 = load i64, i64* @mp_event_privacy, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @output_conv_privacy(i32 %18, i32 %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @PK_mail_send, align 4
  %25 = load i32*, i32** @I, align 8
  %26 = load i64, i64* @mp_pm_privacy, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @output_conv_privacy(i32 %24, i32 %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @PK_wall_send, align 4
  %31 = load i32*, i32** @I, align 8
  %32 = load i64, i64* @mp_wall_privacy, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @output_conv_privacy(i32 %30, i32 %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @PK_graffiti_send, align 4
  %37 = load i32*, i32** @I, align 8
  %38 = load i64, i64* @mp_group_invitations, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @output_conv_privacy(i32 %36, i32 %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @PK_photos_with, align 4
  %43 = load i32*, i32** @I, align 8
  %44 = load i64, i64* @mp_photo_privacy, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @output_conv_privacy(i32 %42, i32 %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @PK_friends, align 4
  %49 = load i32*, i32** @I, align 8
  %50 = load i64, i64* @mp_friends_privacy, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @output_conv_privacy(i32 %48, i32 %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @PK_profile, align 4
  %55 = load i32*, i32** @I, align 8
  %56 = load i64, i64* @mp_profile_privacy, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @output_conv_privacy(i32 %54, i32 %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @PK_mobile, align 4
  %61 = load i32*, i32** @I, align 8
  %62 = load i64, i64* @mp_m_privacy, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @output_conv_privacy(i32 %60, i32 %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* @PK_home, align 4
  %67 = load i32*, i32** @I, align 8
  %68 = load i64, i64* @mp_h_privacy, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @output_conv_privacy(i32 %66, i32 %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* @PK_icq, align 4
  %73 = load i32*, i32** @I, align 8
  %74 = load i64, i64* @mp_i_privacy, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @output_conv_privacy(i32 %72, i32 %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %78 = load i32, i32* @adj_rec, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* @adj_rec, align 4
  br label %80

80:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @conv_uid(i32) #1

declare dso_local i32 @output_conv_privacy(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
