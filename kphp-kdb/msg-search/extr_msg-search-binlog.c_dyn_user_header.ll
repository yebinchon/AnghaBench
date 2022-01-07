; ModuleID = '/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-binlog.c_dyn_user_header.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-binlog.c_dyn_user_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PRIME = common dso_local global i32 0, align 4
@Users = common dso_local global i32* null, align 8
@UserModHeaders = common dso_local global i32** null, align 8
@u_cnt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @dyn_user_header(i32 %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @PRIME, align 4
  %11 = srem i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @PRIME, align 4
  %14 = sub nsw i32 %13, 1
  %15 = srem i32 %12, %14
  %16 = add nsw i32 1, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp sgt i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  br label %21

21:                                               ; preds = %49, %2
  %22 = load i32*, i32** @Users, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load i32*, i32** @Users, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %33, %34
  br label %36

36:                                               ; preds = %28, %21
  %37 = phi i1 [ false, %21 ], [ %35, %28 ]
  br i1 %37, label %38, label %50

38:                                               ; preds = %36
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @PRIME, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i32, i32* @PRIME, align 4
  %47 = load i32, i32* %6, align 4
  %48 = sub nsw i32 %47, %46
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %45, %38
  br label %21

50:                                               ; preds = %36
  %51 = load i32*, i32** @Users, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %50
  %59 = load i32, i32* %5, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i32**, i32*** @UserModHeaders, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  store i32* null, i32** %65, align 8
  br label %66

66:                                               ; preds = %61, %58
  %67 = load i32**, i32*** @UserModHeaders, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %3, align 8
  br label %104

72:                                               ; preds = %50
  %73 = load i32, i32* %5, align 4
  %74 = icmp sle i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32* null, i32** %3, align 8
  br label %104

76:                                               ; preds = %72
  %77 = call i32* @dyn_alloc(i32 4, i32 4)
  store i32* %77, i32** %8, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  store i32* null, i32** %3, align 8
  br label %104

81:                                               ; preds = %76
  %82 = load i32*, i32** %8, align 8
  %83 = call i32 @memset(i32* %82, i32 0, i32 4)
  %84 = load i32, i32* @u_cnt, align 4
  %85 = load i32, i32* @PRIME, align 4
  %86 = mul nsw i32 3, %85
  %87 = sdiv i32 %86, 4
  %88 = icmp sle i32 %84, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  %91 = load i32, i32* @u_cnt, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* @u_cnt, align 4
  %93 = load i32, i32* %4, align 4
  %94 = load i32*, i32** @Users, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %93, i32* %97, align 4
  %98 = load i32*, i32** %8, align 8
  %99 = load i32**, i32*** @UserModHeaders, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32*, i32** %99, i64 %101
  store i32* %98, i32** %102, align 8
  %103 = load i32*, i32** %8, align 8
  store i32* %103, i32** %3, align 8
  br label %104

104:                                              ; preds = %81, %80, %75, %66
  %105 = load i32*, i32** %3, align 8
  ret i32* %105
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @dyn_alloc(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
