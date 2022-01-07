; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_is_user_in_group.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_is_user_in_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user = type { %struct.user_groups* }
%struct.user_groups = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_user_in_group(%struct.user* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.user*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.user_groups*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.user* %0, %struct.user** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.user*, %struct.user** %4, align 8
  %11 = getelementptr inbounds %struct.user, %struct.user* %10, i32 0, i32 0
  %12 = load %struct.user_groups*, %struct.user_groups** %11, align 8
  store %struct.user_groups* %12, %struct.user_groups** %6, align 8
  %13 = load %struct.user_groups*, %struct.user_groups** %6, align 8
  %14 = icmp ne %struct.user_groups* %13, null
  br i1 %14, label %15, label %58

15:                                               ; preds = %2
  store i32 -1, i32* %7, align 4
  %16 = load %struct.user_groups*, %struct.user_groups** %6, align 8
  %17 = getelementptr inbounds %struct.user_groups, %struct.user_groups* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %42, %15
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = sub nsw i32 %20, %21
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %43

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %25, %26
  %28 = ashr i32 %27, 1
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.user_groups*, %struct.user_groups** %6, align 8
  %31 = getelementptr inbounds %struct.user_groups, %struct.user_groups* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %29, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %24
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %8, align 4
  br label %42

40:                                               ; preds = %24
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %40, %38
  br label %19

43:                                               ; preds = %19
  %44 = load i32, i32* %7, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %43
  %47 = load %struct.user_groups*, %struct.user_groups** %6, align 8
  %48 = getelementptr inbounds %struct.user_groups, %struct.user_groups* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  store i32 1, i32* %3, align 4
  br label %59

57:                                               ; preds = %46, %43
  br label %58

58:                                               ; preds = %57, %2
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %56
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
