; ModuleID = '/home/carl/AnghaBench/git/extr_help.c_uniq.c'
source_filename = "/home/carl/AnghaBench/git/extr_help.c_uniq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdnames = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmdnames*)* @uniq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uniq(%struct.cmdnames* %0) #0 {
  %2 = alloca %struct.cmdnames*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.cmdnames* %0, %struct.cmdnames** %2, align 8
  %5 = load %struct.cmdnames*, %struct.cmdnames** %2, align 8
  %6 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %71

10:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  store i32 1, i32* %3, align 4
  br label %11

11:                                               ; preds = %64, %10
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.cmdnames*, %struct.cmdnames** %2, align 8
  %14 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %67

17:                                               ; preds = %11
  %18 = load %struct.cmdnames*, %struct.cmdnames** %2, align 8
  %19 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %20, i64 %22
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.cmdnames*, %struct.cmdnames** %2, align 8
  %28 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %29, i64 %32
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @strcmp(i32 %26, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %17
  %40 = load %struct.cmdnames*, %struct.cmdnames** %2, align 8
  %41 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %42, i64 %44
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = call i32 @free(%struct.TYPE_2__* %46)
  br label %63

48:                                               ; preds = %17
  %49 = load %struct.cmdnames*, %struct.cmdnames** %2, align 8
  %50 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %51, i64 %53
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load %struct.cmdnames*, %struct.cmdnames** %2, align 8
  %57 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %58, i64 %61
  store %struct.TYPE_2__* %55, %struct.TYPE_2__** %62, align 8
  br label %63

63:                                               ; preds = %48, %39
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %11

67:                                               ; preds = %11
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.cmdnames*, %struct.cmdnames** %2, align 8
  %70 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %67, %9
  ret void
}

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
