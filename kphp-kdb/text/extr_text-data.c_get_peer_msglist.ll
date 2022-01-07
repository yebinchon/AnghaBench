; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_get_peer_msglist.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_get_peer_msglist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_peer_msglist.X = internal global i32 0, align 4
@R_cnt = common dso_local global i32 0, align 4
@MAX_RES = common dso_local global i32 0, align 4
@R = common dso_local global i32 0, align 4
@RA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_peer_msglist(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* @R_cnt, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @prepare_peer_msglist(i32 %12, i32 %13, i32* @get_peer_msglist.X)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %5, align 4
  br label %105

19:                                               ; preds = %4
  %20 = call i32 @listree_get_size(i32* @get_peer_msglist.X)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp sge i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %105

28:                                               ; preds = %19
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %5, align 4
  br label %105

36:                                               ; preds = %31
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %8, align 4
  br label %46

43:                                               ; preds = %36
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %43, %39
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %9, align 4
  br label %56

53:                                               ; preds = %46
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %53, %49
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %56
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %8, align 4
  %63 = sub nsw i32 %61, %62
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @MAX_RES, align 4
  %67 = icmp ugt i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i32, i32* @MAX_RES, align 4
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %68, %60
  %71 = load i32, i32* @R, align 4
  store i32 %71, i32* @RA, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @listree_get_range(i32* @get_peer_msglist.X, i32 %72, i32 %73)
  store i32 %74, i32* @R_cnt, align 4
  br label %93

75:                                               ; preds = %56
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = sub nsw i32 %76, %77
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @MAX_RES, align 4
  %82 = icmp ugt i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i32, i32* @MAX_RES, align 4
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %83, %75
  %86 = load i32, i32* @R, align 4
  store i32 %86, i32* @RA, align 4
  %87 = load i32, i32* %10, align 4
  %88 = sub nsw i32 %87, 1
  %89 = load i32, i32* %8, align 4
  %90 = sub nsw i32 %88, %89
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @listree_get_range_rev(i32* @get_peer_msglist.X, i32 %90, i32 %91)
  store i32 %92, i32* @R_cnt, align 4
  br label %93

93:                                               ; preds = %85, %70
  %94 = load i32, i32* @R_cnt, align 4
  %95 = icmp sge i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i32, i32* @R_cnt, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp sle i32 %97, %98
  br label %100

100:                                              ; preds = %96, %93
  %101 = phi i1 [ false, %93 ], [ %99, %96 ]
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %100, %34, %27, %17
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @prepare_peer_msglist(i32, i32, i32*) #1

declare dso_local i32 @listree_get_size(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @listree_get_range(i32*, i32, i32) #1

declare dso_local i32 @listree_get_range_rev(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
