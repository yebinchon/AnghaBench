; ModuleID = '/home/carl/AnghaBench/git/extr_tree-walk.c_update_tree_entry_internal.c'
source_filename = "/home/carl/AnghaBench/git/extr_tree-walk.c_update_tree_entry_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.tree_desc = type { i8*, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.strbuf = type { i32 }

@the_hash_algo = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"too-short tree file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree_desc*, %struct.strbuf*)* @update_tree_entry_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_tree_entry_internal(%struct.tree_desc* %0, %struct.strbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tree_desc*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.tree_desc* %0, %struct.tree_desc** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  %10 = load %struct.tree_desc*, %struct.tree_desc** %4, align 8
  %11 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %6, align 8
  %13 = load %struct.tree_desc*, %struct.tree_desc** %4, align 8
  %14 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = load %struct.tree_desc*, %struct.tree_desc** %4, align 8
  %19 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %17, i64 %22
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_hash_algo, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %24, i64 %28
  store i8* %29, i8** %7, align 8
  %30 = load %struct.tree_desc*, %struct.tree_desc** %4, align 8
  %31 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %8, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = ptrtoint i8* %33 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %2
  %42 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %43 = call i32 @die(i32 %42)
  br label %44

44:                                               ; preds = %41, %2
  %45 = load i8*, i8** %7, align 8
  store i8* %45, i8** %6, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %8, align 8
  %48 = sub i64 %47, %46
  store i64 %48, i64* %8, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load %struct.tree_desc*, %struct.tree_desc** %4, align 8
  %51 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.tree_desc*, %struct.tree_desc** %4, align 8
  %54 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %44
  %58 = load %struct.tree_desc*, %struct.tree_desc** %4, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %62 = call i32 @decode_tree_entry(%struct.tree_desc* %58, i8* %59, i64 %60, %struct.strbuf* %61)
  store i32 %62, i32* %3, align 4
  br label %64

63:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %57
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @decode_tree_entry(%struct.tree_desc*, i8*, i64, %struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
