; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_area.c_finishMouseEvent.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_area.c_finishMouseEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__*)* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i8*, i8*, i32 }

@GDK_BUTTON1_MASK = common dso_local global i32 0, align 4
@GDK_BUTTON2_MASK = common dso_local global i32 0, align 4
@GDK_BUTTON3_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_9__*, i32, i8*, i8*, i32, i32*)* @finishMouseEvent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finishMouseEvent(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i32 %2, i8* %3, i8* %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %15 = load i32, i32* %10, align 4
  %16 = icmp sge i32 %15, 4
  br i1 %16, label %17, label %21

17:                                               ; preds = %7
  %18 = load i32, i32* %10, align 4
  %19 = icmp sle i32 %18, 7
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %113

21:                                               ; preds = %17, %7
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %24, 8
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %29, 4
  store i32 %30, i32* %28, align 8
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %34, 8
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 4
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %36, %31
  %42 = load i32, i32* %13, align 4
  %43 = load i32*, i32** %14, align 8
  %44 = call i32 @translateModifiers(i32 %42, i32* %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @toModifiers(i32 %45)
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  store i32 0, i32* %50, align 8
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %53, label %63

53:                                               ; preds = %41
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @GDK_BUTTON1_MASK, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, 1
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %58, %53, %41
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 2
  br i1 %65, label %66, label %76

66:                                               ; preds = %63
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* @GDK_BUTTON2_MASK, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, 2
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %71, %66, %63
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 3
  br i1 %78, label %79, label %89

79:                                               ; preds = %76
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @GDK_BUTTON3_MASK, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, 4
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %84, %79, %76
  %90 = load i8*, i8** %11, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 6
  store i8* %90, i8** %92, align 8
  %93 = load i8*, i8** %12, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 5
  store i8* %93, i8** %95, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 3
  %101 = call i32 @loadAreaSize(%struct.TYPE_10__* %96, i32* %98, i32* %100)
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__*)*, i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__*)** %105, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %108, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %112 = call i32 %106(%struct.TYPE_11__* %109, %struct.TYPE_10__* %110, %struct.TYPE_9__* %111)
  br label %113

113:                                              ; preds = %89, %20
  ret void
}

declare dso_local i32 @translateModifiers(i32, i32*) #1

declare dso_local i32 @toModifiers(i32) #1

declare dso_local i32 @loadAreaSize(%struct.TYPE_10__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
