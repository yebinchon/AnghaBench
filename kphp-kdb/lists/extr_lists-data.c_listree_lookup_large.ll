; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_listree_lookup_large.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_listree_lookup_large.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8**, i32 }

@NIL = common dso_local global i64 0, align 8
@TF_MINUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_5__*, i32, i32*)* @listree_lookup_large to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @listree_lookup_large(%struct.TYPE_5__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i8**, i8*** %11, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = call i64 @SMALL_NODE(i8* %13)
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @tree_ext_lookup(i64 %14, i32 %15)
  %17 = call i8* @LARGE_NODE(i32 %16)
  store i8* %17, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = call i64 @SMALL_NODE(i8* %18)
  %20 = load i64, i64* @NIL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %3
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @find_rpos_direct(%struct.TYPE_5__* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i8* null, i8** %4, align 8
  br label %53

29:                                               ; preds = %22
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 %32, %33
  store i32 %34, i32* %8, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @get_data_direct(%struct.TYPE_5__* %35, i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @object_id_equal(i32 %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %29
  store i8* null, i8** %4, align 8
  br label %53

42:                                               ; preds = %29
  %43 = load i32, i32* %8, align 4
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  store i8* inttoptr (i64 -1 to i8*), i8** %4, align 8
  br label %53

45:                                               ; preds = %3
  %46 = load i8*, i8** %9, align 8
  %47 = call i64 @NODE_TYPE(i8* %46)
  %48 = load i64, i64* @TF_MINUS, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i8* null, i8** %4, align 8
  br label %53

51:                                               ; preds = %45
  %52 = load i8*, i8** %9, align 8
  store i8* %52, i8** %4, align 8
  br label %53

53:                                               ; preds = %51, %50, %42, %41, %28
  %54 = load i8*, i8** %4, align 8
  ret i8* %54
}

declare dso_local i8* @LARGE_NODE(i32) #1

declare dso_local i32 @tree_ext_lookup(i64, i32) #1

declare dso_local i64 @SMALL_NODE(i8*) #1

declare dso_local i32 @find_rpos_direct(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @object_id_equal(i32, i32) #1

declare dso_local i32 @get_data_direct(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @NODE_TYPE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
