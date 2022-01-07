; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-trees.c_intree_build_from_list.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-trees.c_intree_build_from_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intree_node = type { i32, i8*, i32, i32 }

@intree_build_from_list.st = internal global [128 x i8*] zeroinitializer, align 16
@intree_build_from_list.sty = internal global [128 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @intree_build_from_list(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.intree_node*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.intree_node*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %102

19:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %97, %19
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %100

24:                                               ; preds = %20
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp sgt i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i8* @new_intree_node(i32 %33)
  store i8* %34, i8** %11, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = call %struct.intree_node* @TS_NODE(i8* %35)
  store %struct.intree_node* %36, %struct.intree_node** %12, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %6, align 8
  %39 = load i32, i32* %37, align 4
  %40 = load %struct.intree_node*, %struct.intree_node** %12, align 8
  %41 = getelementptr inbounds %struct.intree_node, %struct.intree_node* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %6, align 8
  %44 = load i32, i32* %42, align 4
  %45 = load %struct.intree_node*, %struct.intree_node** %12, align 8
  %46 = getelementptr inbounds %struct.intree_node, %struct.intree_node* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.intree_node*, %struct.intree_node** %12, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = call i32 @NODE_Y(%struct.intree_node* %47, i8* %48)
  store i32 %49, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %50

50:                                               ; preds = %71, %24
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %78

53:                                               ; preds = %50
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %8, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [128 x i32], [128 x i32]* @intree_build_from_list.sty, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp ule i32 %54, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %53
  %62 = load i32, i32* %8, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [128 x i8*], [128 x i8*]* @intree_build_from_list.st, i64 0, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call %struct.intree_node* @TS_NODE(i8* %66)
  store %struct.intree_node* %67, %struct.intree_node** %15, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = load %struct.intree_node*, %struct.intree_node** %15, align 8
  %70 = getelementptr inbounds %struct.intree_node, %struct.intree_node* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  br label %78

71:                                               ; preds = %53
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [128 x i8*], [128 x i8*]* @intree_build_from_list.st, i64 0, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = ptrtoint i8* %76 to i32
  store i32 %77, i32* %14, align 4
  br label %50

78:                                               ; preds = %61, %50
  %79 = load i32, i32* %14, align 4
  %80 = load %struct.intree_node*, %struct.intree_node** %12, align 8
  %81 = getelementptr inbounds %struct.intree_node, %struct.intree_node* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.intree_node*, %struct.intree_node** %12, align 8
  %83 = getelementptr inbounds %struct.intree_node, %struct.intree_node* %82, i32 0, i32 1
  store i8* null, i8** %83, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [128 x i8*], [128 x i8*]* @intree_build_from_list.st, i64 0, i64 %86
  store i8* %84, i8** %87, align 8
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [128 x i32], [128 x i32]* @intree_build_from_list.sty, i64 0, i64 %90
  store i32 %88, i32* %91, align 4
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  %94 = icmp slt i32 %93, 128
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  br label %97

97:                                               ; preds = %78
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %20

100:                                              ; preds = %20
  %101 = load i8*, i8** getelementptr inbounds ([128 x i8*], [128 x i8*]* @intree_build_from_list.st, i64 0, i64 0), align 16
  store i8* %101, i8** %4, align 8
  br label %102

102:                                              ; preds = %100, %18
  %103 = load i8*, i8** %4, align 8
  ret i8* %103
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @new_intree_node(i32) #1

declare dso_local %struct.intree_node* @TS_NODE(i8*) #1

declare dso_local i32 @NODE_Y(%struct.intree_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
