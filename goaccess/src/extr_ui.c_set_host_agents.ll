; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_ui.c_set_host_agents.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_ui.c_set_host_agents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HOSTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_host_agents(i8* %0, void (i8*, i8*, i32)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca void (i8*, i8*, i32)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store void (i8*, i8*, i32)* %1, void (i8*, i8*, i32)** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @HOSTS, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @ht_get_keymap(i32 %11, i8* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %36

17:                                               ; preds = %3
  %18 = load i32, i32* @HOSTS, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i8* @ht_get_host_agent_list(i32 %18, i32 %19)
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store i32 1, i32* %4, align 4
  br label %36

24:                                               ; preds = %17
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @list_count(i8* %25)
  store i32 %26, i32* %10, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @free(i8* %29)
  store i32 1, i32* %4, align 4
  br label %36

31:                                               ; preds = %24
  %32 = load void (i8*, i8*, i32)*, void (i8*, i8*, i32)** %6, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %10, align 4
  call void %32(i8* %33, i8* %34, i32 %35)
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %31, %28, %23, %16
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @ht_get_keymap(i32, i8*) #1

declare dso_local i8* @ht_get_host_agent_list(i32, i32) #1

declare dso_local i32 @list_count(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
