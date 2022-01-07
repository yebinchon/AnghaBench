; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tree_add_child.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tree_add_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i32, i32, %struct.tree** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tree_add_child(%struct.tree* %0, %struct.tree* %1) #0 {
  %3 = alloca %struct.tree*, align 8
  %4 = alloca %struct.tree*, align 8
  %5 = alloca i8**, align 8
  store %struct.tree* %0, %struct.tree** %3, align 8
  store %struct.tree* %1, %struct.tree** %4, align 8
  %6 = load %struct.tree*, %struct.tree** %3, align 8
  %7 = getelementptr inbounds %struct.tree, %struct.tree* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.tree*, %struct.tree** %3, align 8
  %10 = getelementptr inbounds %struct.tree, %struct.tree* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %8, %11
  br i1 %12, label %13, label %60

13:                                               ; preds = %2
  %14 = load %struct.tree*, %struct.tree** %3, align 8
  %15 = getelementptr inbounds %struct.tree, %struct.tree* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 8, %18
  %20 = trunc i64 %19 to i32
  %21 = call i8** @zmalloc(i32 %20)
  store i8** %21, i8*** %5, align 8
  %22 = load i8**, i8*** %5, align 8
  %23 = load %struct.tree*, %struct.tree** %3, align 8
  %24 = getelementptr inbounds %struct.tree, %struct.tree* %23, i32 0, i32 2
  %25 = load %struct.tree**, %struct.tree*** %24, align 8
  %26 = load %struct.tree*, %struct.tree** %3, align 8
  %27 = getelementptr inbounds %struct.tree, %struct.tree* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = mul i64 8, %30
  %32 = trunc i64 %31 to i32
  %33 = call i32 @memcpy(i8** %22, %struct.tree** %25, i32 %32)
  %34 = load %struct.tree*, %struct.tree** %3, align 8
  %35 = getelementptr inbounds %struct.tree, %struct.tree* %34, i32 0, i32 2
  %36 = load %struct.tree**, %struct.tree*** %35, align 8
  %37 = icmp ne %struct.tree** %36, null
  br i1 %37, label %38, label %50

38:                                               ; preds = %13
  %39 = load %struct.tree*, %struct.tree** %3, align 8
  %40 = getelementptr inbounds %struct.tree, %struct.tree* %39, i32 0, i32 2
  %41 = load %struct.tree**, %struct.tree*** %40, align 8
  %42 = load %struct.tree*, %struct.tree** %3, align 8
  %43 = getelementptr inbounds %struct.tree, %struct.tree* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = mul i64 8, %46
  %48 = trunc i64 %47 to i32
  %49 = call i32 @zfree(%struct.tree** %41, i32 %48)
  br label %50

50:                                               ; preds = %38, %13
  %51 = load i8**, i8*** %5, align 8
  %52 = bitcast i8** %51 to i8*
  %53 = bitcast i8* %52 to %struct.tree**
  %54 = load %struct.tree*, %struct.tree** %3, align 8
  %55 = getelementptr inbounds %struct.tree, %struct.tree* %54, i32 0, i32 2
  store %struct.tree** %53, %struct.tree*** %55, align 8
  %56 = load %struct.tree*, %struct.tree** %3, align 8
  %57 = getelementptr inbounds %struct.tree, %struct.tree* %56, i32 0, i32 2
  %58 = load %struct.tree**, %struct.tree*** %57, align 8
  %59 = call i32 @assert(%struct.tree** %58)
  br label %60

60:                                               ; preds = %50, %2
  %61 = load %struct.tree*, %struct.tree** %4, align 8
  %62 = load %struct.tree*, %struct.tree** %3, align 8
  %63 = getelementptr inbounds %struct.tree, %struct.tree* %62, i32 0, i32 2
  %64 = load %struct.tree**, %struct.tree*** %63, align 8
  %65 = load %struct.tree*, %struct.tree** %3, align 8
  %66 = getelementptr inbounds %struct.tree, %struct.tree* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds %struct.tree*, %struct.tree** %64, i64 %69
  store %struct.tree* %61, %struct.tree** %70, align 8
  ret void
}

declare dso_local i8** @zmalloc(i32) #1

declare dso_local i32 @memcpy(i8**, %struct.tree**, i32) #1

declare dso_local i32 @zfree(%struct.tree**, i32) #1

declare dso_local i32 @assert(%struct.tree**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
