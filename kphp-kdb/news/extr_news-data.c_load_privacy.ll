; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_load_privacy.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_load_privacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@load_privacy.x = internal global [1048576 x i32] zeroinitializer, align 16
@idx_fd = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"uid = %d, priv_mask = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_privacy(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %2, align 8
  br label %6

6:                                                ; preds = %1, %63
  %7 = load i32, i32* @idx_fd, align 4
  %8 = call i32 @read(i32 %7, i32* getelementptr inbounds ([1048576 x i32], [1048576 x i32]* @load_privacy.x, i64 0, i64 0), i32 1048576)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  br label %64

12:                                               ; preds = %6
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, 7
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %60, %12
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %3, align 4
  %21 = ashr i32 %20, 3
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %63

23:                                               ; preds = %18
  %24 = load i32, i32* @verbosity, align 4
  %25 = icmp sge i32 %24, 3
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load i32, i32* @stderr, align 4
  %28 = load i32, i32* %4, align 4
  %29 = mul nsw i32 2, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [1048576 x i32], [1048576 x i32]* @load_privacy.x, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %4, align 4
  %34 = mul nsw i32 2, %33
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [1048576 x i32], [1048576 x i32]* @load_privacy.x, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @fprintf(i32 %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %38)
  br label %40

40:                                               ; preds = %26, %23
  %41 = load i32, i32* %4, align 4
  %42 = mul nsw i32 2, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [1048576 x i32], [1048576 x i32]* @load_privacy.x, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.TYPE_3__* @get_user_f(i32 %45, i32 1)
  store %struct.TYPE_3__* %46, %struct.TYPE_3__** %5, align 8
  %47 = load i32, i32* %4, align 4
  %48 = mul nsw i32 2, %47
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [1048576 x i32], [1048576 x i32]* @load_privacy.x, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 1
  %59 = call i32 @assert(i32 %58)
  br label %60

60:                                               ; preds = %40
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %18

63:                                               ; preds = %18
  br label %6

64:                                               ; preds = %11
  ret void
}

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local %struct.TYPE_3__* @get_user_f(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
