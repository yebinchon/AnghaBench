; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pat_rbtree.c_rbt_memtype_check_insert.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pat_rbtree.c_rbt_memtype_check_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memtype = type { i32, i32, i32, i32 }

@memtype_rbroot = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rbt_memtype_check_insert(%struct.memtype* %0, i32* %1) #0 {
  %3 = alloca %struct.memtype*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.memtype* %0, %struct.memtype** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.memtype*, %struct.memtype** %3, align 8
  %7 = getelementptr inbounds %struct.memtype, %struct.memtype* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.memtype*, %struct.memtype** %3, align 8
  %10 = getelementptr inbounds %struct.memtype, %struct.memtype* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.memtype*, %struct.memtype** %3, align 8
  %13 = getelementptr inbounds %struct.memtype, %struct.memtype* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @memtype_rb_check_conflict(i32* @memtype_rbroot, i32 %8, i32 %11, i32 %14, i32* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.memtype*, %struct.memtype** %3, align 8
  %26 = getelementptr inbounds %struct.memtype, %struct.memtype* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %22, %19
  %28 = load %struct.memtype*, %struct.memtype** %3, align 8
  %29 = getelementptr inbounds %struct.memtype, %struct.memtype* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.memtype*, %struct.memtype** %3, align 8
  %32 = getelementptr inbounds %struct.memtype, %struct.memtype* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.memtype*, %struct.memtype** %3, align 8
  %34 = call i32 @memtype_rb_insert(i32* @memtype_rbroot, %struct.memtype* %33)
  br label %35

35:                                               ; preds = %27, %2
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @memtype_rb_check_conflict(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @memtype_rb_insert(i32*, %struct.memtype*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
