; ModuleID = '/home/carl/AnghaBench/git/extr_tree-walk.c_decode_tree_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_tree-walk.c_decode_tree_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.tree_desc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.strbuf = type { i32 }

@the_hash_algo = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"too-short tree object\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"malformed mode in tree entry\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"empty filename in tree entry\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree_desc*, i8*, i64, %struct.strbuf*)* @decode_tree_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_tree_entry(%struct.tree_desc* %0, i8* %1, i64 %2, %struct.strbuf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tree_desc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.strbuf*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.tree_desc* %0, %struct.tree_desc** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.strbuf* %3, %struct.strbuf** %9, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @the_hash_algo, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %13, align 4
  %17 = load i64, i64* %8, align 8
  %18 = load i32, i32* %13, align 4
  %19 = add i32 %18, 3
  %20 = zext i32 %19 to i64
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %33, label %22

22:                                               ; preds = %4
  %23 = load i8*, i8** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i32, i32* %13, align 4
  %26 = add i32 %25, 1
  %27 = zext i32 %26 to i64
  %28 = sub i64 %24, %27
  %29 = getelementptr inbounds i8, i8* %23, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %22, %4
  %34 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %35 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %36 = call i32 @strbuf_addstr(%struct.strbuf* %34, i32 %35)
  store i32 -1, i32* %5, align 4
  br label %82

37:                                               ; preds = %22
  %38 = load i8*, i8** %7, align 8
  %39 = call i8* @get_mode(i8* %38, i32* %11)
  store i8* %39, i8** %10, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %44 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %45 = call i32 @strbuf_addstr(%struct.strbuf* %43, i32 %44)
  store i32 -1, i32* %5, align 4
  br label %82

46:                                               ; preds = %37
  %47 = load i8*, i8** %10, align 8
  %48 = load i8, i8* %47, align 1
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %52 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %53 = call i32 @strbuf_addstr(%struct.strbuf* %51, i32 %52)
  store i32 -1, i32* %5, align 4
  br label %82

54:                                               ; preds = %46
  %55 = load i8*, i8** %10, align 8
  %56 = call i32 @strlen(i8* %55)
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  %58 = load i8*, i8** %10, align 8
  %59 = load %struct.tree_desc*, %struct.tree_desc** %6, align 8
  %60 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i8* %58, i8** %61, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @canon_mode(i32 %62)
  %64 = load %struct.tree_desc*, %struct.tree_desc** %6, align 8
  %65 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 3
  store i32 %63, i32* %66, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sub i32 %67, 1
  %69 = load %struct.tree_desc*, %struct.tree_desc** %6, align 8
  %70 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 8
  %72 = load %struct.tree_desc*, %struct.tree_desc** %6, align 8
  %73 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i8*, i8** %10, align 8
  %78 = load i32, i32* %12, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = call i32 @hashcpy(i32 %76, i8* %80)
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %54, %50, %42, %33
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @get_mode(i8*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @canon_mode(i32) #1

declare dso_local i32 @hashcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
