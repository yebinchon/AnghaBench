; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-data.c_user_unload.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-data.c_user_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@user_table = common dso_local global i32 0, align 4
@users = common dso_local global i32* null, align 8
@cur_users = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @user_unload(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = icmp ne i32* %3, null
  %5 = zext i1 %4 to i32
  %6 = call i32 @assert(i32 %5)
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @user_loaded(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @stderr, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = load i32*, i32** @users, align 8
  %14 = ptrtoint i32* %12 to i64
  %15 = ptrtoint i32* %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 4
  %18 = trunc i64 %17 to i32
  %19 = call i32 @ltbl_get_rev(i32* @user_table, i32 %18)
  %20 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = call i32 @assert(i32 0)
  br label %35

22:                                               ; preds = %1
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @del_user_used(i32* %23)
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @unload_user_metafile(i32* %25)
  %27 = load i32, i32* @cur_users, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* @cur_users, align 4
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @user_loaded(i32* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  br label %35

35:                                               ; preds = %22, %10
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @user_loaded(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @ltbl_get_rev(i32*, i32) #1

declare dso_local i32 @del_user_used(i32*) #1

declare dso_local i32 @unload_user_metafile(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
