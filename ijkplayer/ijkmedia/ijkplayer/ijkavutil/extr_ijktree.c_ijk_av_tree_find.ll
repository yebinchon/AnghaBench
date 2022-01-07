; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavutil/extr_ijktree.c_ijk_av_tree_find.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavutil/extr_ijktree.c_ijk_av_tree_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, %struct.TYPE_3__** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ijk_av_tree_find(%struct.TYPE_3__* %0, i8* %1, i32 (i8*, i8*)* %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32 (i8*, i8*)*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 (i8*, i8*)* %2, i32 (i8*, i8*)** %8, align 8
  store i8** %3, i8*** %9, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %74

13:                                               ; preds = %4
  %14 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 %14(i8* %15, i8* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %48

22:                                               ; preds = %13
  %23 = load i8**, i8*** %9, align 8
  %24 = icmp ne i8** %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i8**, i8*** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = lshr i32 %30, 31
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %29, i64 %32
  store i8* %28, i8** %33, align 8
  br label %34

34:                                               ; preds = %25, %22
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = lshr i32 %38, 31
  %40 = xor i32 %39, 1
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %37, i64 %41
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8
  %46 = load i8**, i8*** %9, align 8
  %47 = call i8* @ijk_av_tree_find(%struct.TYPE_3__* %43, i8* %44, i32 (i8*, i8*)* %45, i8** %46)
  store i8* %47, i8** %5, align 8
  br label %75

48:                                               ; preds = %13
  %49 = load i8**, i8*** %9, align 8
  %50 = icmp ne i8** %49, null
  br i1 %50, label %51, label %70

51:                                               ; preds = %48
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %54, i64 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8
  %59 = load i8**, i8*** %9, align 8
  %60 = call i8* @ijk_av_tree_find(%struct.TYPE_3__* %56, i8* %57, i32 (i8*, i8*)* %58, i8** %59)
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %63, i64 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8
  %68 = load i8**, i8*** %9, align 8
  %69 = call i8* @ijk_av_tree_find(%struct.TYPE_3__* %65, i8* %66, i32 (i8*, i8*)* %67, i8** %68)
  br label %70

70:                                               ; preds = %51, %48
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %5, align 8
  br label %75

74:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %75

75:                                               ; preds = %74, %70, %34
  %76 = load i8*, i8** %5, align 8
  ret i8* %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
