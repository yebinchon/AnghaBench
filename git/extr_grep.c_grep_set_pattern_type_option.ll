; ModuleID = '/home/carl/AnghaBench/git/extr_grep.c_grep_set_pattern_type_option.c'
source_filename = "/home/carl/AnghaBench/git/extr_grep.c_grep_set_pattern_type_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grep_opt = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.grep_opt*)* @grep_set_pattern_type_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grep_set_pattern_type_option(i32 %0, %struct.grep_opt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.grep_opt*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.grep_opt* %1, %struct.grep_opt** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 131
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %9 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %14 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %13, i32 0, i32 0
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %12, %7, %2
  %16 = load i32, i32* %3, align 4
  switch i32 %16, label %27 [
    i32 128, label %17
    i32 132, label %17
    i32 131, label %18
    i32 130, label %21
    i32 129, label %24
  ]

17:                                               ; preds = %15, %15
  br label %27

18:                                               ; preds = %15
  %19 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %20 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  br label %27

21:                                               ; preds = %15
  %22 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %23 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %22, i32 0, i32 1
  store i32 1, i32* %23, align 4
  br label %27

24:                                               ; preds = %15
  %25 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %26 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %25, i32 0, i32 3
  store i32 1, i32* %26, align 4
  br label %27

27:                                               ; preds = %15, %24, %21, %18, %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
