; ModuleID = '/home/carl/AnghaBench/git/extr_userdiff.c_userdiff_find_by_namelen.c'
source_filename = "/home/carl/AnghaBench/git/extr_userdiff.c_userdiff_find_by_namelen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.userdiff_driver = type { i32* }

@ndrivers = common dso_local global i32 0, align 4
@drivers = common dso_local global %struct.userdiff_driver* null, align 8
@builtin_drivers = common dso_local global %struct.userdiff_driver* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.userdiff_driver* (i8*, i32)* @userdiff_find_by_namelen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.userdiff_driver* @userdiff_find_by_namelen(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.userdiff_driver*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.userdiff_driver*, align 8
  %8 = alloca %struct.userdiff_driver*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %37, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @ndrivers, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %40

13:                                               ; preds = %9
  %14 = load %struct.userdiff_driver*, %struct.userdiff_driver** @drivers, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.userdiff_driver, %struct.userdiff_driver* %14, i64 %16
  store %struct.userdiff_driver* %17, %struct.userdiff_driver** %7, align 8
  %18 = load %struct.userdiff_driver*, %struct.userdiff_driver** %7, align 8
  %19 = getelementptr inbounds %struct.userdiff_driver, %struct.userdiff_driver* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @strncmp(i32* %20, i8* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %13
  %26 = load %struct.userdiff_driver*, %struct.userdiff_driver** %7, align 8
  %27 = getelementptr inbounds %struct.userdiff_driver, %struct.userdiff_driver* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %25
  %35 = load %struct.userdiff_driver*, %struct.userdiff_driver** %7, align 8
  store %struct.userdiff_driver* %35, %struct.userdiff_driver** %3, align 8
  br label %74

36:                                               ; preds = %25, %13
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %9

40:                                               ; preds = %9
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %70, %40
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.userdiff_driver*, %struct.userdiff_driver** @builtin_drivers, align 8
  %44 = call i32 @ARRAY_SIZE(%struct.userdiff_driver* %43)
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %73

46:                                               ; preds = %41
  %47 = load %struct.userdiff_driver*, %struct.userdiff_driver** @builtin_drivers, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.userdiff_driver, %struct.userdiff_driver* %47, i64 %49
  store %struct.userdiff_driver* %50, %struct.userdiff_driver** %8, align 8
  %51 = load %struct.userdiff_driver*, %struct.userdiff_driver** %8, align 8
  %52 = getelementptr inbounds %struct.userdiff_driver, %struct.userdiff_driver* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @strncmp(i32* %53, i8* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %46
  %59 = load %struct.userdiff_driver*, %struct.userdiff_driver** %8, align 8
  %60 = getelementptr inbounds %struct.userdiff_driver, %struct.userdiff_driver* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %58
  %68 = load %struct.userdiff_driver*, %struct.userdiff_driver** %8, align 8
  store %struct.userdiff_driver* %68, %struct.userdiff_driver** %3, align 8
  br label %74

69:                                               ; preds = %58, %46
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %41

73:                                               ; preds = %41
  store %struct.userdiff_driver* null, %struct.userdiff_driver** %3, align 8
  br label %74

74:                                               ; preds = %73, %67, %34
  %75 = load %struct.userdiff_driver*, %struct.userdiff_driver** %3, align 8
  ret %struct.userdiff_driver* %75
}

declare dso_local i32 @strncmp(i32*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.userdiff_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
