; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_error_failed_squash.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_error_failed_squash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.commit = type { i32 }
%struct.replay_opts = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"could not copy '%s' to '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, %struct.commit*, %struct.replay_opts*, i32, i8*)* @error_failed_squash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @error_failed_squash(%struct.repository* %0, %struct.commit* %1, %struct.replay_opts* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.repository*, align 8
  %8 = alloca %struct.commit*, align 8
  %9 = alloca %struct.replay_opts*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %7, align 8
  store %struct.commit* %1, %struct.commit** %8, align 8
  store %struct.replay_opts* %2, %struct.replay_opts** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %12 = call i8* (...) @rebase_path_message()
  %13 = call i8* (...) @rebase_path_squash_msg()
  %14 = call i64 @copy_file(i8* %12, i8* %13, i32 438)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %5
  %17 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %18 = call i8* (...) @rebase_path_squash_msg()
  %19 = call i8* (...) @rebase_path_message()
  %20 = call i32 @error(i32 %17, i8* %18, i8* %19)
  store i32 %20, i32* %6, align 4
  br label %43

21:                                               ; preds = %5
  %22 = load %struct.repository*, %struct.repository** %7, align 8
  %23 = call i8* @git_path_merge_msg(%struct.repository* %22)
  %24 = call i32 @unlink(i8* %23)
  %25 = load %struct.repository*, %struct.repository** %7, align 8
  %26 = call i8* @git_path_merge_msg(%struct.repository* %25)
  %27 = call i8* (...) @rebase_path_message()
  %28 = call i64 @copy_file(i8* %26, i8* %27, i32 438)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %32 = call i8* (...) @rebase_path_message()
  %33 = load %struct.repository*, %struct.repository** %7, align 8
  %34 = call i8* @git_path_merge_msg(%struct.repository* %33)
  %35 = call i32 @error(i32 %31, i8* %32, i8* %34)
  store i32 %35, i32* %6, align 4
  br label %43

36:                                               ; preds = %21
  %37 = load %struct.repository*, %struct.repository** %7, align 8
  %38 = load %struct.commit*, %struct.commit** %8, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.replay_opts*, %struct.replay_opts** %9, align 8
  %42 = call i32 @error_with_patch(%struct.repository* %37, %struct.commit* %38, i8* %39, i32 %40, %struct.replay_opts* %41, i32 1, i32 0)
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %36, %30, %16
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i64 @copy_file(i8*, i8*, i32) #1

declare dso_local i8* @rebase_path_message(...) #1

declare dso_local i8* @rebase_path_squash_msg(...) #1

declare dso_local i32 @error(i32, i8*, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i8* @git_path_merge_msg(%struct.repository*) #1

declare dso_local i32 @error_with_patch(%struct.repository*, %struct.commit*, i8*, i32, %struct.replay_opts*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
