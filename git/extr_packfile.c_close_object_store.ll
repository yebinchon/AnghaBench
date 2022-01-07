; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_close_object_store.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_close_object_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw_object_store = type { i32*, %struct.packed_git* }
%struct.packed_git = type { i64, %struct.packed_git* }

@.str = private unnamed_addr constant [41 x i8] c"want to close pack marked 'do-not-close'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_object_store(%struct.raw_object_store* %0) #0 {
  %2 = alloca %struct.raw_object_store*, align 8
  %3 = alloca %struct.packed_git*, align 8
  store %struct.raw_object_store* %0, %struct.raw_object_store** %2, align 8
  %4 = load %struct.raw_object_store*, %struct.raw_object_store** %2, align 8
  %5 = getelementptr inbounds %struct.raw_object_store, %struct.raw_object_store* %4, i32 0, i32 1
  %6 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  store %struct.packed_git* %6, %struct.packed_git** %3, align 8
  br label %7

7:                                                ; preds = %21, %1
  %8 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %9 = icmp ne %struct.packed_git* %8, null
  br i1 %9, label %10, label %25

10:                                               ; preds = %7
  %11 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %12 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call i32 @BUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %20

17:                                               ; preds = %10
  %18 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %19 = call i32 @close_pack(%struct.packed_git* %18)
  br label %20

20:                                               ; preds = %17, %15
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %23 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %22, i32 0, i32 1
  %24 = load %struct.packed_git*, %struct.packed_git** %23, align 8
  store %struct.packed_git* %24, %struct.packed_git** %3, align 8
  br label %7

25:                                               ; preds = %7
  %26 = load %struct.raw_object_store*, %struct.raw_object_store** %2, align 8
  %27 = getelementptr inbounds %struct.raw_object_store, %struct.raw_object_store* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.raw_object_store*, %struct.raw_object_store** %2, align 8
  %32 = getelementptr inbounds %struct.raw_object_store, %struct.raw_object_store* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @close_midx(i32* %33)
  %35 = load %struct.raw_object_store*, %struct.raw_object_store** %2, align 8
  %36 = getelementptr inbounds %struct.raw_object_store, %struct.raw_object_store* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %30, %25
  %38 = load %struct.raw_object_store*, %struct.raw_object_store** %2, align 8
  %39 = call i32 @close_commit_graph(%struct.raw_object_store* %38)
  ret void
}

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @close_pack(%struct.packed_git*) #1

declare dso_local i32 @close_midx(i32*) #1

declare dso_local i32 @close_commit_graph(%struct.raw_object_store*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
