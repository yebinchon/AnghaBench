; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-process-file.c_gen_events.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-process-file.c_gen_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@engineN = common dso_local global i32 0, align 4
@uf = common dso_local global i32 0, align 4
@userN = common dso_local global i32 0, align 4
@v = common dso_local global i32* null, align 8
@max_user_events = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen_events(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1073741823, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %89, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %92

15:                                               ; preds = %11
  store i32 1, i32* %8, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load i32, i32* %9, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %23, %15
  %27 = load i32, i32* %9, align 4
  %28 = icmp sgt i32 %27, 1073741824
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %29, %26
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @engineN, align 4
  %36 = srem i32 %34, %35
  %37 = load i32, i32* @uf, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %89

40:                                               ; preds = %33
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @userN, align 4
  %43 = icmp slt i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %85, %40
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %88

50:                                               ; preds = %46
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %84

54:                                               ; preds = %50
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %85

63:                                               ; preds = %54
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @userN, align 4
  %66 = icmp slt i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %10, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %10, align 4
  %72 = load i32*, i32** @v, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @engineN, align 4
  %75 = sdiv i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %72, i64 %76
  %78 = load i32, i32* %10, align 4
  %79 = mul nsw i32 2, %78
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %79, %80
  %82 = load i32, i32* @max_user_events, align 4
  %83 = call i32 @vct_add_lim(i32* %77, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %63, %50
  br label %85

85:                                               ; preds = %84, %62
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %46

88:                                               ; preds = %46
  br label %89

89:                                               ; preds = %88, %39
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %11

92:                                               ; preds = %11
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vct_add_lim(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
