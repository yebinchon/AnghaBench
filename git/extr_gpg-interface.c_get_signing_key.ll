; ModuleID = '/home/carl/AnghaBench/git/extr_gpg-interface.c_get_signing_key.c'
source_filename = "/home/carl/AnghaBench/git/extr_gpg-interface.c_get_signing_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@configured_signing_key = common dso_local global i8* null, align 8
@IDENT_STRICT = common dso_local global i32 0, align 4
@IDENT_NO_DATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_signing_key() #0 {
  %1 = alloca i8*, align 8
  %2 = load i8*, i8** @configured_signing_key, align 8
  %3 = icmp ne i8* %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = load i8*, i8** @configured_signing_key, align 8
  store i8* %5, i8** %1, align 8
  br label %11

6:                                                ; preds = %0
  %7 = load i32, i32* @IDENT_STRICT, align 4
  %8 = load i32, i32* @IDENT_NO_DATE, align 4
  %9 = or i32 %7, %8
  %10 = call i8* @git_committer_info(i32 %9)
  store i8* %10, i8** %1, align 8
  br label %11

11:                                               ; preds = %6, %4
  %12 = load i8*, i8** %1, align 8
  ret i8* %12
}

declare dso_local i8* @git_committer_info(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
