; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_rec_max_clique.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_rec_max_clique.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32, i32, i32, i32*, i32*)* @rec_max_clique to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rec_max_clique(i32 %0, i32* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %7
  %20 = load i32, i32* %12, align 4
  %21 = load i32*, i32** %13, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i32, i32* %12, align 4
  %26 = load i32*, i32** %13, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32*, i32** %14, align 8
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %24, %19
  br label %77

30:                                               ; preds = %7
  %31 = load i32, i32* %8, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 1
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32*, i32** %13, align 8
  %38 = load i32*, i32** %14, align 8
  call void @rec_max_clique(i32 %31, i32* %32, i32 %34, i32 %35, i32 %36, i32* %37, i32* %38)
  store i32 0, i32* %15, align 4
  br label %39

39:                                               ; preds = %61, %30
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %39
  %44 = load i32, i32* %15, align 4
  %45 = shl i32 1, %44
  %46 = load i32, i32* %11, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %43
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %15, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %10, align 4
  %56 = shl i32 1, %55
  %57 = and i32 %54, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %49
  br label %77

60:                                               ; preds = %49, %43
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %15, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %15, align 4
  br label %39

64:                                               ; preds = %39
  %65 = load i32, i32* %8, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %10, align 4
  %71 = shl i32 1, %70
  %72 = or i32 %69, %71
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  %75 = load i32*, i32** %13, align 8
  %76 = load i32*, i32** %14, align 8
  call void @rec_max_clique(i32 %65, i32* %66, i32 %68, i32 %72, i32 %74, i32* %75, i32* %76)
  br label %77

77:                                               ; preds = %64, %59, %29
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
