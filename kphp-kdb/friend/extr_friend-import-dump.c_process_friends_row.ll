; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-import-dump.c_process_friends_row.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-import-dump.c_process_friends_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.friend = type { i32, i32, %struct.friend* }
%struct.lev_add_friend = type { i32, i32, i32, i32 }

@I = common dso_local global i32* null, align 8
@fr_friend_id = common dso_local global i64 0, align 8
@user_id = common dso_local global i32 0, align 4
@fr_user_id = common dso_local global i64 0, align 8
@fr_confirmed = common dso_local global i64 0, align 8
@Friends = common dso_local global %struct.friend** null, align 8
@fr_cat = common dso_local global i64 0, align 8
@adj_rec = common dso_local global i32 0, align 4
@LEV_FR_ADD_FRIENDREQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_friends_row() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.friend*, align 8
  %4 = alloca %struct.lev_add_friend*, align 8
  %5 = load i32*, i32** @I, align 8
  %6 = load i64, i64* @fr_friend_id, align 8
  %7 = getelementptr inbounds i32, i32* %5, i64 %6
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* @user_id, align 4
  %9 = load i32*, i32** @I, align 8
  %10 = load i64, i64* @fr_user_id, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* @user_id, align 4
  %14 = call i32 @conv_uid(i32 %13)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %0
  %18 = load i32, i32* %1, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %0
  br label %82

21:                                               ; preds = %17
  %22 = load i32*, i32** @I, align 8
  %23 = load i64, i64* @fr_confirmed, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %54

27:                                               ; preds = %21
  %28 = call %struct.friend* @gmalloc(i32 16)
  store %struct.friend* %28, %struct.friend** %3, align 8
  %29 = load %struct.friend**, %struct.friend*** @Friends, align 8
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.friend*, %struct.friend** %29, i64 %31
  %33 = load %struct.friend*, %struct.friend** %32, align 8
  %34 = load %struct.friend*, %struct.friend** %3, align 8
  %35 = getelementptr inbounds %struct.friend, %struct.friend* %34, i32 0, i32 2
  store %struct.friend* %33, %struct.friend** %35, align 8
  %36 = load i32, i32* %1, align 4
  %37 = load %struct.friend*, %struct.friend** %3, align 8
  %38 = getelementptr inbounds %struct.friend, %struct.friend* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32*, i32** @I, align 8
  %40 = load i64, i64* @fr_cat, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 510
  %44 = or i32 %43, 1
  %45 = load %struct.friend*, %struct.friend** %3, align 8
  %46 = getelementptr inbounds %struct.friend, %struct.friend* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.friend*, %struct.friend** %3, align 8
  %48 = load %struct.friend**, %struct.friend*** @Friends, align 8
  %49 = load i32, i32* %2, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.friend*, %struct.friend** %48, i64 %50
  store %struct.friend* %47, %struct.friend** %51, align 8
  %52 = load i32, i32* @adj_rec, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* @adj_rec, align 4
  br label %82

54:                                               ; preds = %21
  %55 = load i32*, i32** @I, align 8
  %56 = load i64, i64* @fr_confirmed, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %81, label %60

60:                                               ; preds = %54
  %61 = call %struct.lev_add_friend* @write_alloc(i32 16)
  store %struct.lev_add_friend* %61, %struct.lev_add_friend** %4, align 8
  %62 = load i32, i32* @LEV_FR_ADD_FRIENDREQ, align 4
  %63 = load %struct.lev_add_friend*, %struct.lev_add_friend** %4, align 8
  %64 = getelementptr inbounds %struct.lev_add_friend, %struct.lev_add_friend* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @user_id, align 4
  %66 = load %struct.lev_add_friend*, %struct.lev_add_friend** %4, align 8
  %67 = getelementptr inbounds %struct.lev_add_friend, %struct.lev_add_friend* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %1, align 4
  %69 = load %struct.lev_add_friend*, %struct.lev_add_friend** %4, align 8
  %70 = getelementptr inbounds %struct.lev_add_friend, %struct.lev_add_friend* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load i32*, i32** @I, align 8
  %72 = load i64, i64* @fr_cat, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 510
  %76 = or i32 %75, 1
  %77 = load %struct.lev_add_friend*, %struct.lev_add_friend** %4, align 8
  %78 = getelementptr inbounds %struct.lev_add_friend, %struct.lev_add_friend* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @adj_rec, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* @adj_rec, align 4
  br label %81

81:                                               ; preds = %60, %54
  br label %82

82:                                               ; preds = %20, %81, %27
  ret void
}

declare dso_local i32 @conv_uid(i32) #1

declare dso_local %struct.friend* @gmalloc(i32) #1

declare dso_local %struct.lev_add_friend* @write_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
