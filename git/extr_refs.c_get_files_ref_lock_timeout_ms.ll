; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_get_files_ref_lock_timeout_ms.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_get_files_ref_lock_timeout_ms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_files_ref_lock_timeout_ms.configured = internal global i32 0, align 4
@get_files_ref_lock_timeout_ms.timeout_ms = internal global i32 100, align 4
@.str = private unnamed_addr constant [25 x i8] c"core.filesreflocktimeout\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_files_ref_lock_timeout_ms() #0 {
  %1 = load i32, i32* @get_files_ref_lock_timeout_ms.configured, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = call i32 @git_config_get_int(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* @get_files_ref_lock_timeout_ms.timeout_ms)
  store i32 1, i32* @get_files_ref_lock_timeout_ms.configured, align 4
  br label %5

5:                                                ; preds = %3, %0
  %6 = load i32, i32* @get_files_ref_lock_timeout_ms.timeout_ms, align 4
  %7 = sext i32 %6 to i64
  ret i64 %7
}

declare dso_local i32 @git_config_get_int(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
