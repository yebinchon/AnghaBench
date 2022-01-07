; ModuleID = '/home/carl/AnghaBench/git/extr_rerere.c_setup_rerere.c'
source_filename = "/home/carl/AnghaBench/git/extr_rerere.c_setup_rerere.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.string_list = type { i32 }

@RERERE_AUTOUPDATE = common dso_local global i32 0, align 4
@RERERE_NOAUTOUPDATE = common dso_local global i32 0, align 4
@rerere_autoupdate = common dso_local global i32 0, align 4
@RERERE_READONLY = common dso_local global i32 0, align 4
@write_lock = common dso_local global i32 0, align 4
@LOCK_DIE_ON_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_rerere(%struct.repository* %0, %struct.string_list* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.repository*, align 8
  %6 = alloca %struct.string_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %5, align 8
  store %struct.string_list* %1, %struct.string_list** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = call i32 (...) @git_rerere_config()
  %10 = call i32 (...) @is_rerere_enabled()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %44

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @RERERE_AUTOUPDATE, align 4
  %16 = load i32, i32* @RERERE_NOAUTOUPDATE, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %13
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @RERERE_AUTOUPDATE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* @rerere_autoupdate, align 4
  br label %28

28:                                               ; preds = %20, %13
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @RERERE_READONLY, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  br label %39

34:                                               ; preds = %28
  %35 = load %struct.repository*, %struct.repository** %5, align 8
  %36 = call i32 @git_path_merge_rr(%struct.repository* %35)
  %37 = load i32, i32* @LOCK_DIE_ON_ERROR, align 4
  %38 = call i32 @hold_lock_file_for_update(i32* @write_lock, i32 %36, i32 %37)
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %34, %33
  %40 = load %struct.repository*, %struct.repository** %5, align 8
  %41 = load %struct.string_list*, %struct.string_list** %6, align 8
  %42 = call i32 @read_rr(%struct.repository* %40, %struct.string_list* %41)
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %39, %12
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @git_rerere_config(...) #1

declare dso_local i32 @is_rerere_enabled(...) #1

declare dso_local i32 @hold_lock_file_for_update(i32*, i32, i32) #1

declare dso_local i32 @git_path_merge_rr(%struct.repository*) #1

declare dso_local i32 @read_rr(%struct.repository*, %struct.string_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
