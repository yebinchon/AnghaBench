; ModuleID = '/home/carl/AnghaBench/git/trace2/extr_tr2_tgt_normal.c_fn_init.c'
source_filename = "/home/carl/AnghaBench/git/trace2/extr_tr2_tgt_normal.c_fn_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tr2dst_normal = common dso_local global i32 0, align 4
@TR2_SYSENV_NORMAL_BRIEF = common dso_local global i32 0, align 4
@tr2env_normal_be_brief = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @fn_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fn_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = call i32 @tr2_dst_trace_want(i32* @tr2dst_normal)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* %2, align 4
  store i32 %9, i32* %1, align 4
  br label %28

10:                                               ; preds = %0
  %11 = load i32, i32* @TR2_SYSENV_NORMAL_BRIEF, align 4
  %12 = call i8* @tr2_sysenv_get(i32 %11)
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %10
  %16 = load i8*, i8** %4, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @git_parse_maybe_bool(i8* %21)
  store i32 %22, i32* %3, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  store i32 %25, i32* @tr2env_normal_be_brief, align 4
  br label %26

26:                                               ; preds = %24, %20, %15, %10
  %27 = load i32, i32* %2, align 4
  store i32 %27, i32* %1, align 4
  br label %28

28:                                               ; preds = %26, %8
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

declare dso_local i32 @tr2_dst_trace_want(i32*) #1

declare dso_local i8* @tr2_sysenv_get(i32) #1

declare dso_local i32 @git_parse_maybe_bool(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
