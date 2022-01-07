; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_portals.c_MarkVisibleSides_r.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_portals.c_MarkVisibleSides_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__*, i32, %struct.TYPE_8__** }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32, i32, %struct.TYPE_8__**, %struct.TYPE_7__** }
%struct.TYPE_6__ = type { i32 }

@PLANENUM_LEAF = common dso_local global i64 0, align 8
@SFL_VISIBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MarkVisibleSides_r(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PLANENUM_LEAF, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %13, i64 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  call void @MarkVisibleSides_r(%struct.TYPE_8__* %15)
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %18, i64 1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  call void @MarkVisibleSides_r(%struct.TYPE_8__* %20)
  br label %81

21:                                               ; preds = %1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %81

27:                                               ; preds = %21
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %3, align 8
  br label %31

31:                                               ; preds = %70, %27
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = icmp ne %struct.TYPE_7__* %32, null
  br i1 %33, label %34, label %81

34:                                               ; preds = %31
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %37, i64 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %41 = icmp eq %struct.TYPE_8__* %39, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %4, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %34
  br label %70

48:                                               ; preds = %34
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = call i32 @FindPortalSide(%struct.TYPE_7__* %54)
  br label %56

56:                                               ; preds = %53, %48
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = icmp ne %struct.TYPE_6__* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load i32, i32* @SFL_VISIBLE, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %62
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %61, %56
  br label %70

70:                                               ; preds = %69, %47
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 4
  %73 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %73, i64 %78
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  store %struct.TYPE_7__* %80, %struct.TYPE_7__** %3, align 8
  br label %31

81:                                               ; preds = %10, %26, %31
  ret void
}

declare dso_local i32 @FindPortalSide(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
