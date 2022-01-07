; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_maccub.c_bcode_iter_get_val.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_maccub.c_bcode_iter_get_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcode_iter_get_val(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sge i32 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %87

15:                                               ; preds = %2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = mul nsw i32 %18, %19
  store i32 %20, i32* %6, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i8*, i8** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = ashr i32 %24, 3
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  store i8* %27, i8** %7, align 8
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, 7
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %30, %33
  %35 = icmp sle i32 %34, 8
  br i1 %35, label %36, label %48

36:                                               ; preds = %15
  %37 = load i8*, i8** %7, align 8
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = load i32, i32* %6, align 4
  %41 = ashr i32 %39, %40
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 1, %44
  %46 = sub nsw i32 %45, 1
  %47 = and i32 %41, %46
  store i32 %47, i32* %3, align 4
  br label %87

48:                                               ; preds = %15
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %7, align 8
  %51 = load i8, i8* %49, align 1
  %52 = zext i8 %51 to i32
  %53 = load i32, i32* %6, align 4
  %54 = ashr i32 %52, %53
  store i32 %54, i32* %8, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = sub nsw i32 8, %58
  %60 = sub nsw i32 %57, %59
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %64, %48
  %62 = load i32, i32* %6, align 4
  %63 = icmp sgt i32 %62, 8
  br i1 %63, label %64, label %74

64:                                               ; preds = %61
  %65 = load i32, i32* %8, align 4
  %66 = shl i32 %65, 8
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %7, align 8
  %69 = load i8, i8* %67, align 1
  %70 = zext i8 %69 to i32
  %71 = add nsw i32 %66, %70
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %6, align 4
  %73 = sub nsw i32 %72, 8
  store i32 %73, i32* %6, align 4
  br label %61

74:                                               ; preds = %61
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %6, align 4
  %77 = shl i32 %75, %76
  %78 = load i8*, i8** %7, align 8
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = load i32, i32* %6, align 4
  %82 = shl i32 1, %81
  %83 = sub nsw i32 %82, 1
  %84 = and i32 %80, %83
  %85 = add nsw i32 %77, %84
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %74, %36, %14
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
