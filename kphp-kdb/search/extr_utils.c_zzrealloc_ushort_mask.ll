; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_utils.c_zzrealloc_ushort_mask.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_utils.c_zzrealloc_ushort_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @zzrealloc_ushort_mask(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %4
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @popcount_short(i32 %22)
  %24 = load i32, i32* %9, align 4
  %25 = mul nsw i32 %23, %24
  %26 = call i32 @zzfree(i8* %21, i32 %25)
  br label %27

27:                                               ; preds = %20, %17
  store i8* null, i8** %5, align 8
  br label %92

28:                                               ; preds = %4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @popcount_short(i32 %29)
  %31 = load i32, i32* %9, align 4
  %32 = mul nsw i32 %30, %31
  %33 = call i8* @zzmalloc0(i32 %32)
  store i8* %33, i8** %10, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  store i8* null, i8** %5, align 8
  br label %92

37:                                               ; preds = %28
  %38 = load i8*, i8** %6, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %90

40:                                               ; preds = %37
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %13, align 4
  br label %44

44:                                               ; preds = %85, %40
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %86

47:                                               ; preds = %44
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = sub nsw i32 0, %49
  %51 = and i32 %48, %50
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %13, align 4
  %53 = xor i32 %52, %51
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %81

58:                                               ; preds = %47
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %7, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %58
  %64 = load i8*, i8** %10, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr i8, i8* %64, i64 %66
  %68 = load i8*, i8** %6, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr i8, i8* %68, i64 %70
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @memcpy(i8* %67, i8* %71, i32 %72)
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %63, %58
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %12, align 4
  br label %85

81:                                               ; preds = %47
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %11, align 4
  br label %85

85:                                               ; preds = %81, %77
  br label %44

86:                                               ; preds = %44
  %87 = load i8*, i8** %6, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @zzfree(i8* %87, i32 %88)
  br label %90

90:                                               ; preds = %86, %37
  %91 = load i8*, i8** %10, align 8
  store i8* %91, i8** %5, align 8
  br label %92

92:                                               ; preds = %90, %36, %27
  %93 = load i8*, i8** %5, align 8
  ret i8* %93
}

declare dso_local i32 @zzfree(i8*, i32) #1

declare dso_local i32 @popcount_short(i32) #1

declare dso_local i8* @zzmalloc0(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
