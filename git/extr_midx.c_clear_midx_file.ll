; ModuleID = '/home/carl/AnghaBench/git/extr_midx.c_clear_midx_file.c'
source_filename = "/home/carl/AnghaBench/git/extr_midx.c_clear_midx_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"failed to clear multi-pack-index at %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_midx_file(%struct.repository* %0) #0 {
  %2 = alloca %struct.repository*, align 8
  %3 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %2, align 8
  %4 = load %struct.repository*, %struct.repository** %2, align 8
  %5 = getelementptr inbounds %struct.repository, %struct.repository* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i8* @get_midx_filename(i32 %10)
  store i8* %11, i8** %3, align 8
  %12 = load %struct.repository*, %struct.repository** %2, align 8
  %13 = getelementptr inbounds %struct.repository, %struct.repository* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %1
  %17 = load %struct.repository*, %struct.repository** %2, align 8
  %18 = getelementptr inbounds %struct.repository, %struct.repository* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %16
  %24 = load %struct.repository*, %struct.repository** %2, align 8
  %25 = getelementptr inbounds %struct.repository, %struct.repository* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @close_midx(i32* %28)
  %30 = load %struct.repository*, %struct.repository** %2, align 8
  %31 = getelementptr inbounds %struct.repository, %struct.repository* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %23, %16, %1
  %35 = load i8*, i8** %3, align 8
  %36 = call i64 @remove_path(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @UNLEAK(i8* %39)
  %41 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @die(i32 %41, i8* %42)
  br label %44

44:                                               ; preds = %38, %34
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @free(i8* %45)
  ret void
}

declare dso_local i8* @get_midx_filename(i32) #1

declare dso_local i32 @close_midx(i32*) #1

declare dso_local i64 @remove_path(i8*) #1

declare dso_local i32 @UNLEAK(i8*) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
