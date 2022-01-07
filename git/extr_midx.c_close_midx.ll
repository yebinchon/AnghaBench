; ModuleID = '/home/carl/AnghaBench/git/extr_midx.c_close_midx.c'
source_filename = "/home/carl/AnghaBench/git/extr_midx.c_close_midx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.multi_pack_index = type { i32, i64, %struct.TYPE_2__**, %struct.TYPE_2__**, i32, i64 }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_midx(%struct.multi_pack_index* %0) #0 {
  %2 = alloca %struct.multi_pack_index*, align 8
  %3 = alloca i64, align 8
  store %struct.multi_pack_index* %0, %struct.multi_pack_index** %2, align 8
  %4 = load %struct.multi_pack_index*, %struct.multi_pack_index** %2, align 8
  %5 = icmp ne %struct.multi_pack_index* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %57

7:                                                ; preds = %1
  %8 = load %struct.multi_pack_index*, %struct.multi_pack_index** %2, align 8
  %9 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = load %struct.multi_pack_index*, %struct.multi_pack_index** %2, align 8
  %13 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @munmap(i8* %11, i32 %14)
  %16 = load %struct.multi_pack_index*, %struct.multi_pack_index** %2, align 8
  %17 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @close(i32 %18)
  %20 = load %struct.multi_pack_index*, %struct.multi_pack_index** %2, align 8
  %21 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %20, i32 0, i32 0
  store i32 -1, i32* %21, align 8
  store i64 0, i64* %3, align 8
  br label %22

22:                                               ; preds = %45, %7
  %23 = load i64, i64* %3, align 8
  %24 = load %struct.multi_pack_index*, %struct.multi_pack_index** %2, align 8
  %25 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %22
  %29 = load %struct.multi_pack_index*, %struct.multi_pack_index** %2, align 8
  %30 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %29, i32 0, i32 3
  %31 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %30, align 8
  %32 = load i64, i64* %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %31, i64 %32
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = icmp ne %struct.TYPE_2__* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  %37 = load %struct.multi_pack_index*, %struct.multi_pack_index** %2, align 8
  %38 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %38, align 8
  %40 = load i64, i64* %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %39, i64 %40
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %36, %28
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %3, align 8
  br label %22

48:                                               ; preds = %22
  %49 = load %struct.multi_pack_index*, %struct.multi_pack_index** %2, align 8
  %50 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %50, align 8
  %52 = call i32 @FREE_AND_NULL(%struct.TYPE_2__** %51)
  %53 = load %struct.multi_pack_index*, %struct.multi_pack_index** %2, align 8
  %54 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %54, align 8
  %56 = call i32 @FREE_AND_NULL(%struct.TYPE_2__** %55)
  br label %57

57:                                               ; preds = %48, %6
  ret void
}

declare dso_local i32 @munmap(i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @FREE_AND_NULL(%struct.TYPE_2__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
