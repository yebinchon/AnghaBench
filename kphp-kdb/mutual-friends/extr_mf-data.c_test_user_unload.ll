; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-data.c_test_user_unload.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-data.c_test_user_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"test user unload %d\0A\00", align 1
@cur_users = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_user_unload(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @verbosity, align 4
  %5 = icmp sgt i32 %4, 2
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i32, i32* @stderr, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @fprintf(i32 %7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %8)
  br label %10

10:                                               ; preds = %6, %1
  %11 = load i32, i32* %2, align 4
  %12 = call i32* @conv_uid(i32 %11)
  store i32* %12, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %34

16:                                               ; preds = %10
  %17 = load i32*, i32** %3, align 8
  %18 = call i64 @user_loaded(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @del_user_used(i32* %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @unbind_user_metafile(i32* %23)
  %25 = load i32, i32* @cur_users, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* @cur_users, align 4
  br label %27

27:                                               ; preds = %20, %16
  %28 = load i32*, i32** %3, align 8
  %29 = call i64 @user_loaded(i32* %28)
  %30 = icmp ne i64 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  br label %34

34:                                               ; preds = %27, %15
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32* @conv_uid(i32) #1

declare dso_local i64 @user_loaded(i32*) #1

declare dso_local i32 @del_user_used(i32*) #1

declare dso_local i32 @unbind_user_metafile(i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
