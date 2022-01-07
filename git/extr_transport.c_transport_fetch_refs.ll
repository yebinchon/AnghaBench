; ModuleID = '/home/carl/AnghaBench/git/extr_transport.c_transport_fetch_refs.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport.c_transport_fetch_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transport = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.transport*, i32, %struct.ref**)* }
%struct.ref = type { %struct.ref*, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @transport_fetch_refs(%struct.transport* %0, %struct.ref* %1) #0 {
  %3 = alloca %struct.transport*, align 8
  %4 = alloca %struct.ref*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ref**, align 8
  %10 = alloca %struct.ref*, align 8
  store %struct.transport* %0, %struct.transport** %3, align 8
  store %struct.ref* %1, %struct.ref** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store %struct.ref** null, %struct.ref*** %9, align 8
  %11 = load %struct.ref*, %struct.ref** %4, align 8
  store %struct.ref* %11, %struct.ref** %10, align 8
  br label %12

12:                                               ; preds = %49, %2
  %13 = load %struct.ref*, %struct.ref** %10, align 8
  %14 = icmp ne %struct.ref* %13, null
  br i1 %14, label %15, label %53

15:                                               ; preds = %12
  %16 = load i32, i32* %8, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %8, align 4
  %18 = load %struct.ref*, %struct.ref** %10, align 8
  %19 = getelementptr inbounds %struct.ref, %struct.ref* %18, i32 0, i32 2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %22, label %37

22:                                               ; preds = %15
  %23 = load %struct.ref*, %struct.ref** %10, align 8
  %24 = getelementptr inbounds %struct.ref, %struct.ref* %23, i32 0, i32 1
  %25 = call i32 @is_null_oid(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %22
  %28 = load %struct.ref*, %struct.ref** %10, align 8
  %29 = getelementptr inbounds %struct.ref, %struct.ref* %28, i32 0, i32 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load %struct.ref*, %struct.ref** %10, align 8
  %33 = getelementptr inbounds %struct.ref, %struct.ref* %32, i32 0, i32 1
  %34 = call i64 @oideq(i32* %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %49

37:                                               ; preds = %27, %22, %15
  %38 = load %struct.ref**, %struct.ref*** %9, align 8
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @ALLOC_GROW(%struct.ref** %38, i32 %40, i32 %41)
  %43 = load %struct.ref*, %struct.ref** %10, align 8
  %44 = load %struct.ref**, %struct.ref*** %9, align 8
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds %struct.ref*, %struct.ref** %44, i64 %47
  store %struct.ref* %43, %struct.ref** %48, align 8
  br label %49

49:                                               ; preds = %37, %36
  %50 = load %struct.ref*, %struct.ref** %10, align 8
  %51 = getelementptr inbounds %struct.ref, %struct.ref* %50, i32 0, i32 0
  %52 = load %struct.ref*, %struct.ref** %51, align 8
  store %struct.ref* %52, %struct.ref** %10, align 8
  br label %12

53:                                               ; preds = %12
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %76, label %56

56:                                               ; preds = %53
  %57 = load %struct.ref**, %struct.ref*** %9, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @ALLOC_ARRAY(%struct.ref** %57, i32 %58)
  %60 = load %struct.ref*, %struct.ref** %4, align 8
  store %struct.ref* %60, %struct.ref** %10, align 8
  br label %61

61:                                               ; preds = %71, %56
  %62 = load %struct.ref*, %struct.ref** %10, align 8
  %63 = icmp ne %struct.ref* %62, null
  br i1 %63, label %64, label %75

64:                                               ; preds = %61
  %65 = load %struct.ref*, %struct.ref** %10, align 8
  %66 = load %struct.ref**, %struct.ref*** %9, align 8
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds %struct.ref*, %struct.ref** %66, i64 %69
  store %struct.ref* %65, %struct.ref** %70, align 8
  br label %71

71:                                               ; preds = %64
  %72 = load %struct.ref*, %struct.ref** %10, align 8
  %73 = getelementptr inbounds %struct.ref, %struct.ref* %72, i32 0, i32 0
  %74 = load %struct.ref*, %struct.ref** %73, align 8
  store %struct.ref* %74, %struct.ref** %10, align 8
  br label %61

75:                                               ; preds = %61
  br label %76

76:                                               ; preds = %75, %53
  %77 = load %struct.transport*, %struct.transport** %3, align 8
  %78 = getelementptr inbounds %struct.transport, %struct.transport* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32 (%struct.transport*, i32, %struct.ref**)*, i32 (%struct.transport*, i32, %struct.ref**)** %80, align 8
  %82 = load %struct.transport*, %struct.transport** %3, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.ref**, %struct.ref*** %9, align 8
  %85 = call i32 %81(%struct.transport* %82, i32 %83, %struct.ref** %84)
  store i32 %85, i32* %5, align 4
  %86 = load %struct.ref**, %struct.ref*** %9, align 8
  %87 = call i32 @free(%struct.ref** %86)
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @is_null_oid(i32*) #1

declare dso_local i64 @oideq(i32*, i32*) #1

declare dso_local i32 @ALLOC_GROW(%struct.ref**, i32, i32) #1

declare dso_local i32 @ALLOC_ARRAY(%struct.ref**, i32) #1

declare dso_local i32 @free(%struct.ref**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
