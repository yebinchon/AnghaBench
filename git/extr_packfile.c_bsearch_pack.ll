; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_bsearch_pack.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_bsearch_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.object_id = type { i32 }
%struct.packed_git = type { i8*, i32 }

@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [47 x i8] c"bsearch_pack called without a valid pack-index\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bsearch_pack(%struct.object_id* %0, %struct.packed_git* %1, i32* %2) #0 {
  %4 = alloca %struct.object_id*, align 8
  %5 = alloca %struct.packed_git*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %4, align 8
  store %struct.packed_git* %1, %struct.packed_git** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %12 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %7, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = call i32 @BUG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %3
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1024
  store i8* %23, i8** %8, align 8
  %24 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %25 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load i32, i32* %9, align 4
  %30 = add i32 %29, 4
  store i32 %30, i32* %10, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 4
  store i8* %32, i8** %8, align 8
  br label %39

33:                                               ; preds = %21
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %10, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 8
  store i8* %36, i8** %7, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 8
  store i8* %38, i8** %8, align 8
  br label %39

39:                                               ; preds = %33, %28
  %40 = load %struct.object_id*, %struct.object_id** %4, align 8
  %41 = getelementptr inbounds %struct.object_id, %struct.object_id* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = bitcast i8* %43 to i32*
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @bsearch_hash(i32 %42, i32* %44, i8* %45, i32 %46, i32* %47)
  ret i32 %48
}

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @bsearch_hash(i32, i32*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
