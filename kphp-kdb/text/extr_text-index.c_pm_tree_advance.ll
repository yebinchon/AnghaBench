; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_pm_tree_advance.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_pm_tree_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm_tree_builder = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.pm_tree_builder*)* @pm_tree_advance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm_tree_advance(i32* %0, %struct.pm_tree_builder* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.pm_tree_builder*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.pm_tree_builder* %1, %struct.pm_tree_builder** %4, align 8
  %5 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %6 = getelementptr inbounds %struct.pm_tree_builder, %struct.pm_tree_builder* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %12 = call i32 @pm_tree_advb(i32* %10, %struct.pm_tree_builder* %11)
  br label %17

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %16 = call i32 @pm_tree_adva(i32* %14, %struct.pm_tree_builder* %15)
  br label %17

17:                                               ; preds = %13, %9
  ret void
}

declare dso_local i32 @pm_tree_advb(i32*, %struct.pm_tree_builder*) #1

declare dso_local i32 @pm_tree_adva(i32*, %struct.pm_tree_builder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
