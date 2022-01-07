; ModuleID = '/home/carl/AnghaBench/git/extr_shallow.c_paint_alloc.c'
source_filename = "/home/carl/AnghaBench/git/extr_shallow.c_paint_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.paint_info = type { i32, i32, i32, i32*, i32 }

@POOL_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"pool size too small for %d in paint_alloc()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.paint_info*)* @paint_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @paint_alloc(%struct.paint_info* %0) #0 {
  %2 = alloca %struct.paint_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.paint_info* %0, %struct.paint_info** %2, align 8
  %6 = load %struct.paint_info*, %struct.paint_info** %2, align 8
  %7 = getelementptr inbounds %struct.paint_info, %struct.paint_info* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @DIV_ROUND_UP(i32 %8, i32 32)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = zext i32 %10 to i64
  %12 = mul i64 %11, 1
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %4, align 4
  %14 = load %struct.paint_info*, %struct.paint_info** %2, align 8
  %15 = getelementptr inbounds %struct.paint_info, %struct.paint_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.paint_info*, %struct.paint_info** %2, align 8
  %21 = getelementptr inbounds %struct.paint_info, %struct.paint_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.paint_info*, %struct.paint_info** %2, align 8
  %24 = getelementptr inbounds %struct.paint_info, %struct.paint_info* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = sub i32 %22, %25
  %27 = icmp ugt i32 %19, %26
  br i1 %27, label %28, label %70

28:                                               ; preds = %18, %1
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @POOL_SIZE, align 4
  %31 = icmp ugt i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @BUG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %32, %28
  %36 = load %struct.paint_info*, %struct.paint_info** %2, align 8
  %37 = getelementptr inbounds %struct.paint_info, %struct.paint_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = load %struct.paint_info*, %struct.paint_info** %2, align 8
  %41 = getelementptr inbounds %struct.paint_info, %struct.paint_info* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.paint_info*, %struct.paint_info** %2, align 8
  %44 = getelementptr inbounds %struct.paint_info, %struct.paint_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @REALLOC_ARRAY(i32* %42, i32 %45)
  %47 = load i32, i32* @POOL_SIZE, align 4
  %48 = call i32 @xmalloc(i32 %47)
  %49 = load %struct.paint_info*, %struct.paint_info** %2, align 8
  %50 = getelementptr inbounds %struct.paint_info, %struct.paint_info* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.paint_info*, %struct.paint_info** %2, align 8
  %52 = getelementptr inbounds %struct.paint_info, %struct.paint_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.paint_info*, %struct.paint_info** %2, align 8
  %55 = getelementptr inbounds %struct.paint_info, %struct.paint_info* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.paint_info*, %struct.paint_info** %2, align 8
  %58 = getelementptr inbounds %struct.paint_info, %struct.paint_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %56, i64 %61
  store i32 %53, i32* %62, align 4
  %63 = load %struct.paint_info*, %struct.paint_info** %2, align 8
  %64 = getelementptr inbounds %struct.paint_info, %struct.paint_info* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @POOL_SIZE, align 4
  %67 = add i32 %65, %66
  %68 = load %struct.paint_info*, %struct.paint_info** %2, align 8
  %69 = getelementptr inbounds %struct.paint_info, %struct.paint_info* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %35, %18
  %71 = load %struct.paint_info*, %struct.paint_info** %2, align 8
  %72 = getelementptr inbounds %struct.paint_info, %struct.paint_info* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = zext i32 %73 to i64
  %75 = inttoptr i64 %74 to i8*
  store i8* %75, i8** %5, align 8
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.paint_info*, %struct.paint_info** %2, align 8
  %78 = getelementptr inbounds %struct.paint_info, %struct.paint_info* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = add i32 %79, %76
  store i32 %80, i32* %78, align 8
  %81 = load i8*, i8** %5, align 8
  ret i8* %81
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @BUG(i8*, i32) #1

declare dso_local i32 @REALLOC_ARRAY(i32*, i32) #1

declare dso_local i32 @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
